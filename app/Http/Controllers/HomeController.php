<?php

namespace App\Http\Controllers;

use App\CmsPages;

use App\Category;
use App\Product;
use App\Banner;
use App\HomeImage;
use App\Brand;
use App\UserCart;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Helpers\CustomHelper;

use App\Libraries\InstagramApi;

use DB;
use Validator;


class HomeController extends Controller {

	private $limit;
    /**
     * Homepage
     * URL: /
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */

    private $THEME_NAME;

    public function __construct(){
    	$this->limit = 20;
        $this->THEME_NAME = 'themes./'.CustomHelper::getThemeName();
    }

    public function index(){   

        $data = [];
        $limit = $this->limit;

        $isMobile = CustomHelper::isMobile();

        $bannerType = 'desktop';
        
        if($isMobile){
            $bannerType = 'mobile';
        }

        $bannerWhere = [];
        $bannerWhere['page'] = 'home';
        $bannerWhere['status'] = 1;
        $bannerWhere['device_type'] = $bannerType;

        $banners = Banner::where($bannerWhere)->orderBy('sort_order')->limit($limit)->get();

        $productsTrending = Product::where(['trending'=>1, 'status'=>1])->orderBy('sort_order')->limit(3)->get();
        $productsBestSeller = Product::where(['featured'=>1, 'status'=>1])->orderBy('sort_order')->limit(10)->get();
        $brands = Brand::where(['featured'=>1, 'status'=>1])->orderBy('sort_order')->limit(6)->get();
        $HomeImages = HomeImage::where(['status'=>1])->where('image', '!=', "")->whereNotNull('image')->orderBy('sort_order')->limit(6)->get();
        //pr($brands->toArray());
        $instaMedia = '';

        $insta = new InstagramApi();

        $instaMedia = $insta->userMedia();

        $data['meta_title'] = '';
        $data['banners'] = $banners;
        $data['productsTrending'] = $productsTrending;
        $data['productsBestSeller'] = $productsBestSeller;
        $data['brands'] = $brands;
        $data['HomeImages'] = $HomeImages;
        $data['instaMedia'] = $instaMedia;
        
        return view($this->THEME_NAME.'.home.index', $data);
        //return view('home.index', $data);
    }

    

    public function index_test(){   

        $data = [];
        $limit = $this->limit;

        $isMobile = CustomHelper::isMobile();

        $bannerType = 'desktop';
        
        if($isMobile){
            $bannerType = 'mobile';
        }

        $bannerWhere = [];
        $bannerWhere['page'] = 'home';
        $bannerWhere['status'] = 1;
        $bannerWhere['device_type'] = $bannerType;

        $banners = Banner::where($bannerWhere)->orderBy('sort_order')->limit($limit)->get();

        $productsTrending = Product::where(['trending'=>1, 'status'=>1])->orderBy('sort_order')->limit(3)->get();
        $productsBestSeller = Product::where(['featured'=>1, 'status'=>1])->orderBy('sort_order')->limit(10)->get();
        $brands = Brand::where(['featured'=>1, 'status'=>1])->orderBy('sort_order')->limit(6)->get();
        $HomeImages = HomeImage::where(['status'=>1])->where('image', '!=', "")->whereNotNull('image')->orderBy('sort_order')->limit(6)->get();
        //pr($brands->toArray());
        $instaMedia = '';

        $insta = new InstagramApi();

        $instaMedia = $insta->userMedia();

        $data['meta_title'] = '';
        $data['banners'] = $banners;
        $data['productsTrending'] = $productsTrending;
        $data['productsBestSeller'] = $productsBestSeller;
        $data['brands'] = $brands;
        $data['HomeImages'] = $HomeImages;
        $data['instaMedia'] = $instaMedia;
        
        return view($this->THEME_NAME.'.home.index_test', $data);
        //return view('home.index', $data);
    }

    public function logout(Request $request){
        
        $method = $request->method();

        /*$userId = 0;
        if(auth()->check()){
            $userId = auth()->user()->id;
        }*/

        //if($method == 'POST'){
            Auth::logout();

            if(!auth()->check()){
                session()->flush();
                if (session()->has('couponData')) {
                    session()->forget('couponData');
                }

                session()->flush();
        
               /* $sessionToken = csrf_token();

                if(is_numeric($userId) && $userId > 0){
                    UserCart::where(['session_token'=>$sessionToken, 'user_id'=>$userId])->update(['session_token'=>'']);
                }*/
            }

            return redirect(url(''))->with('alert-success', 'You have successfully logged out!');

            //return redirect(url('account/login'))->with('alert-success', 'You have successfully logged out!');
        //}
    }

 /*   public function contact(Request $request){
        //phpinfo(); die;
        $countries = DB::table('countries')->orderBy('name')->get();
        $data = [];

        //echo date('d M Y H:i A'); die;

        $select_cols = '*';

        $page_name = 'contact_us';
        $cms_data = CustomHelper::GetCMSPage($page_name, $select_cols);

        $data = array_merge($data, $cms_data);

        if($request->method() == 'POST' || $request->method() == 'post'){
            $attributes['scode'] = 'Security Code';

            $rules['name'] = 'required';
            $rules['email'] = 'required|email';
            $rules['message'] = 'required';
            $rules['scode'] = 'required|captcha';

            $message['scode.captcha'] = "Invalid Captcha";

            $validator = Validator::make($request->all(), $rules, $message);

            $validator->setAttributeNames($attributes);

            if ($validator->fails()){
                return back()->withInput()->withErrors($validator);
            }
            else{
                $email_subject = "Contact us From :: SlumberJill";
                $ADMIN_EMAIL = CustomHelper::WebsiteSettings('ADMIN_EMAIL');
                //$STORE_EMAIL = "ashishkb@ehostinguk.com"; 

                $emailData['name']= $name = $request->name;
                $emailData['email'] = $request->email;
                $emailData['phone'] = $request->phone;
                $emailData['subject'] = $request->subject;
                $emailData['msg'] = $request->message;

                $viewHtml = view('emails.contact', $emailData)->render();

                prd($viewHtml);

                $query_email = CustomHelper::sendEmail('emails.contact', $emailData, $ADMIN_EMAIL, $ADMIN_EMAIL, $ADMIN_EMAIL, $email_subject);

                if($query_email){
                    return redirect(url('contact'))->with('alert-success', 'Thanks for visiting and giving us an opportunity to serve you. We will be back with the answer of your query with in next 24 business hours.');
                }
                else{
                    return redirect(url('contact'))->with('alert-danger', '<b>Opps! something went wrong. Your enquiry could not be submitted successfully.</b>');
                }
            }
            
        }

        //prd(captcha());
        $data['countries'] = $countries;
        $data['captcha_img'] = captcha_img('custom');

        return view($this->THEME_NAME.'.home.contact', $data);
    }*/

    public function careerDetail(Request $request){

        $data = [];

        $job_id = (isset($request->job_id))?$request->job_id:'';

        if(!empty($job_id)){

            $careerData = CustomHelper::carrerListApi($job_id);

            /*$careerData = $careerData->filter(function ($value) {

                return ($value->post_on_careers_page == 1);
            });*/

            $data['careerData'] = $careerData;

            $data['job_id'] = $job_id;
            $data['meta_title'] = 'Careeer Detail';
            $data['meta_keyword'] = 'Careeer Detail';
            $data['meta_description'] = 'Careeer Detail';

            return view($this->THEME_NAME.'.careers.career-details', $data);
        }

        return back();

    }


    public function contact(Request $request){
        
        //prd($request->toArray());

        $data = [];
        $response = [];
        $isContact = true;
        $data['isContact'] = $isContact;
        $data['meta_title'] = "Contact us";

        if($request->method() == 'POST' || $request->method() == 'post'){
            //prd($request->toArray());

            $attributes['scode'] = 'Security Code';

            $rules['first_name'] = 'required';
            $rules['last_name'] = 'required';
            $rules['contact_email'] = 'required|email';
            $rules['comment'] = 'required';
            $rules['phone'] = 'required';
            $rules['scode'] = 'required|captcha';

            $message['scode.captcha'] = "Invalid Captcha";

            $validator = Validator::make($request->all(), $rules, $message);

            $validator->setAttributeNames($attributes);

            if ($validator->fails()){
                $response['errors'] = $validator->errors();

            }
            else{
                $email_subject = "Contact us From";
                $ADMIN_EMAIL = CustomHelper::WebsiteSettings('ADMIN_EMAIL');
                //$ADMIN_EMAIL = "ramji@indiaint.com";
                if(empty($ADMIN_EMAIL)){
                    $ADMIN_EMAIL = config('custom.admin_email');
                }

                $emailData['first_name']= $request->first_name;
                $emailData['last_name']= $request->last_name;
                $emailData['phone']= $request->phone;
                $email = $request->contact_email;
                $emailData['email'] = $email;
                $emailData['comment'] = $request->comment;

                //$viewHtml = view('emails.contact', $emailData)->render();

                //prd($emailData);
                $REPLYTO = $email;

                $viewArr = ['emails.contact', 'emails.contact_text'];

                //$query_email = CustomHelper::sendEmail($viewArr, $emailData, $ADMIN_EMAIL, $ADMIN_EMAIL, $REPLYTO, $email_subject);

                $html = view('emails.contact', $emailData)->render();

                $plainText = 'Please Send Email To Admin';

                $query_email = CustomHelper::sendEmailRaw($html, $plainText, $ADMIN_EMAIL, $ADMIN_EMAIL, $REPLYTO, $email_subject);

                //$isSaved = Enquiry::create($emailData);
                //$isSaved = DB::table('enquiries')->insert($emailData);

                //prd($isSaved);
                if($query_email){
                 $response['message'] = 'Thank You for connecting Us.';
                 $response['success'] = true;
             }
             else{
                 $response['message'] = 'Error in submitting form.';
             }
         }
         return response()->json($response);
     }

        //prd(captcha());
        //$data['countries'] = $countries;
     //return view('home.contact', $data);
 }

 public function cmsPage(Request $request){

        $segments1 = $request->segment(1);

        //prd($segments1);

        $data = [];
        $careerData = [];

        $select_cols = '*';

        if(!empty($segments1)){


            if($segments1 == 'varuna-career'){
                
                $careerData = CustomHelper::carrerListApi($job_id='');

                $careerData = collect($careerData->data);

                $careerData = $careerData->sortByDesc('job_updated_timestamp');

                if(!empty($careerData)){
                    $careerData = $careerData->filter(function ($value) {
                        return ($value->post_on_careers_page == 1);
                    });
                }
                
            }

            $data['careerData'] = $careerData;

            $page_name = $segments1;

            $cms_data = CustomHelper::getCMSPage($page_name, $select_cols);
            //prd($cms_data);

            if(!empty($cms_data) && count((array)$cms_data) > 0){

                $meta_title = (isset($cms_data->meta_title)) ? $cms_data->meta_title:'';
                $meta_description = (isset($cms_data->meta_description)) ? $cms_data->meta_description:'';

                if(empty($meta_title)){
                    $meta_title = (isset($cms_data->title)) ? $cms_data->title:'';
                }

                $data['meta_title'] = $meta_title;
                $data['meta_description'] = $meta_description;
                $data['cms'] = $cms_data;
                //prd($cms_data);
                if(!empty($cms_data->template)){
                   return view($this->THEME_NAME.'.templates.'.$cms_data->template, $data); 
               }
               /*if(empty($cms_data->parent_id)){
                $cmsData = CmsPages::where('parent_id', $cms_data->id)->orderBy('created_at')->get();
                if(!empty($cmsData) && count($cmsData) > 0){

                    $meta_title = (isset($cmsData->meta_title))?$cmsData->meta_title:'';

                    if(empty($meta_title)){
                        $meta_title = (isset($cmsData->title))?$cmsData->title:'';
                    }

                    $data['meta_title'] = $meta_title;
                    $data['cmsData'] = $cmsData;
                    return view($this->THEME_NAME.'.templates.listing', $data);
                }
            }*/
            
            return view($this->THEME_NAME.'.home.cms_page', $data);
        }
        else{
            //return redirect(url('/'));
            abort(404);
        }

    } 

        abort(404);
    }


    

/* end of controller */
}
