<?php

namespace App\Http\Controllers\Admin;

use App\Career;
use App\CareerCategory;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Helpers\CustomHelper;
use Validator;
use Storage;
use Image;

class CareerController extends Controller
{
    private $limit;
    private $typeArr;
    private $ADMIN_ROUTE_NAME;

    public function __construct(){
        $this->limit = 20;

        $this->ADMIN_ROUTE_NAME = CustomHelper::getAdminRouteName();
    }

    public function index(Request $request){

        $data = [];
        $limit = $this->limit;

        $title = (isset($request->title))?$request->title:'';
        $status = (isset($request->status))?$request->status:'';
        $from = (isset($request->from))?$request->from:'';
        $to = (isset($request->to))?$request->to:'';
        $category_id = (isset($request->category_id))?$request->category_id:'';

        $career_query = Career::orderBy('created_at','desc');

        if(!empty($title)){
            $career_query->where('title', 'like', $title.'%');
        }

        if($status !=''){
            $career_query->where('status',$status);
        }

        if(is_numeric($category_id) && $category_id > 0){
            $career_query->where('category_id',$category_id);
        }

        if(!empty($from)){
            $from_date = CustomHelper::DateFormat($from, 'Y-m-d', 'd/m/Y');
            if(!empty($from_date)){
                $career_query->whereRaw('DATE(action_date) >= "'.$from_date.'"');
            }
        }
        if(!empty($to)){
            $to_date = CustomHelper::DateFormat($to, 'Y-m-d', 'd/m/Y');
            if(!empty($to_date)){
             $career_query->whereRaw('DATE(action_date) <= "'.$to_date.'"');
         }
        }
        
        $careers = $career_query->paginate($limit);

        $categories = CareerCategory::where('status',1)->orderBy('created_at','desc')->get();

        $data['careers'] = $careers;
        $data['categories'] = $categories;

        return view('admin.careers.index', $data);

    }

    public function add(Request $request){

        //if($type == 'blogs' || $type == 'news'){

        $id = (isset($request->id))?$request->id:0;
        $career = '';
        $title = 'Add Career';

        $categories = CareerCategory::where('status',1)->orderBy('created_at','desc')->get();

        if(is_numeric($id) && $id > 0){
            $career = Career::find($id);
            $title = 'Edit ('.$career->title." )";
        }
        if($request->method() == 'POST' || $request->method() == 'post'){

            //prd($request->toArray());
            $rules['title'] = 'required';
            $rules['category_id'] = 'required';
            $rules['no_of_vacancy'] = 'required';
            $rules['aggregate_marks'] = 'required';
            $rules['max_age'] = 'required';
            $rules['opening_date'] = 'required';
            $rules['closing_date'] = 'required';
            $rules['status'] = 'required';
           
            $this->validate($request, $rules);
            $req_data = [];

            $req_data = $request->except(['_token','back_url','id','featured','age_on_date','experience_on_date','opening_date','closing_date','applicable_category']);

            $slug = CustomHelper::GetSlug('careers', 'id', $id, $request->title);

            $req_data['slug'] = $slug;

            $req_data['featured'] = (isset($request->featured)) ? 1:0;

            $age_on_date = (isset($request->age_on_date))?$request->age_on_date:'';
            $age_on_date = CustomHelper::DateFormat($age_on_date, 'Y-m-d H:i:s', 'd/m/y');
            $req_data['age_on_date'] = $age_on_date;

            $experience_on_date = (isset($request->experience_on_date))?$request->experience_on_date:'';
            $experience_on_date = CustomHelper::DateFormat($experience_on_date, 'Y-m-d H:i:s', 'd/m/y');
            $req_data['experience_on_date'] = $experience_on_date;

            $opening_date = (isset($request->opening_date))?$request->opening_date:'';
            $opening_date = CustomHelper::DateFormat($opening_date, 'Y-m-d H:i:s', 'd/m/y');
            $req_data['opening_date'] = $opening_date;

            $closing_date = (isset($request->closing_date))?$request->closing_date:'';
            $closing_date = CustomHelper::DateFormat($closing_date, 'Y-m-d H:i:s', 'd/m/y');
            $req_data['closing_date'] = $closing_date;

            
            $applicable_cat_arr = (isset($request->applicable_category))?$request->applicable_category:[];
            
            $cat_arr = '';
            if(!empty($applicable_cat_arr)){
                $cat_arr = implode(',', $applicable_cat_arr);
            }

            $req_data['applicable_category'] = $cat_arr;



            //prd($req_data);
            if(!empty($career) && count($career) > 0){
                $isSaved = Career::where(['id'=>$career->id])->update($req_data);
                $msg = "Career has been updated successfully.";
            }
            else{
                $isSaved = Career::create($req_data);
                $id = $isSaved->id;
                $msg = "Career has been added successfully.";
            }

            if ($isSaved) {

                cache()->forget('careers');

                return redirect(url($this->ADMIN_ROUTE_NAME.'/careers'))->with('alert-success', $msg);
            } else {
                return back()->with('alert-danger', 'Career could be added, please try again or contact the administrator.');
            }
        }

        $data = [];
        $data['page_heading'] = $title;
        $data['career'] = $career;
        $data['categories'] = $categories;
        $data['id'] = $id;

        return view('admin.careers.form', $data);
      //}
      //else{
        //return redirect(url($this->ADMIN_ROUTE_NAME));
      //}
    }


    public function delete(Request $request){
        
        $id=$request->id;
        $method=$request->method();
        $is_deleted = 0;

        if($method=="POST"){
            if(is_numeric($id) && $id > 0)
            {
                $career = Career::find($id);
                $is_deleted = $career->delete();
            }
        }
        
        if($is_deleted){
            return redirect(url($this->ADMIN_ROUTE_NAME.'/careers'))->with('alert-success', 'Career has been deleted successfully.');
        }else
        {
            return redirect(url($this->ADMIN_ROUTE_NAME.'/careers'))->with('alert-danger', 'Career cannot be deleted, please try again or contact the administrator.');
        }

    }
    /* end of controller */
}