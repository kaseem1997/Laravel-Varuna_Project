<?php

namespace App\Http\Controllers;

use App\EmployeeStory;
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


class EmployeeStoryController extends Controller {

    private $limit = 20;
    private $THEME_NAME;

    public function __construct(){
        
        $this->THEME_NAME = CustomHelper::getThemeName();
    }

    public function index(Request $request){
        $data = [];

        $limit = $this->limit;

        $emp_query = EmployeeStory::where('status', 1);
        $emp_query->orderBy('sort_order','desc');

        $emp_stories = $emp_query->paginate($limit);

        //pr($case_studies);

        $data['emp_stories'] = $emp_stories;


        $isMobile = CustomHelper::isMobile();
        $bannerType = 'desktop';
        if($isMobile){
            $bannerType = 'mobile';
        }
        $bannerWhere = [];
        $bannerWhere['page'] = 'employee_stories';
        $bannerWhere['status'] = 1;
        $bannerWhere['device_type'] = $bannerType;
        $banners = Banner::where($bannerWhere)->orderBy('sort_order')->limit($limit)->get();
        
        $data['banners'] = $banners;
        $data['meta_title'] = 'Employee Stories | Varuna Group';
        $data['meta_keyword'] = 'Employee Story';
        $data['meta_description'] = 'We take pride in our 1500+ strong team inspired by the single-minded drive to help our clients unlock the growth potential of their supply chains.';
        
        //return view('blogs.index', $data);
        return view('themes.'.$this->THEME_NAME.'.emp_stories.index', $data);
    }


    public function details(Request $request){

        //prd($request->toArray());
        //prd($request->slug);

        $data = [];
        $recent_case_study ='';

        $slug = (isset($request->slug))?$request->slug:'';

        if(!empty($slug)){
            $case_study = EmployeeStory::where('slug', $slug)->first();

            if(isset($case_study->slug) && $case_study->slug == $slug){

                $recent_case_study = EmployeeStory::where('id', '!=', $case_study->id)->where(['category_id'=>$case_study->category_id,'status'=>1])->orderBy('created_at', 'desc')->limit(6)->get();

                $data['case_study'] = $case_study;
                $data['meta_title'] = $case_study->meta_title;
                $data['meta_keyword'] = $case_study->meta_keyword;
                $data['meta_description'] = $case_study->meta_description;
                $data['recent_case_study'] = $recent_case_study;

                //return view('blogs.details', $data);
                return view('themes.'.$this->THEME_NAME.'.emp_stories.details', $data);                
            }
        }

        return back();

    }



/* End of Controller */
}