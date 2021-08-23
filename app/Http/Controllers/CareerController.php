<?php

namespace App\Http\Controllers;

use App\Career;
use App\CareerCategory;
use App\Banner;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use App\Http\Controllers\Controller;

//use Illuminate\Pagination\Paginator;
//use Illuminate\Pagination\LengthAwarePaginator as Paginator;
//use Illuminate\Support\Facades\Paginator;
//use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Pagination\LengthAwarePaginator as Paginator;

use App\Http\Requests;
use App\Helpers\CustomHelper;
use Mail;
use Validator;
use DB;


class CareerController extends Controller {

    private $limit = 20;
    private $THEME_NAME;

    public function __construct(){
        
        $this->THEME_NAME = CustomHelper::getThemeName();
    }


    public function index(Request $request){

        $limit = 10;
        $data = [];
        $page = isset($request->page) ? $request->page:0;

        $data['meta_title'] = 'Explore the Current Job Openings at Varuna Group';
        $data['meta_keyword'] = 'Career';
        $data['meta_description'] = 'At Varuna Group, explore the current job openings or if you are not able to find a relevant job please post your resume.';

        $req_department = isset($request->department) ? $request->department:'';
        $req_location = isset($request->location) ? $request->location:'';
        $req_experience = isset($request->experience) ? $request->experience:[];

        $expFrom = '';
        $expTo = '';

        if(!empty($req_experience)){

            $experienceArr = explode(',', $req_experience);

            $expFrom = (isset($experienceArr[0]))?$experienceArr[0]:0;
            $expTo = (isset($experienceArr[1]))?$experienceArr[1]:0;
        }

        //pr($expFrom);
        //pr($expTo);

        $data['expFrom'] = $expFrom;
        $data['expTo'] = $expTo;
        $data['req_department'] = $req_department;
        $data['req_location'] = $req_location;


        $careerApiData = CustomHelper::carrerListApi();

        //prd($careerApiData);

        if(!empty($careerApiData->status == 1)){

            $collection = collect($careerApiData->data);

            $collection = $collection->sortByDesc('job_updated_timestamp');

            $collection = $collection->filter(function ($value) {

                return ($value->post_on_careers_page == 1);
            });


            $selectData = collect($careerApiData->data);

            $selectData = $selectData->filter(function ($value) {

                return ($value->post_on_careers_page == 1);
            });

            //prd($selectData);

            $departments = $selectData->unique('department')->pluck('department');
            $location_city = $selectData->unique('location_city')->pluck('location_city');

            $experience_to = $selectData->unique('experience_to')->pluck('experience_to');
            $experience_from = $selectData->unique('experience_from')->pluck('experience_from');

            //pr($location_city);
            //pr($experience_from);
            //pr($location_city);


            $data['departments'] = $departments;
            $data['location_city'] = $location_city;
            $data['experience_to'] = $experience_to;
            $data['experience_from'] = $experience_from;

            //prd($collection);
            if(!empty($collection) && count($collection) > 0){
                
                if(!empty($req_department)){

                    $collection = $collection->filter(function ($value, $key) use ($req_department) {

                        if ($value->department == $req_department) {
                            return true;
                        }
                        return false;
                    });
                }

                if(!empty($req_location)){

                    $collection = $collection->filter(function ($value, $key) use ($req_location) {

                        /*if(!empty($value->location_city[0])){
                            $location = $value->location_city[0];
                        }
                        else{
                            $location = $value->location_city[1];
                        }*/
                        if(!empty($value->location_city)){

                            foreach ($value->location_city as $l_city){
                                
                                if(!empty($l_city)){
                                    if ($l_city == $req_location) {
                                        return true;
                                    }
                                }
                            }
                        }
                        
                        return false;
                    });
                }

                // Filter from experince
                if(!empty($expFrom) && $expTo){

                    $collection = $collection->filter(function ($value, $key) use ($expFrom, $expTo) {

                        if ($value->experience_from == $expFrom || $value->experience_to == $expTo) {
                            return true;
                        }
                        return false;
                    });
                }

                if(!empty($req_department) && !empty($req_location) && $expFrom || $expTo){

                    $collection = $collection->filter(function ($value, $key) use ($req_department, $req_location, $expFrom, $expTo) {

                        if ($value->department == $req_department || $value->location_city[0] == $req_location || $value->experience_from == $expFrom || $value->experience_to == $expTo) {
                            return true;
                        }
                        return false;
                    });
                }
            }

            //prd($collection);

            if(!empty($collection) && count($collection) > 0){

                $slice = $collection->slice(10*($page - 1), 10);

                $careerData = $slice->all();


                $paginator = new Paginator($collection, count($collection), $limit, $page, [
                    'path'  => $request->url(),
                    'query' => $request->query(),
                ]);

                //prd($data1);
                //pr($careerApiData);
                //pr($department);

                $data['careerData'] = $careerData;
                $data['paginator'] = $paginator;
                
                return view('themes.'.$this->THEME_NAME.'.careers.index', $data);
            }
            else{
                return view('themes.'.$this->THEME_NAME.'.careers.index', $data);
            }

        }
        else{

        }
    }


    public function index_old(Request $request){
        
        $data = [];
        $carrerData = [];
        //echo 'hii'; die;

        $limit = $this->limit;

        $cat = (isset($request->cat))?$request->cat:'';
        $cat_slug = (isset($request->category))?$request->category:'';

        $isMobile = CustomHelper::isMobile();
        $bannerType = 'desktop';
        if($isMobile){
            $bannerType = 'mobile';
        }
        $bannerWhere = [];
        $bannerWhere['page'] = 'careers';
        $bannerWhere['status'] = 1;
        $bannerWhere['device_type'] = $bannerType;
        $banners = Banner::where($bannerWhere)->orderBy('sort_order')->limit($limit)->get();

        if(!empty($cat)){
            $category = CareerCategory::where(['slug'=>$cat])->first();
        }

        if(!empty($category) && $category->count() > 0){

            $career_query = Career::where(['status'=>1,'category_id'=>$category->id]);
            $career_query->orderBy('created_at', 'desc');
            $carrerData = $career_query->paginate($limit);
        }
        else{
            $no_vacancy = 'No Vacancy';
        }


        if(!empty($keyword)){
            $career_query->where('title', 'like', '%'.$keyword.'%');
        }
        //prd($carrerData->toArray());

        $categoryQuery = CareerCategory::where(['status'=>1])->orderBy('sort_order')->limit(6);

        if(!empty($cat_slug)){
            $categoryQuery->where('slug', $cat_slug);
        }
        
        //$categoryQuery->has('carrerData', '>', 0);
        $careerCategories = $categoryQuery->get();



        $data['carrerData'] = $carrerData;
        $data['careerCategories'] = $careerCategories;
        $data['cat_slug'] = $cat_slug;
        $data['banners'] = $banners;

        $data['meta_title'] = 'Career';
        $data['meta_keyword'] = 'Career';
        $data['meta_description'] = 'Career';
        
        //return view('blogs.index', $data);
        return view('themes.'.$this->THEME_NAME.'.careers.index', $data);
    }


    public function details(Request $request){

        //prd($request->toArray());
        //prd($request->slug);

        $data = [];

        $slug = (isset($request->slug))?$request->slug:'';

        if(!empty($slug)){
            $career = Career::where(['slug'=>$slug])->first();

            //prd($news);

            if(isset($career->slug) && $career->slug == $slug){

                //$newsCategories = BlogCategory::where(['status'=>1,'type'=>'news'])->orderBy('name')->limit(6)->get();

                $recent_career = Career::where('id', '!=', $career->id)->where(['status'=>1])->orderBy('created_at', 'desc')->limit(6)->get();

                $data['career'] = $career;
                //$data['BlogCategories'] = $BlogCategories;
                //$data['recent_blogs'] = $recent_blogs;
                 $data['recent_career'] = $recent_career;

                $data['meta_title'] = 'News - '.$career->meta_title;
                $data['meta_keyword'] = $career->meta_keyword;
                $data['meta_description'] = $career->meta_description;

                //return view('blogs.details', $data);
                return view('themes.'.$this->THEME_NAME.'.careers.details', $data);                
            }
        }

        return back();

    }



/* End of Controller */
}