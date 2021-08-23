<?php

namespace App\Http\Controllers;

use App\Casestudy;
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


class CaseStudyController extends Controller {

    private $limit = 20;
    private $THEME_NAME;

    public function __construct(){
        
        $this->THEME_NAME = CustomHelper::getThemeName();
    }

    public function index(Request $request){
        $data = [];

        $limit = $this->limit;

        $case_query = Casestudy::where('status', 1);
        $case_query->orderBy('sort_order','desc');

        $case_studies = $case_query->paginate($limit);

        //pr($case_studies);

        $data['case_studies'] = $case_studies;


        $isMobile = CustomHelper::isMobile();
        $bannerType = 'desktop';
        if($isMobile){
            $bannerType = 'mobile';
        }
        $bannerWhere = [];
        $bannerWhere['page'] = 'case_studies';
        $bannerWhere['status'] = 1;
        $bannerWhere['device_type'] = $bannerType;
        $banners = Banner::where($bannerWhere)->orderBy('sort_order')->limit($limit)->get();
        
        $data['banners'] = $banners;
        $data['meta_title'] = 'Case Studies | Varuna Group';
        $data['meta_keyword'] = 'Casestudy';
        $data['meta_description'] = 'Explore how we enabled an industry leader in the FMCG sector to boost its profits by optimising its warehousing & secondary distribution.';
        
        //return view('blogs.index', $data);
        return view('themes.'.$this->THEME_NAME.'.case_studies.index', $data);
    }


    public function details(Request $request){

        //prd($request->toArray());
        //prd($request->slug);

        $data = [];
        $related_insight ='';

        $slug = (isset($request->slug))?$request->slug:'';

        if(!empty($slug)){
            $case_study = Casestudy::where('slug', $slug)->first();

            if(isset($case_study->slug) && $case_study->slug == $slug){

                $related_insight = Blog::where(['status'=>1,'type'=>'blogs'])->orderBy('created_at', 'desc')->limit(6)->get();

                $data['case_study'] = $case_study;
                $data['meta_title'] = $case_study->meta_title;
                $data['meta_keyword'] = $case_study->meta_keyword;
                $data['meta_description'] = $case_study->meta_description;
                $data['related_insight'] = $related_insight;

                //return view('blogs.details', $data);
                return view('themes.'.$this->THEME_NAME.'.case_studies.details', $data);                
            }
        }

        return back();

    }



/* End of Controller */
}