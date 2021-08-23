<?php

namespace App\Http\Controllers\Admin;

use App\User;
use App\Role;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use App\Http\Controllers\Controller;
use DB;
use Auth;

use Validator;

use App\UserWallet;

use App\Helpers\CustomHelper;

class CustomerController extends Controller{

    private $limit;

    public function __construct(){

        //$this->middleware(['auth:admin','permission:customers.add']);
        $this->limit = 20;
    }

    public function index(Request $request){

        $data = [];
        $limit = $this->limit;

        $name = (isset($request->name))?$request->name:'';
        $email = (isset($request->email))?$request->email:'';
        $phone = (isset($request->phone))?$request->phone:'';

        $discount_scope = (isset($request->discount_scope))?$request->discount_scope:'=';
        $discount = (isset($request->discount))?$request->discount:'';

        $wallet = (isset($request->wallet))?$request->wallet:'';
        $status = (isset($request->status))?$request->status:'';
        $from = (isset($request->from))?$request->from:'';
        $to = (isset($request->to))?$request->to:'';

        $from_date = CustomHelper::DateFormat($from, 'Y-m-d', 'd/m/Y');
        $to_date = CustomHelper::DateFormat($to, 'Y-m-d', 'd/m/Y');

        $customer_query = User::query();

        $customer_query->orderBy('id', 'desc');

        if(!empty($name)){
            //$customer_query->whereRaw("CONCAT(users.first_name,' ',COALESCE(users.last_name,'')) LIKE '%".$name."%'" );
            $customer_query->where('users.name','like', '%'.$name.'%');
        }
        if(!empty($email)){
            $customer_query->where('users.email','like', '%'.$email.'%');
        }
        if(!empty($phone)){
            $customer_query->where('users.phone','like', '%'.$phone.'%');
        }
        if(is_numeric($discount) && $discount > 0){
            $customer_query->where('discount', $discount_scope, $discount);
        }
        if( strlen($status) > 0 ){
            $customer_query->where('status', $status);
        }
        if( strlen($wallet) > 0 ){
            $customer_query->where('is_wallet', $wallet);
        }
        if(!empty($from_date)){
            $customer_query->whereRaw('DATE(created_at) >= "'.$from_date.'"');
        }
        if(!empty($to_date)){
            $customer_query->whereRaw('DATE(created_at) <= "'.$to_date.'"');
        }

        $customers = $customer_query->paginate($limit);

        $data['customers'] = $customers;

        return view('admin.customers.index', $data);

    }

    public function add(Request $request){
        $data = [];

        $customer_id = (isset($request->customer_id))?$request->customer_id:0;

        $customer = '';

        if(is_numeric($customer_id) && $customer_id > 0){
            $customer = User::where('id',$customer_id)->first();
            if(empty($customer)){
                return redirect('admin/customers');
            }
        }

        if($request->method() == 'POST' || $request->method() == 'post'){

            //prd($request->toArray());

            $back_url = (isset($request->back_url))?$request->back_url:'';

            if(empty($back_url)){
                $back_url = 'admin/customers';
            }

            $email = (isset($request->email))?$request->email:'';
            

            $rules = [];

            $rules['name'] = 'required|min:2';
            $rules['email'] = 'required|email';
            $rules['password'] = 'nullable|min:6';
            $rules['address'] = 'required';

            if(!empty($email)){
                $rules['email'] = ['required','email',Rule::unique('users')->ignore($customer_id)];
            }

            $this->validate($request, $rules);

            $createdCustomer = $this->save($request, $customer_id);

            if ($createdCustomer) {
                $alert_msg = 'The customer has been added successfully.';
                if(is_numeric($customer_id) && $customer_id > 0){
                    $alert_msg = 'The customer has been updated successfully.';
                }
                return redirect(url($back_url))->with('alert-success', $alert_msg);
            } else {
                return back()->with('alert-danger', 'The customers cannot be added, please try again or contact the administrator.');
            }
        }

       
        $customer_name = '';

        $page_heading = 'Add Customer';

        if(isset($customer->first_name)){
            $customer_name = trim($customer->first_name.' '.$customer->last_name);
            $page_heading = 'Update Customer - '.$customer_name;
        }        

        $states = DB::table('states')->get()->keyBy('id');

        $data['page_heading'] = $page_heading;
        $data['states'] = $states;
        $data['customer_id'] = $customer_id;
        $data['customer'] = $customer;
        $data['customer_name'] = $customer_name;

        return view('admin.customers.form', $data);

    }


    public function save(Request $request, $customer_id=0){

        $data = $request->except(['_token', 'back_url', 'dob']);

        $dob = CustomHelper::DateFormat($request->dob, $toFormat='Y-m-d', $fromFormat='d/m/Y');

        if(!empty($dob)){
            $data['dob'] = $dob;
        }

        if(empty($data['password'])){
            unset($data['password']);
        }
        else{
            $data['password'] = bcrypt($data['password']);
        }

        $roles = Role::orderBy('name')->get()->keyBy('name');

        $data['role_id'] = (isset($roles['customer']))?$roles['customer']->id:'';

        //prd($data);

        $is_saved = '';

        if(is_numeric($customer_id) && $customer_id > 0){
            $is_saved = User::where('id', $customer_id)->update($data);
        }
        else{
            $is_saved = User::insert($data);
        }        
        return $is_saved;
    }

    public function view($customer_id){
        $data = [];

        $custumer_detail = Customer::find($customer_id);
        //pr($C->toArray());
        $countries =  DB::table('countries')->get()->keyBy('id')->toArray();

        $data['countries'] = $countries;

        $data['custumer_detail'] = $custumer_detail;

        $data['page_heading'] = 'View Customer Detail'.$custumer_detail->first_name.' '.$custumer_detail->last_name;


        return view('admin.customers.show', $data);

    }

    public function wallet(Request $request){
            //prd($user_id);

        $user_id = (isset($request->user_id)) ? $request->user_id : 0;
        $wallet_id = (isset($request->id)) ? $request->id : 0;
        $back_url = $request->back_url;

        //echo $segment2; die;
        //echo $user_id; die;

        $method = $request->method();

        $auth_user = auth()->guard('admin')->user();
        $admin_id = $auth_user->id;

        if(is_numeric($user_id) && $user_id > 0){
            $user = User::where('id', $user_id)->where('deleted', '!=', 1)->first();

            if(isset($user->id) && $user->id == $user_id){

            }
            else{
                $user_id = '';
            }
        }
        
        if(is_numeric($user_id) && $user_id > 0){

            $wallet_bal = CustomHelper::calculateUserWalletBal($user_id);

            //pr($wallet_bal);

            if( $method == 'POST' || $method == 'post' ){
                //prd($request->all());

                $validation_msg = [];

                $validation_msg['amount.min'] = 'Amount should be greater than 0.';

                $rules = [];
                $rules['type'] = 'required';
                $rules['amount'] = 'required|numeric|min:1';
                //$rules['description'] = 'required|min:5';

                $validator = $this->validate($request, $rules, $validation_msg);

                $type = $request->type;
                $amount = $request->amount;
                $description = $request->description;
                $description = trim($description);

                $created = date('Y-m-d H:i:s');                

                $new_balance = $wallet_bal;

                if($type == 'credit_amount'){
                    $new_balance = $wallet_bal + $amount;
                }
                elseif($type == 'debit_amount'){
                    $new_balance = $wallet_bal - $amount;
                }

                $wallet_data['user_id'] = $user_id;
                $wallet_data['by_user_id'] = $admin_id;
                $wallet_data[$type] = $amount;
                $wallet_data['balance'] = $new_balance;
                $wallet_data['created_at'] = $created;
                $wallet_data['updated_at'] = $created;
                $wallet_data['description'] = $description;
                
                //prd($wallet_data);

                $inserted = UserWallet::create($wallet_data);                

                if(isset($inserted->id) && $inserted->id > 0){

                    CustomHelper::UpdateUserWalletBal($user_id, $new_balance);

                    session()->flash('alert-success', 'Amount has been added.');

                    $activity_description = 'Amount '.config('custom.wallet_amt_type.'.$type);
                    $module_name = config('custom.wallet_amt_type.'.$type);

                    $UserWallet_model= new UserWallet;

                    $this->wallet_transaction_emails($inserted->id);

                    return redirect('admin/customers/wallet/'.$user_id.'/?back_url='.$back_url);
                    
                }

                //$validator = Validator::make($request->all(), $rules);

                //prd($validator->errors());
            }

            $user = User::where('id', $user_id)->where('deleted', '!=', 1)->first();

            //prd($user);
            $data = [];

            $wallet = UserWallet::where(['user_id'=>$user_id, 'id'=>$wallet_id])->get();
            $wallet_list = UserWallet::where('user_id', $user_id)->orderBy('created_at', 'desc')->get();

            //prd($wallet->toArray());

            $data['wallet'] = $wallet;
            $data['wallet_list'] = $wallet_list;

            $data['user'] = $user;
            $data['user_id'] = $user_id;

            return view('admin.customers.wallet.index', $data);
        }

        return back();
    }

    public function wallet_transaction_emails($wallet_transaction_id){
         
        $wallet_data = UserWallet::where(['id'=>$wallet_transaction_id])->first();

        $user_data= User::select(['first_name','last_name','email'])->where(['id'=>$wallet_data->user_id])->first();
         
        $av_bal=$this->getuser_total_balance($wallet_data->user_id); 

        // Sending Email to Customer
        $to_email = $user_data->email;
        $user_name= $user_data->first_name." ".$user_data->last_name;
        
        if($wallet_data->credit_amount >0){
            $subject = 'Rs '.$wallet_data->credit_amount.' is credited in your wallet';

            $tag_line=  'Rs '.$wallet_data->credit_amount.' is credited in your wallet';

        }
        if($wallet_data->debit_amount >0){
               
            $subject = 'Rs '.$wallet_data->debit_amount.' is debited in your wallet'; ;
            $tag_line=  'Rs '.$wallet_data->debit_amount.' is debited in your wallet'; ;
            
        }
        
        $ADMIN_EMAIL = CustomHelper::WebsiteSettings('ADMIN_EMAIL');
        if(empty($ADMIN_EMAIL)){
            $ADMIN_EMAIL = config('custom.admin_email');
        }
        $from_email = $ADMIN_EMAIL;

        $email_data =[];
        
        $email_data['user_name'] = $user_name;
        $email_data['tag_line'] = $tag_line; 
        $email_data['wallet_data'] = $wallet_data; 
        $email_data['av_bal'] = $av_bal; 
        $is_mail = CustomHelper::sendEmail('emails.wallet.wallet_transaction', $email_data, $to=$to_email, $from_email, $replyTo = $from_email, $subject);
    }

    public function do_wallet_transaction($save_data){
         $wallet_id = UserWallet::insertGetId($save_data);
         if(!empty($wallet_id)){
            
            if(!empty($save_data['user_id'])){

                 $user_id= $save_data['user_id']; 
                 $this->update_user_balance($user_id);
                 $balance= $this->getuser_total_balance($user_id);
                 // update the balance.........
                 UserWallet::where('id', $wallet_id)->update(['balance' =>$balance]);

                // sending transaction emails 
                $this->wallet_transaction_emails($wallet_id);   
                 
            }           
         }
         return $wallet_id;

    }

    // this is for doing wallet transaction
    public function getuser_total_balance($user_id){

       $balance= 0; 
       $db = UserWallet::where('user_id', $user_id);
       $db->select(DB::raw('sum(credit_amount) as total_credit,sum(debit_amount) as total_debit'));
       $res = $db->first();

       if(!empty($res)){
            $balance = $res->total_credit-$res->total_debit;
       }
       return $balance; 

    }


    // update wallet ammonunt in user table
    public function update_user_balance($user_id= ''){
         if(!empty($user_id)){
            $balance = $this->getuser_total_balance($user_id); 
            
            UserWallet::where('id', $user_id)->update(['wallet_bal' =>$balance]);
         }

    }

    
/* end of controller */
}