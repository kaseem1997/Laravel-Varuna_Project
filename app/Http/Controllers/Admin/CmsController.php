<?php
namespace App\Http\Controllers\Admin;

use App\CmsPages;
use App\CasestudyCategory;
use App\MediaCategory;
use App\BlogCategory;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Helpers\CustomHelper;
use Storage;
use DB;

class CmsController  extends Controller {

    //protected $foo;

   protected $select_cols;
   protected $ADMIN_ROUTE_NAME;

    public function __construct(){

        $this->select_cols = ['id','name','title','slug','heading','brief','content','old_content','default_content','meta_title','meta_keyword','meta_description','status','created_at','updated_at'];

        $this->ADMIN_ROUTE_NAME = CustomHelper::getAdminRouteName();
    }

    public function index(Request $request) {

        $parent_id = (isset($request->parent_id))?$request->parent_id:0;

        $name = (isset($request->name))?$request->name:'';
        $status = (isset($request->status))?$request->status:'';
        $from = (isset($request->from))?$request->from:'';
        $to = (isset($request->to))?$request->to:'';

        $data=array();
        $data['page_title'] = 'CMS Page';
        $data['title'] = 'CMS Page';

        $select_cols = $this->select_cols;

        $pageQuery = CmsPages::select($select_cols)->orderBy('created_at');

        if(is_numeric($parent_id) && $parent_id > 0){
            $pageQuery->where('parent_id', $parent_id);
        }
        else{
            $pageQuery->where(function($query){
                $query->where('parent_id', 0);
                $query->orWhereNull('parent_id');
            });
        }

        if(!empty($name)){
            $pageQuery->where('name', 'like', $name.'%');
        }

        if($status !=''){
            $pageQuery->where('status',$status);
        }

        if(!empty($from)){
            $from_date = CustomHelper::DateFormat($from, 'Y-m-d', 'd/m/Y');
            if(!empty($from_date)){
                $pageQuery->whereRaw('DATE(action_date) >= "'.$from_date.'"');
            }
        }
        if(!empty($to)){
            $to_date = CustomHelper::DateFormat($to, 'Y-m-d', 'd/m/Y');
            if(!empty($to_date)){
             $pageQuery->whereRaw('DATE(action_date) <= "'.$to_date.'"');
         }
        }

        $pages = $pageQuery->get();

        $data['pages']= $pages;

        return view('admin.cms.index',$data);
    }


    public function add(Request $request){
        $id = (isset($request->id))?$request->id:0;
        $parent_id = (isset($request->parent_id))?$request->parent_id:0;
        $page = [];
        $title = 'Add Page';
     
        if(is_numeric($id) && $id > 0){
            $page = CmsPages::find($id);
            $title = 'Edit Page('.$page->title." )";
        }
        if(is_numeric($parent_id) && $parent_id > 0){
            $pageData = CmsPages::find($parent_id);
            $title = 'Add Page('.$pageData->title." )";
        }


        if($request->method() == 'POST' || $request->method() == 'post'){

            //prd($request->toArray());
            $ext = 'jpg,jpeg,png,gif';

            //$rules['name'] = 'required';
            $rules['title'] = 'required';
            //$rules['status'] = 'required';
            $rules['image'] = 'nullable|image|mimes:'.$ext;
            $rules['banner_image'] = 'nullable|image|mimes:'.$ext;

            if(!empty($id)){
                $rules['slug'] = 'required';
            }

            $this->validate($request, $rules);
            $req_data = [];
            $req_data = $request->except(['_token', 'image', 'back_url', 'old_image','banner_image','banner_old_image','id','featured','blog_category_id','casestudy_category_id','slug']);

            if(empty($id)){
                $slug = CustomHelper::GetSlug('cms_pages', 'id', $id, $request->title);
            }
            else{
                $slug = CustomHelper::GetSlug('cms_pages', 'id', $id, $request->slug);
            }

            $req_data['slug'] = $slug;
            $req_data['featured'] = (isset($request->featured)) ? 1:0;

            //prd($req_data);
            if(!empty($page) && count($page) > 0){
                $isSaved = CmsPages::where('id', $page->id)->update($req_data);
                $msg="Page has been updated successfully.";
            }
            else{
                $isSaved = CmsPages::create($req_data);
                $id = $isSaved->id;
                $msg="Page has been added successfully.";
            }

            if ($isSaved) {

              if($request->hasFile('image')) {
                $file = $request->file('image');
                $image_result = $this->saveImage($file,$id,'image');
                if($image_result['success'] == false){     
                    session()->flash('alert-danger', 'Image could not be added');
                }
            }

            if($request->hasFile('banner_image')) {
                $file = $request->file('banner_image');
                $image_result = $this->saveImage($file,$id,'banner_image');
                if($image_result['success'] == false){     
                    session()->flash('alert-danger', 'Image could not be added');
                }
            }

            $this->saveInsight($request, $id);
            $this->saveCasestudy($request, $id);

                cache()->forget('cms');

                return redirect(url($this->ADMIN_ROUTE_NAME.'/cms?parent_id='.$parent_id))->with('alert-success', $msg);
            } else {
                return back()->with('alert-danger', 'The Cms could be added, please try again or contact the administrator.');
            }
        }

        $casestudy_category = CasestudyCategory::where('status',1)->orderBy('name')->get();
        $blog_category = BlogCategory::where('status',1)->orderBy('name')->get();

        $data = [];
        $data['page_heading'] = $title;
        $data['casestudy_category'] = $casestudy_category;
        $data['blog_category'] = $blog_category;
        $data['page'] = $page;
        $data['id'] = $id;
        $data['parent_id'] = $parent_id;

        return view('admin.cms.form', $data);
    }

    private function saveInsight($request, $id){

        if(is_numeric($id) && $id > 0){
            $category_data = [];

            $main_category_id = (isset($request->main_category_id))?$request->main_category_id:0;
            $category_ids_arr = (isset($request->blog_category_id))?$request->blog_category_id:[];

            if(is_numeric($main_category_id) && $main_category_id > 0){
                $category_ids_arr[] = $main_category_id;
            }

            $category_ids_arr = array_unique($category_ids_arr);
            
            DB::table('cms_insights')->where('cms_page_id', $id)->delete();

            if(!empty($category_ids_arr) && count($category_ids_arr) > 0){

                $productCategoryData = [];

                foreach($category_ids_arr as $category_id){
                    $is_main = 0;
                    if($category_id == $main_category_id){
                        $is_main = 1;
                    }
                    $productCategoryData[] = array(
                        'cms_page_id' => $id,
                        'blog_category_id' => $category_id,
                        'is_main' => $is_main
                    );
                }

                if(!empty($productCategoryData) && count($productCategoryData) > 0){
                    DB::table('cms_insights')->insert($productCategoryData);
                }

            } 
        }
    }

    private function saveCasestudy($request, $id){

        if(is_numeric($id) && $id > 0){
            $category_data = [];

            $main_category_id = (isset($request->main_category_id))?$request->main_category_id:0;
            $category_ids_arr = (isset($request->casestudy_category_id))?$request->casestudy_category_id:[];

            if(is_numeric($main_category_id) && $main_category_id > 0){
                $category_ids_arr[] = $main_category_id;
            }

            $category_ids_arr = array_unique($category_ids_arr);
            
            DB::table('cms_case_study')->where('cms_page_id', $id)->delete();

            if(!empty($category_ids_arr) && count($category_ids_arr) > 0){

                $productCategoryData = [];

                foreach($category_ids_arr as $category_id){
                    $is_main = 0;
                    if($category_id == $main_category_id){
                        $is_main = 1;
                    }
                    $productCategoryData[] = array(
                        'cms_page_id' => $id,
                        'casestudy_category_id' => $category_id,
                        'is_main' => $is_main
                    );
                }

                if(!empty($productCategoryData) && count($productCategoryData) > 0){
                    DB::table('cms_case_study')->insert($productCategoryData);
                }

            } 
        }
    }


    public function saveImage($file, $id,$type){
        //prd($file); 
        //echo $type; die;

        $result['org_name'] = '';
        $result['file_name'] = '';

        if ($file) 
        {
            $path = 'cms_pages/';
            $thumb_path = 'cms_pages/thumb/';

            $IMG_HEIGHT = CustomHelper::WebsiteSettings('CMS_IMG_HEIGHT');
            $IMG_WIDTH = CustomHelper::WebsiteSettings('CMS_IMG_WIDTH');
            $THUMB_HEIGHT = CustomHelper::WebsiteSettings('CMS_THUMB_HEIGHT');
            $THUMB_WIDTH = CustomHelper::WebsiteSettings('CMS_THUMB_WIDTH');

            $IMG_WIDTH = (!empty($IMG_WIDTH))?$IMG_WIDTH:768;
            $IMG_HEIGHT = (!empty($IMG_HEIGHT))?$IMG_HEIGHT:768;
            $THUMB_WIDTH = (!empty($THUMB_WIDTH))?$THUMB_WIDTH:336;
            $THUMB_HEIGHT = (!empty($THUMB_HEIGHT))?$IMG_WIDTH:336;

            $uploaded_data = CustomHelper::UploadImage($file, $path, $ext='', $IMG_WIDTH, $IMG_HEIGHT, $is_thumb=true, $thumb_path, $THUMB_WIDTH, $THUMB_HEIGHT);

            if($uploaded_data['success']){
                $new_image = $uploaded_data['file_name'];

                if(is_numeric($id) && $id > 0){
                    $page = CmsPages::find($id);

                    if(!empty($page) && count($page) > 0){

                        $storage = Storage::disk('public');

                        if($type == 'image'){
                            $old_image = $page->image;
                            $page->image = $new_image;
                        }
                        elseif($type == 'banner_image'){
                            $old_image = $page->banner_image;
                            $page->banner_image = $new_image;
                        }

                        $isUpdated = $page->save();

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
        $type = ($request->has('type'))?$request->type:'';

        if (is_numeric($image_id) && $image_id > 0) {
            $is_img_deleted = $this->delete_images($image_id,$type);
            if($is_img_deleted)
            {
                $result['success'] = true;
                $result['msg'] = '<div class="alert alert-success alert-dismissable"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a> Image has been delete successfully.</div>';
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

        //prd($id);
        $is_deleted = 0;
        $storage = Storage::disk('public');
        $path = 'cms_pages/';

        if($method=="POST"){
            if(is_numeric($id) && $id > 0)
            {
                $page = CmsPages::find($id);
                if(!empty($page) && count($page) > 0){
                    
                    if(count($page) > 0 && !empty($page->image))
                    {   
                     $image = $page->image;
                     $banner_image = $page->banner_image;
                     if(!empty($image) && $storage->exists($path.'thumb/'.$image))
                     {
                        $is_deleted = $storage->delete($path.'thumb/'.$image);
                    }
                    if(!empty($image) && $storage->exists($path.$image))
                    {
                        $is_deleted = $storage->delete($path.$image);
                    }

                    if(!empty($banner_image) && $storage->exists($path.'thumb/'.$banner_image))
                    {
                        $is_deleted = $storage->delete($path.'thumb/'.$banner_image);
                    }
                    if(!empty($banner_image) && $storage->exists($path.$banner_image))
                    {
                        $is_deleted = $storage->delete($path.$banner_image);
                    }
                }
                $is_deleted = $page->delete();
                
            }
        }
    }   
    if($is_deleted){
        return redirect(url($this->ADMIN_ROUTE_NAME.'/cms?parent_id='.$page->parent_id))->with('alert-success', 'The Page has been deleted successfully.');
    }else
    {
        return redirect(url($this->ADMIN_ROUTE_NAME.'/cms'))->with('alert-danger', 'The Page cannot be deleted, please try again or contact the administrator.');
    }

}


public function delete_images($id,$type)
{   
    $is_deleted = '';
    $is_updated = '';
    $storage = Storage::disk('public');
    $path = 'cms_pages/';
    $page = CmsPages::find($id);

    $image = (isset($page->image))?$page->image:'';
    $banner_image = (isset($page->banner_image))?$page->banner_image:'';

    if($type =='image'){
        if(!empty($image) && $storage->exists($path.'thumb/'.$image))
        {
            $is_deleted = $storage->delete($path.'thumb/'.$image);
        }
        if(!empty($image) && $storage->exists($path.$image))
        {
            $is_deleted = $storage->delete($path.$image);
        }
    }

    elseif($type =='banner_image'){
        if(!empty($banner_image) && $storage->exists($path.'thumb/'.$banner_image))
        {
            $is_deleted = $storage->delete($path.'thumb/'.$banner_image);
        }
        if(!empty($banner_image) && $storage->exists($path.$banner_image))
        {
            $is_deleted = $storage->delete($path.$banner_image);
        }
    }

    if($is_deleted){
        if($type =='image'){
            $page->image = '';
        }
        elseif($type =='banner_image'){
            $page->banner_image = '';
        }
        $is_updated = $page->save();

    }
    return $is_updated;
}

/*    public function edit(Request $request){

        $data = [];

        $cms_id = (isset($request->cms_id))?$request->cms_id:0;

        if(is_numeric($cms_id) && $cms_id > 0){

            $data['page_heading']='Edit CMS Page';
            $data['title']='Edit CMS Page';
            $method = $request->method();

            if($method == 'POST' || $method == 'post'){

                //prd($request->toArray());

                $cms_page = CmsPages::find($cms_id);

                $old_content = (isset($cms_page->content))?$cms_page->content:'';

                $post_data = $request->all();

                $rules = [];

                $rules['title'] = 'required';
                $rules['content'] = 'required';

                $this->validate($request, $rules);

                $update_data = $request->except(['_token', 'name', 'back_url', 'old_image','blog_id','featured']);

                $update_data['old_content'] = $old_content;

                //prd($update_data);

                $is_updated = CmsPages::where('id', $cms_id)->update($update_data);

                if($is_updated){
                    session()->flash('alert-success', 'Template updated successfully!');
                }
                else{
                    session()->flash('alert-danger', 'Something went wrong, please try again!');
                }
                
                return redirect($this->ADMIN_ROUTE_NAME.'/cms');
            }

            $select_cols = $this->select_cols;

            $page = CmsPages::where('id', $cms_id)->select($select_cols)->first();

            $data['page']= $page;

            return view('admin.cms.form',$data);

        }
        else{
            return redirect($this->ADMIN_ROUTE_NAME.'/cms');
        }
    }*/

// End of controller
}
?>