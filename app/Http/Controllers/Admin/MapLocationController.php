<?php

namespace App\Http\Controllers\Admin;

use App\MapLocation;
use App\CasestudyCategory;
use App\CmsPages;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Helpers\CustomHelper;
use Validator;
use Storage;
use Image;

class MapLocationController extends Controller
{
    private $limit;
    private $ADMIN_ROUTE_NAME;

    public function __construct(){
        $this->limit = 20;
        $this->ADMIN_ROUTE_NAME = CustomHelper::getAdminRouteName();
    }

    public function index(Request $request){

        $data = [];
        $limit = $this->limit;

        $title = (isset($request->title))?$request->title:'';
        $state = (isset($request->state))?$request->state:'';
        $status = (isset($request->status))?$request->status:'';
        $email = (isset($request->email))?$request->email:'';
        $from = (isset($request->from))?$request->from:'';
        $to = (isset($request->to))?$request->to:'';
        
        $location_query = MapLocation::orderBy('created_at','desc');      
        //prd($blogs->toArray());

        if(!empty($state)){
            $location_query->where('state', 'like', $state.'%');
        }

        if($status !=''){
            $location_query->where('status',$status);
        }

        if(!empty($email)){
            $location_query->where('email',$email);
        }

        if(!empty($from)){
            $from_date = CustomHelper::DateFormat($from, 'Y-m-d', 'd/m/Y');
            if(!empty($from_date)){
                $location_query->whereRaw('DATE(action_date) >= "'.$from_date.'"');
            }
        }
        if(!empty($to)){
            $to_date = CustomHelper::DateFormat($to, 'Y-m-d', 'd/m/Y');
            if(!empty($to_date)){
                 $location_query->whereRaw('DATE(action_date) <= "'.$to_date.'"');
            }
        }

        $locations = $location_query->paginate($limit);

        $data['locations'] = $locations;

        return view('admin.map_locations.index', $data);
    }

    public function add(Request $request){
        
        $id = (isset($request->id))?$request->id:0;
        $location = '';
        $title = 'Add Map Location';
     
        if(is_numeric($id) && $id > 0){
            $location = MapLocation::find($id);
            $title = 'Edit Map Location('.$location->location." )";
        }
        if($request->method() == 'POST' || $request->method() == 'post'){

            //prd($request->toArray());

            //$ext = 'jpg,jpeg,png,gif';

            $rules['longitude'] = 'required';
            $rules['latitude'] = 'required';
            //$rules['image'] = 'nullable|image|mimes:'.$ext;

            $this->validate($request, $rules);
            $req_data = [];
            $req_data = $request->except(['_token', 'image', 'back_url', 'old_image','id','featured','pages_id']);
            //$slug = CustomHelper::GetSlug('case_studies', 'id', $id, $request->title);

            //prd($req_data);
            if(!empty($location) && count($location) > 0){
                $isSaved = MapLocation::where('id', $location->id)->update($req_data);
                $msg = "Location has been updated successfully.";
            }
            else{
                $isSaved = MapLocation::create($req_data);
                $id = $isSaved->id;
                $msg = "Location has been added successfully.";
            }

            if ($isSaved) {

            cache()->forget('map-locations');

                return redirect(url($this->ADMIN_ROUTE_NAME.'/map-locations'))->with('alert-success', $msg);
            } else {
                return back()->with('alert-danger', 'The Map location could be added, please try again or contact the administrator.');
            }
        }

        $data = [];
        $data['page_heading'] = $title;
        $data['location'] = $location;
        $data['id'] = $id;

        return view('admin.map_locations.form', $data);
    }
    
    public function delete(Request $request) {

        $id = $request->id;
        $method = $request->method();
        $is_deleted = 0;
        $storage = Storage::disk('public');

        if($method=="POST"){
            if(is_numeric($id) && $id > 0) {

                $case_study = MapLocation::find($id);
                if(!empty($case_study) && count($case_study) > 0){

                    $is_deleted = $case_study->delete();
                }
            }
        }   
        if($is_deleted){
            return redirect(url($this->ADMIN_ROUTE_NAME.'/map-locations'))->with('alert-success', 'The Map location has been deleted successfully.');
        }
        else {
            return redirect(url($this->ADMIN_ROUTE_NAME.'/map-locations'))->with('alert-danger', 'The Map location cannot be deleted, please try again or contact the administrator.');
        }

    }


   public function ajax_change_featured(Request $request){

        $result['success'] = false;

        $id = ($request->has('id'))?$request->id:0;
        $featured_true = ($request->has('featured_true'))?$request->featured_true:'';

        //prd($featured_true);

        if (is_numeric($id) && $id > 0) {

            $blog = MapLocation::find($id);

            if($featured_true == 1){
                $blog->featured = 1;
            }
            else{
                $blog->featured = 0;
            }
            
            $blog->save();

            $result['success'] = true;
            $result['msg'] = '<div class="alert alert-success alert-dismissable"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Map location Updated successfully.</div>';
        }

        if($result['success'] == false){
            $result['msg'] = '<div class="alert alert-danger alert-dismissable"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Something went wrong, please try again.</div>';
        }
        return response()->json($result);
    }

    /* end of controller */
}