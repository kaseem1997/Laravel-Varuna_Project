<?php

namespace App\Http\Controllers\Admin;

use App\Casestudy;
use App\CasestudyCategory;
use App\CmsPages;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Helpers\CustomHelper;
use Validator;
use Storage;
use Image;

class CaseStudyController extends Controller
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
        $category_id = (isset($request->category_id))?$request->category_id:'';
        $status = (isset($request->status))?$request->status:'';
        $featured = (isset($request->featured))?$request->featured:'';
        $from = (isset($request->from))?$request->from:'';
        $to = (isset($request->to))?$request->to:'';
        
        $casestudy_query = Casestudy::orderBy('created_at','desc');      
        //prd($blogs->toArray());

        if(!empty($title)){
            $casestudy_query->where('title', 'like', $title.'%');
        }

        if($status !=''){
            $casestudy_query->where('status',$status);
        }

        if(is_numeric($category_id) && $category_id > 0){
            $casestudy_query->where('category_id',$category_id);
        }
        

        if($featured !=''){
            $casestudy_query->where('featured',$featured);
        }

        if(!empty($from)){
            $from_date = CustomHelper::DateFormat($from, 'Y-m-d', 'd/m/Y');
            if(!empty($from_date)){
                $casestudy_query->whereRaw('DATE(action_date) >= "'.$from_date.'"');
            }
        }
        if(!empty($to)){
            $to_date = CustomHelper::DateFormat($to, 'Y-m-d', 'd/m/Y');
            if(!empty($to_date)){
                 $casestudy_query->whereRaw('DATE(action_date) <= "'.$to_date.'"');
            }
        }

        $case_studies = $casestudy_query->paginate($limit);

        $categories = CasestudyCategory::where('status',1)->orderBy('name')->get();

        $data['case_studies'] = $case_studies;
        $data['categories'] = $categories;

        return view('admin.case_studies.index', $data);
    }

    public function add(Request $request){
        
        $id = (isset($request->id))?$request->id:0;
        $case_study = '';
        $title = 'Add Case Study';
     
        if(is_numeric($id) && $id > 0){
            $case_study = Casestudy::find($id);
            $title = 'Edit Case Study('.$case_study->title." )";
        }
        if($request->method() == 'POST' || $request->method() == 'post'){

            //prd($request->toArray());

            $ext = 'jpg,jpeg,png,gif';

            $rules['title'] = 'required';
            $rules['status'] = 'required';
            $rules['image'] = 'nullable|image|mimes:'.$ext;
            
            if(!empty($id)){
                $rules['slug'] = 'required';
            }

            $this->validate($request, $rules);
            $req_data = [];
            $req_data = $request->except(['_token', 'image', 'back_url', 'old_image','id','featured','pages_id']);
            //$slug = CustomHelper::GetSlug('case_studies', 'id', $id, $request->title);

            if(empty($id)){
                $slug = CustomHelper::GetSlug('case_studies', 'id', $id, $request->title);
            }
            else{
                $slug = CustomHelper::GetSlug('case_studies', 'id', $id, $request->slug);
            }

            $pages_id = (isset($request->pages_id))?$request->pages_id:'';
            if(!empty($pages_id) && count((array)$pages_id) > 0){
                $pages_id = implode(',', $pages_id);
            }

            $req_data['pages_id'] = $pages_id;
            $req_data['slug'] = $slug;
            $req_data['featured'] = (isset($request->featured)) ? 1:0;

            //prd($req_data);
            if(!empty($case_study) && count((array)$case_study) > 0){
                $isSaved = Casestudy::where('id', $case_study->id)->update($req_data);
                $msg = "Case study has been updated successfully.";
            }
            else{
                $isSaved = Casestudy::create($req_data);
                $id = $isSaved->id;
                $msg = "Case study has been added successfully.";
            }

            if ($isSaved) {

              if($request->hasFile('image')) {
                $file = $request->file('image');
                $image_result = $this->saveImage($file,$id);
                if($image_result['success'] == false){     
                    session()->flash('alert-danger', 'Image could not be added');
                }
            }

            cache()->forget('case-studies');

                return redirect(url($this->ADMIN_ROUTE_NAME.'/case-studies'))->with('alert-success', $msg);
            } else {
                return back()->with('alert-danger', 'The Case Study could be added, please try again or contact the administrator.');
            }
        }

        $categories = CasestudyCategory::where('status',1)->orderBy('name')->get();
        $cms_pages = CmsPages::whereIn('parent_id',[1,11])->orderBy('created_at','desc')->get();

        $data = [];
        $data['page_heading'] = $title;
        $data['case_study'] = $case_study;
        $data['id'] = $id;
        $data['categories'] = $categories;
        $data['cms_pages'] = $cms_pages;

        return view('admin.case_studies.form', $data);
    }

    public function saveImage($file, $id){
        //prd($file); 
        //echo $id; die;

        $result['org_name'] = '';
        $result['file_name'] = '';

        if ($file) 
        {
            $path = 'case_studies/';
            $thumb_path = 'case_studies/thumb/';

            $IMG_HEIGHT = CustomHelper::WebsiteSettings('CASE_STUDY_IMG_HEIGHT');
            $IMG_WIDTH = CustomHelper::WebsiteSettings('CASE_STUDY_IMG_WIDTH');
            $THUMB_HEIGHT = CustomHelper::WebsiteSettings('CASE_STUDY_THUMB_HEIGHT');
            $THUMB_WIDTH = CustomHelper::WebsiteSettings('CASE_STUDY_THUMB_WIDTH');

            $IMG_WIDTH = (!empty($IMG_WIDTH))?$IMG_WIDTH:768;
            $IMG_HEIGHT = (!empty($IMG_HEIGHT))?$IMG_HEIGHT:768;
            $THUMB_WIDTH = (!empty($THUMB_WIDTH))?$THUMB_WIDTH:336;
            $THUMB_HEIGHT = (!empty($THUMB_HEIGHT))?$IMG_WIDTH:336;

            $uploaded_data = CustomHelper::UploadImage($file, $path, $ext='', $IMG_WIDTH, $IMG_HEIGHT, $is_thumb=true, $thumb_path, $THUMB_WIDTH, $THUMB_HEIGHT);

            if($uploaded_data['success']){
                $new_image = $uploaded_data['file_name'];

                if(is_numeric($id) && $id > 0){
                    $case_study = Casestudy::find($id);

                    if(!empty($case_study) && count((array)$case_study) > 0){

                        $storage = Storage::disk('public');

                        $old_image = $case_study->image;

                        $case_study->image = $new_image;

                        $isUpdated = $case_study->save();

                        if($isUpdated){

                            if(!empty($old_image) && $storage->exists($path.$old_image)){
                                $storage->delete($path.$old_image);
                            }

                            if(!empty($old_image) && $storage->exists($thumb_path.$old_image)){
                                $storage->delete($thumb_path.$old_image);
                            }
                        }
                    }
                }
            }

            if(!empty($uploaded_data))
            {   
                return $uploaded_data;
            }
        }
}
    

    public function ajax_delete_image(Request $request){
        //prd($request->toArray());
        $result['success'] = false;

        $image_id = ($request->has('image_id'))?$request->image_id:0;

        if (is_numeric($image_id) && $image_id > 0) {
            $is_img_deleted = $this->delete_images($image_id);
            if($is_img_deleted)
            {
                $result['success'] = true;
                $result['msg'] = '<div class="alert alert-success alert-dismissable"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Case study image has been delete successfully.</div>';
            }
        }

        if($result['success'] == false){
            $result['msg'] = '<div class="alert alert-danger alert-dismissable"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Something went wrong, please try again.</div>';
        }
        return response()->json($result);
    }

    public function delete(Request $request)
    {
        $id = $request->id;
        $method = $request->method();
        $is_deleted = 0;
        $storage = Storage::disk('public');
        $path = 'case_studies/';

        if($method=="POST"){
            if(is_numeric($id) && $id > 0)
            {
                $case_study = Casestudy::find($id);
                if(!empty($case_study) && count((array)$case_study) > 0){
                    
                        if(count((array)$case_study) > 0 && !empty($case_study->image))
                        {   
                         $image = $case_study->image;
                         if(!empty($image) && $storage->exists($path.'thumb/'.$image))
                         {
                            $is_deleted = $storage->delete($path.'thumb/'.$image);
                        }
                        if(!empty($image) && $storage->exists($path.$image))
                        {
                            $is_deleted = $storage->delete($path.$image);
                        }
                    }
                    $is_deleted = $case_study->delete();
                
            }
        }
    }   
    if($is_deleted){
        return redirect(url($this->ADMIN_ROUTE_NAME.'/case-studies'))->with('alert-success', 'The Case Study has been deleted successfully.');
    }else
    {
        return redirect(url($this->ADMIN_ROUTE_NAME.'/case-studies'))->with('alert-danger', 'The Case Study cannot be deleted, please try again or contact the administrator.');
    }

}

    public function delete_images($id)
    {   
        $is_deleted = '';
        $is_updated = '';
        $storage = Storage::disk('public');
        $path = 'case_studies/';
        $case_study = Casestudy::find($id);
        
        $image = (isset($case_study->image))?$case_study->image:'';
        if(!empty($image) && $storage->exists($path.'thumb/'.$image))
        {
            $is_deleted = $storage->delete($path.'thumb/'.$image);
        }
        if(!empty($image) && $storage->exists($path.$image))
        {
            $is_deleted = $storage->delete($path.$image);
        }
        if($is_deleted){
           $case_study->image = '';
           $is_updated = $case_study->save();

       }
       return $is_updated;
   }

   public function ajax_change_featured(Request $request){

        $result['success'] = false;

        $id = ($request->has('id'))?$request->id:0;
        $featured_true = ($request->has('featured_true'))?$request->featured_true:'';

        //prd($featured_true);

        if (is_numeric($id) && $id > 0) {

            $blog = Casestudy::find($id);

            if($featured_true == 1){
                $blog->featured = 1;
            }
            else{
                $blog->featured = 0;
            }
            
            $blog->save();

            $result['success'] = true;
            $result['msg'] = '<div class="alert alert-success alert-dismissable"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Casestudy Updated successfully.</div>';
        }

        if($result['success'] == false){
            $result['msg'] = '<div class="alert alert-danger alert-dismissable"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Something went wrong, please try again.</div>';
        }
        return response()->json($result);
    }

    /* end of controller */
}