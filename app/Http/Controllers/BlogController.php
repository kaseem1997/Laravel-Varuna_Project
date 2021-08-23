<?php

namespace App\Http\Controllers;

use App\Blog;
use App\BlogCategory;
use App\Banner;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use App\Helpers\CustomHelper;
use Mail;
use Validator;
use DB;
use PDF;


class BlogController extends Controller {

    private $limit = 20;
    private $THEME_NAME;

    public function __construct(){
        
        $this->THEME_NAME = CustomHelper::getThemeName();
    }

    public function index(Request $request){
        $data = [];

        $limit = $this->limit;

        $keyword = (isset($request->keyword))?$request->keyword:'';
        $cat_slug = (isset($request->category))?$request->category:'';

        $isMobile = CustomHelper::isMobile();
        $bannerType = 'desktop';
        if($isMobile){
            $bannerType = 'mobile';
        }
        $bannerWhere = [];
        $bannerWhere['page'] = 'blogs';
        $bannerWhere['status'] = 1;
        $bannerWhere['device_type'] = $bannerType;
        $banners = Banner::where($bannerWhere)->orderBy('sort_order')->limit($limit)->get();

        $featured_blog = Blog::where(['status'=>1, 'type'=>'blogs'])->orderBy('created_at', 'desc')->first();

        $blog_query = Blog::where(['status'=>1, 'type'=>'blogs']);
        $blog_query->orderBy('sort_order', 'desc');

        /*if(!empty($cat_slug)){
            $blog_query->whereHas('Category', function ($query) use ($cat_slug){
                $query->where('slug', $cat_slug);
            });
        }*/
        if(!empty($keyword)){
            $blog_query->where('title', 'like', '%'.$keyword.'%');
        }

        $blogs = $blog_query->paginate($limit);
        //prd($blogs->toArray());
        $blogCategoryQuery = BlogCategory::where(['status'=>1])->orderBy('sort_order')->limit(6);

        if(!empty($cat_slug)){
            $blogCategoryQuery->where('slug', $cat_slug);
        }
        
        $blogCategoryQuery->has('blogs', '>', 0);
        $blogCategories = $blogCategoryQuery->get();

        $data['blogs'] = $blogs;
        $data['blogCategories'] = $blogCategories;
        $data['cat_slug'] = $cat_slug;
        $data['banners'] = $banners;
        $data['featured_blog'] = $featured_blog;

        $data['meta_title'] = 'Market News and Insights | Varuna Group';
        $data['meta_keyword'] = '';
        $data['meta_description'] = 'Get the latest Market-leading warehousing and logistics news and insights for supply chain excellence to drive efficiencies with our technology-enabled services.';
        
        //return view('blogs.index', $data);
        return view('themes.'.$this->THEME_NAME.'.blogs.index', $data);
    }


    public function details(Request $request){

        //prd($request->toArray());
        //prd($request->slug);

        $data = [];

        $slug = (isset($request->slug))?$request->slug:'';

        if(!empty($slug)){
            $blog = Blog::where('slug', $slug)->first();

            if(isset($blog->slug) && $blog->slug == $slug){

                $BlogCategories = BlogCategory::where(['status'=>1])->orderBy('name')->limit(6)->get();

                $blogCategories = (isset($blog->blogCategories))?$blog->blogCategories:'';
                $category_id = '';
                
                if(!empty($blogCategories) && count($blogCategories) > 0){
                    $blogCategories = $blogCategories->first();
                    $category_id = $blogCategories->id;
                }
                
                $recent_blogs_query = Blog::where('id', '!=', $blog->id)->where(['status'=>1, 'type'=>'blogs'])->orderBy('created_at', 'desc');

                if(!empty($blogCategories)){
                    if(!empty($category_id) && count($category_id) > 0){
                        $recent_blogs_query->whereHas('blogCategories', function ($query) use ($category_id) {
                            $query->where('categories_blog.blog_category_id', $category_id);
                        });
                    }
                }

                $recent_blogs = $recent_blogs_query->limit(6)->get();

                $data['blog'] = $blog;
                $data['BlogCategories'] = $BlogCategories;
                $data['recent_blogs'] = $recent_blogs;

                $data['meta_title'] = isset($blog->meta_title) ? $blog->meta_title:$blog->title;
                $data['meta_keyword'] = $blog->meta_keyword;
                $data['meta_description'] = isset($blog->meta_description) ? $blog->meta_description:$blog->title;

                //return view('blogs.details', $data);
                return view('themes.'.$this->THEME_NAME.'.blogs.details', $data);                
            }
        }

        return back();

    }

    
    /*ajax_insight_print*/
    public function ajaxInsightPrint(request $request){

        $id = (isset($request->id))?$request->id:0;

        $response = [];

        if(is_numeric($id) && $id>0){

            $insight = Blog::find($id);
            //prd($blog->products()->toArray());

            if(!empty($insight)){

                $response['insight'] = $insight;
                /*"http://slumberjill.ii71.com/public/assets/img/logo.png"*/
                $response['logoPath']= asset('assets/themes/theme-1/images/logo.png'); //asset('images/logo.png');


                $viewHtml = view('components.includes._print', $response)->render();

                //prd($viewHtml);

                $response['viewHtml'] = $viewHtml;
                $response['success'] = true;

                return response()->json($response);
            }
            else{

            }

        }
    }


    /*download-pdf*/
    public function downloadPdf(request $request){

        $id = (isset($request->id))?$request->id:0;

        $data = [];

        if(is_numeric($id) && $id>0){

            $insight = Blog::find($id);
            //prd($insight->toArray());

            if(!empty($insight)){

                $data['insight'] = $insight;
                /*"http://slumberjill.ii71.com/public/assets/img/logo.png"*/
                $data['logoPath']= asset('assets/themes/theme-1/images/logo.png'); //asset('images/logo.png');
                //$viewHtml = view('components.includes._print', $data)->render();
                //prd($viewHtml);
                //$data['viewHtml'] = $viewHtml;
                //$data['success'] = true;
                //$pdf = PDF::loadView('pdf.customers', $data);
                //$pdf->save(storage_path().'_filename.pdf');
                $pdf = PDF::loadView('components.includes._print', $data);
                return $pdf->download($insight->slug.'.pdf');

                //return data()->json($data);
            }
            else{

            }

        }
    }
/* End of Controller */
}