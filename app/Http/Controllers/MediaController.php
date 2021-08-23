<?php

namespace App\Http\Controllers;

use App\Media;
use App\Blog;
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


class MediaController extends Controller {

    private $limit = 20;
    private $THEME_NAME;

    public function __construct(){
        
        $this->THEME_NAME = CustomHelper::getThemeName();
    }
    

    public function index(Request $request){
        $data = [];

        $limit = $this->limit;

        $media_query = Media::where('status', 1);
        $media_query->orderBy('sort_order','desc');

        $media = $media_query->paginate($limit);

        //pr($case_studies);

        $data['media'] = $media;


        $isMobile = CustomHelper::isMobile();
        $bannerType = 'desktop';
        if($isMobile){
            $bannerType = 'mobile';
        }
        $bannerWhere = [];
        $bannerWhere['page'] = 'media';
        $bannerWhere['status'] = 1;
        $bannerWhere['device_type'] = $bannerType;
        $banners = Banner::where($bannerWhere)->orderBy('sort_order')->limit($limit)->get();
        
        $data['banners'] = $banners;
        $data['meta_title'] = 'Media | Varuna Group';
        $data['meta_keyword'] = 'Media';
        $data['meta_description'] = 'Explore how we enabled an industry leader in the FMCG sector to boost its profits by optimising its warehousing & secondary distribution.';
        
        //return view('blogs.index', $data);
        return view('themes.'.$this->THEME_NAME.'.media.index', $data);
    }


    public function details(Request $request){

        //prd($request->toArray());
        //prd($request->slug);

        $data = [];
        $related_insight ='';

        $slug = (isset($request->slug))?$request->slug:'';

        if(!empty($slug)){
            $media = Media::where('slug', $slug)->first();

            if(isset($media->slug) && $media->slug == $slug){

                $related_insight = Blog::where(['status'=>1,'type'=>'blogs'])->orderBy('created_at', 'desc')->limit(6)->get();

                $data['media'] = $media;
                $data['meta_title'] = $media->meta_title;
                $data['meta_keyword'] = $media->meta_keyword;
                $data['meta_description'] = $media->meta_description;
                $data['related_insight'] = $related_insight;

                //return view('blogs.details', $data);
                return view('themes.'.$this->THEME_NAME.'.media.details', $data);                
            }
        }

        return back();

    }



/* End of Controller */
}