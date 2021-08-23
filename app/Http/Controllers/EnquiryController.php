<?php

namespace App\Http\Controllers;

use App\Enquiry;
use App\HealthInsuranceQuery;
use App\TravelInsuranceQuery;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Helpers\CustomHelper;

use DB;
use Validator;
use Storage;


class EnquiryController extends Controller {

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
        $this->THEME_NAME = 'themes.'.CustomHelper::getThemeName();
    }

    /* ajax_capability */
    public function ajaxSaveCapability(Request $request){

        //prd($request->toArray());

        $response = [];
        $response['success'] = false;
        $message = '';

        if($request->method() == 'POST' || $request->method() == 'post'){

            $rules['first_name'] = 'required';
            //$rules['last_name'] = 'required';
            //$rules['zip'] = 'required';
            $rules['phone'] = 'required|numeric';
            $rules['email'] = 'required|email';
            //$rules['annual_sales'] = 'required';
            //$rules['comment'] = 'required';
            //$rules['title'] = 'required';
            $rules['company'] = 'required';

            //$this->validate($request, $rules);

            $validator = Validator::make($request->all(), $rules);

            if($validator->fails()){
                $response['errors'] = $validator->errors();
            }
            else{

            //prd($request->name);
                $req_data = [];
                $emailData = [];

                $first_name = isset($request->first_name)?$request->first_name:'';
                $last_name = isset($request->last_name)?$request->last_name:'';
                $zip = isset($request->zip)?$request->zip:'';
                $email = isset($request->email)?$request->email:'';
                $annual_sales = isset($request->annual_sales)?$request->annual_sales:'';
                $phone = isset($request->phone)?$request->phone:'';
                $title = isset($request->title)?$request->title:'';
                $company = isset($request->company)?$request->company:'';
                $comment = isset($request->comment)?$request->comment:'';

                $req_data['first_name'] = $first_name;
                $req_data['last_name'] = $last_name;
                $req_data['zip'] = $zip;
                $req_data['annual_sales'] = $annual_sales;
                $req_data['email'] = $email;
                $req_data['phone'] = $phone;
                $req_data['title'] = $title;
                $req_data['company'] = $company;
                $req_data['comment'] = $comment;

                $email_subject = "Capability Enquiry:: ".config('app.name');

                $ADMIN_EMAIL = CustomHelper::WebsiteSettings('ADMIN_EMAIL');
                $FROM_EMAIL = CustomHelper::WebsiteSettings('FROM_EMAIL');

                if(empty($ADMIN_EMAIL)){
                    $ADMIN_EMAIL = config('custom.admin_email');
                }

                if(empty($FROM_EMAIL)){
                    $FROM_EMAIL = config('custom.admin_email');
                }

                $to_email = $ADMIN_EMAIL;

                $to_email_arr = explode(',', $to_email);
                //prd($to_email);

                $from_email = $FROM_EMAIL;

                $emailData = $req_data;

                //sendEmail($viewPath, $viewData, $to, $from, $replyTo, $subject, $params=array())

                $viewHtml = view('emails.capability_enquiry', $emailData)->render();
                //prd($viewHtml);
                $plainText = 'Please Send Email To Admin';

                //$query_email = CustomHelper::sendEmail('emails.capability_enquiry', $emailData, $to=$to_email, $from_email, $ADMIN_EMAIL, $email_subject);

                $query_email = CustomHelper::sendEmailRaw($viewHtml, $plainText, $to=$to_email_arr, $from=$from_email, $replyTo=$from_email, $email_subject, $params=array());

                //prd($query_email);

                if($query_email){
                    
                    $isSaved = Enquiry::insert($req_data);
                    $response['success'] = true;
                    $message = 'Thank You.';  
                }
                else{
                    $message = 'Error in Submitting Form.'; 
                }
            }
            
        }

        $response['message'] = $message;

        return response()->json($response);
    }

    /* ajax_health_insurance */
    public function ajaxSaveHealthInsurance(Request $request){

        //prd($request->toArray());

        $response = [];
        $response['success'] = false;
        $message = '';

        if($request->method() == 'POST' || $request->method() == 'post'){

            $rules['adults'] = 'required';
            $rules['adults_age'] = 'required';
            $rules['phone'] = 'numeric|required';
            $rules['email'] = 'email|required';
            $rules['children'] = 'required';
            $rules['children_age'] = 'required';
            $rules['sum_insured_lacs'] = 'required';
            $rules['tenure'] = 'required';
            $rules['health_insurance_plan'] = 'required';
            $rules['new_policy'] = 'required';
            $rules['accept_condition'] = 'required';

            //$this->validate($request, $rules);

            $validator = Validator::make($request->all(), $rules);

            if($validator->fails()){
                $response['errors'] = $validator->errors();
            }
            else{

            //prd($request->name);
                $req_data = [];
                $emailData = [];

                $adults = isset($request->adults)?$request->adults:'';
                $adults_age = isset($request->adults_age)?$request->adults_age:'';
                $phone = isset($request->phone)?$request->phone:'';
                $email = isset($request->email)?$request->email:'';
                $children = isset($request->children)?$request->children:'';
                $children_age = isset($request->children_age)?$request->children_age:'';
                $sum_insured_lacs = isset($request->sum_insured_lacs)?$request->sum_insured_lacs:'';
                $tenure = isset($request->tenure)?$request->tenure:'';
                $health_insurance_plan = isset($request->health_insurance_plan)?$request->health_insurance_plan:'';
                $new_policy = isset($request->new_policy)?$request->new_policy:'';

                $req_data['adults'] = $adults;
                $req_data['adults_age'] = $adults_age;
                $req_data['phone'] = $phone;
                $req_data['email'] = $email;
                $req_data['children'] = $children;
                $req_data['children_age'] = $children_age;
                $req_data['sum_insured_lacs'] = $sum_insured_lacs;
                $req_data['tenure'] = $tenure;
                $req_data['health_insurance_plan'] = $health_insurance_plan;
                $req_data['new_policy'] = $new_policy;

                $email_subject = "Health Insurance enquiry:: ".config('app.name');
                $ADMIN_EMAIL = CustomHelper::WebsiteSettings('ADMIN_EMAIL');
                $FROM_EMAIL = CustomHelper::WebsiteSettings('FROM_EMAIL');

                if(empty($ADMIN_EMAIL)){
                    $ADMIN_EMAIL = config('custom.admin_email');
                }

                if(empty($FROM_EMAIL)){
                    $FROM_EMAIL = config('custom.admin_email');
                }

                $from_email = $FROM_EMAIL;

                $emailData = $req_data;

                /*$viewHtml = view('emails.health_enquiry', $emailData)->render();
                prd($viewHtml);*/

                $query_email = CustomHelper::sendEmail('emails.health_enquiry', $emailData, $ADMIN_EMAIL, $from_email, $ADMIN_EMAIL, $email_subject);

                if($query_email){

                    $isSaved = HealthInsuranceQuery::insert($req_data);
                    $response['success'] = true;
                    $message = 'Thank You.';  
                }
                else{
                    $message = 'Error in Submitting Form.'; 
                }
            }
            
        }

        $response['message'] = $message;

        return response()->json($response);
    }


    /* ajax_travel_insurance */
    public function ajaxSaveTravelInsurance(Request $request){

        //prd($request->toArray());

        $response = [];
        $response['success'] = false;
        $message = '';

        if($request->method() == 'POST' || $request->method() == 'post'){

            $rules['type_of_application'] = 'required';
            $rules['dob'] = 'required';
            $rules['gender'] = 'required';
            $rules['applicant_phone'] = 'numeric|required';
            $rules['passport_no'] = 'required';
            $rules['travel_diaries'] = 'required';
            $rules['policy_slab'] = 'required';
            $rules['insurance_plan'] = 'required';
            $rules['zone'] = 'required';
            $rules['nominee'] = 'required';
            $rules['applicant_name'] = 'required';
            $rules['address'] = 'required';

            //$this->validate($request, $rules);

            $validator = Validator::make($request->all(), $rules);

            if($validator->fails()){
                $response['errors'] = $validator->errors();
            }
            else{

            //prd($request->name);
                $req_data = [];
                $emailData = [];

                $type_of_application = isset($request->type_of_application)?$request->type_of_application:'';
                $dob = isset($request->dob)?$request->dob:'';
                $gender = isset($request->gender)?$request->gender:'';
                $applicant_phone = isset($request->applicant_phone)?$request->applicant_phone:'';
                $passport_no = isset($request->passport_no)?$request->passport_no:'';
                $travel_diaries = isset($request->travel_diaries)?$request->travel_diaries:'';
                $policy_slab = isset($request->policy_slab)?$request->policy_slab:'';
                $insurance_plan = isset($request->insurance_plan)?$request->insurance_plan:'';
                $zone = isset($request->zone)?$request->zone:'';
                $nominee = isset($request->nominee)?$request->nominee:'';
                $applicant_name = isset($request->applicant_name)?$request->applicant_name:'';
                $address = isset($request->address)?$request->address:'';

                $req_data['type_of_application'] = $type_of_application;
                $req_data['dob'] = $dob;
                $req_data['gender'] = $gender;
                $req_data['applicant_phone'] = $applicant_phone;
                $req_data['passport_no'] = $passport_no;
                $req_data['travel_diaries'] = $travel_diaries;
                $req_data['policy_slab'] = $policy_slab;
                $req_data['insurance_plan'] = $insurance_plan;
                $req_data['zone'] = $zone;
                $req_data['nominee'] = $nominee;
                $req_data['applicant_name'] = $applicant_name;
                $req_data['address'] = $address;

                $email_subject = "Travel Insurance enquiry:: ".config('app.name');
                $ADMIN_EMAIL = CustomHelper::WebsiteSettings('ADMIN_EMAIL');
                $FROM_EMAIL = CustomHelper::WebsiteSettings('FROM_EMAIL');

                if(empty($ADMIN_EMAIL)){
                    $ADMIN_EMAIL = config('custom.admin_email');
                }
                if(empty($FROM_EMAIL)){
                    $FROM_EMAIL = config('custom.admin_email');
                }

                $from_email = $FROM_EMAIL;

                $emailData = $req_data;
                /*$viewHtml = view('emails.travel_enquiry', $emailData)->render();
                prd($viewHtml);*/

                $query_email = CustomHelper::sendEmail('emails.travel_enquiry', $emailData, $ADMIN_EMAIL, $from_email, $ADMIN_EMAIL, $email_subject);

                if($query_email){

                    $isSaved = TravelInsuranceQuery::insert($req_data);
                    $response['success'] = true;
                    $message = 'Thank You.';  
                }
                else{
                    $message = 'Error in Submitting Form.'; 
                }
            }
            
        }

        $response['message'] = $message;

        return response()->json($response);
    }

/* end of controller */
}
