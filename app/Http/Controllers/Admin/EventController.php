<?php

namespace App\Http\Controllers\Admin;

use App\Event;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Helpers\CustomHelper;
use Validator;
use Storage;
use Image;

class EventController extends Controller
{
    private $limit;
    private $ADMIN_ROUTE_NAME;

    public function __construct(){
        $this->limit = 20;
        $this->ADMIN_ROUTE_NAME = CustomHelper::getAdminRouteName();
    }

    public function index(){

        $data = [];
        $limit = $this->limit;
        $event_query = Event::orderBy('created_at','desc');      
        //prd($blogs->toArray());
        $events = $event_query->paginate($limit);
        $data['events'] = $events;

        return view('admin.events.index', $data);
    }

    public function add(Request $request){
        $id = (isset($request->id))?$request->id:0;
        $event = '';
        $title = 'Add Tender';
     
        if(is_numeric($id) && $id > 0){
            $event = Event::find($id);
            $title = 'Edit Tender('.$event->title." )";
        }
        if($request->method() == 'POST' || $request->method() == 'post'){

            //prd($request->toArray());

            $ext = 'jpg,jpeg,png,gif';

            $rules['title'] = 'required';
            $rules['status'] = 'required';
            $rules['image'] = 'nullable|image|mimes:'.$ext;

            $this->validate($request, $rules);
            $req_data = [];
            $req_data = $request->except(['_token', 'image', 'back_url', 'old_image','old_pdf','id','featured','pdf','old_pdf']);
            $slug = CustomHelper::GetSlug('events', 'id', $id, $request->title);

            $req_data['slug'] = $slug;
            $req_data['featured'] = (isset($request->featured)) ? 1:0;
            $start_date = (isset($request->start_date))?$request->start_date:'';
            //$date = CustomHelper::DateFormat($start_date, 'Y-m-d H:i:s', 'd/m/y');
            $req_data['start_date'] = $start_date;

            $end_date = (isset($request->end_date))?$request->end_date:'';
            //$date2 = CustomHelper::DateFormat($end_date, 'Y-m-d H:i:s', 'd/m/y');
            $req_data['end_date'] = $end_date;

            //prd($req_data);
            if(!empty($event) && count($event) > 0){
                $isSaved = Event::where('id', $event->id)->update($req_data);
                $msg="Event has been updated successfully.";
            }
            else{
                $isSaved = Event::create($req_data);
                $id = $isSaved->id;
                $msg="Event has been added successfully.";
            }

            if ($isSaved) {

              if($request->hasFile('image')) {
                $file = $request->file('image');
                $image_result = $this->saveImage($file,$id);
                if($image_result['success'] == false){     
                    session()->flash('alert-danger', 'Image could not be added');
                }
            }


            if($request->hasFile('pdf')) {
                $file = $request->file('pdf');

                if(!empty($file)){
                    $pdf_result = $this->savePdf($file,$id);
                    //prd($pdf_result);
                    if($pdf_result['success']== false){
                        session()->flash('alert-danger', 'Pdf could not be added');
                    }
                }
            }

                cache()->forget('events');

                return redirect(url($this->ADMIN_ROUTE_NAME.'/events'))->with('alert-success', $msg);
            } else {
                return back()->with('alert-danger', 'The Blog could be added, please try again or contact the administrator.');
            }
        }

        $data = [];
        $data['page_heading'] = $title;
        $data['event'] = $event;
        $data['id'] = $id;

        return view('admin.events.form', $data);
    }

    public function saveImage($file, $id){
        //prd($file); 
        //echo $id; die;

        $result['org_name'] = '';
        $result['file_name'] = '';

        if ($file) 
        {
            $path = 'events/';
            $thumb_path = 'events/thumb/';

            $IMG_HEIGHT = CustomHelper::WebsiteSettings('SIZECHART_IMG_HEIGHT');
            $IMG_WIDTH = CustomHelper::WebsiteSettings('SIZECHART_IMG_WIDTH');
            $THUMB_HEIGHT = CustomHelper::WebsiteSettings('SIZECHART_THUMB_HEIGHT');
            $THUMB_WIDTH = CustomHelper::WebsiteSettings('SIZECHART_THUMB_WIDTH');

            $IMG_WIDTH = (!empty($IMG_WIDTH))?$IMG_WIDTH:768;
            $IMG_HEIGHT = (!empty($IMG_HEIGHT))?$IMG_HEIGHT:768;
            $THUMB_WIDTH = (!empty($THUMB_WIDTH))?$THUMB_WIDTH:336;
            $THUMB_HEIGHT = (!empty($THUMB_HEIGHT))?$IMG_WIDTH:336;

            $uploaded_data = CustomHelper::UploadImage($file, $path, $ext='', $IMG_WIDTH, $IMG_HEIGHT, $is_thumb=true, $thumb_path, $THUMB_WIDTH, $THUMB_HEIGHT);

            if($uploaded_data['success']){
                $new_image = $uploaded_data['file_name'];

                if(is_numeric($id) && $id > 0){
                    $event = Event::find($id);

                    if(!empty($event) && count($event) > 0){

                        $storage = Storage::disk('public');

                        $old_image = $event->image;

                        $event->image = $new_image;

                        $isUpdated = $event->save();

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
                $result['msg'] = '<div class="alert alert-success alert-dismissable"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Event image has been delete successfully.</div>';
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
        $path = 'events/';

        if($method=="POST"){
            if(is_numeric($id) && $id > 0)
            {
                $event = Event::find($id);
                if(!empty($event) && count($event) > 0){
                    
                        if(count($event) > 0 && !empty($event->image))
                        {   
                         $image = $event->image;
                         if(!empty($image) && $storage->exists($path.'thumb/'.$image))
                         {
                            $is_deleted = $storage->delete($path.'thumb/'.$image);
                        }
                        if(!empty($image) && $storage->exists($path.$image))
                        {
                            $is_deleted = $storage->delete($path.$image);
                        }
                    }
                    $is_deleted = $event->delete();
                
            }
        }
    }   
    if($is_deleted){
        return redirect(url($this->ADMIN_ROUTE_NAME.'/events'))->with('alert-success', 'The Event has been deleted successfully.');
    }else
    {
        return redirect(url($this->ADMIN_ROUTE_NAME.'/events'))->with('alert-danger', 'The Event cannot be deleted, please try again or contact the administrator.');
    }

}

    public function delete_images($id)
    {   
        $is_deleted = '';
        $is_updated = '';
        $storage = Storage::disk('public');
        $path = 'events/';
        $event = Event::find($id);
        
        $image = (isset($event->image))?$event->image:'';
        if(!empty($image) && $storage->exists($path.'thumb/'.$image))
        {
            $is_deleted = $storage->delete($path.'thumb/'.$image);
        }
        if(!empty($image) && $storage->exists($path.$image))
        {
            $is_deleted = $storage->delete($path.$image);
        }
        if($is_deleted){
           $event->image = '';
           $is_updated = $event->save();

       }
       return $is_updated;
   }



   public function savePdf($file, $id){
        //prd($file); 
        //echo $id; die;
        $result['org_name'] = '';
        $result['file_name'] = '';

        if ($file) 
        {
            $path = 'events/pdf';
            
            $uploaded_data = CustomHelper::UploadFile($file, $path, $ext='');

            //prd($uploaded_data);

            if($uploaded_data['success']){
                $new_pdf = $uploaded_data['file_name'];

                if(is_numeric($id) && $id > 0){
                    $event = Event::find($id);

                    if(!empty($event) && count($event) > 0){

                        $storage = Storage::disk('public');

                        $old_pdf = $event->pdf;

                        //prd($old_pdf);

                        $event->pdf = $new_pdf;

                        $isUpdated = $event->save();

                        if($isUpdated){

                            if(!empty($old_pdf) && $storage->exists($path.$old_pdf)){
                                $storage->delete($path.$old_pdf);
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



    public function ajax_delete_pdf(Request $request){

        $result['success'] = false;

        $id = ($request->has('id'))?$request->id:0;

        //prd($id);

        if (is_numeric($id) && $id > 0) {
            $is_pdf_deleted = $this->delete_pdf($id);
            if($is_pdf_deleted)
            {
                $result['success'] = true;
                $result['msg'] = '<div class="alert alert-success alert-dismissable"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Pdf has been delete successfully.</div>';
            }
        }

        if($result['success'] == false){
            $result['msg'] = '<div class="alert alert-danger alert-dismissable"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Something went wrong, please try again.</div>';
        }
        return response()->json($result);
    }



    public function delete_pdf($id)
    {   
        $is_deleted = '';
        $is_updated = '';
        $storage = Storage::disk('public');
        $path = 'events/pdf/';
        $event = Event::find($id);
        
        $pdf = (isset($event->pdf))?$event->pdf:'';

        if(!empty($pdf) && $storage->exists($path.$pdf))
        {
            $is_deleted = $storage->delete($path.$pdf);
        }
        if($is_deleted){
         $event->pdf = '';
         $is_updated = $event->save();

     }
     return $is_updated;
 }

    /* end of controller */
}