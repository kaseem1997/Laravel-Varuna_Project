<?php

namespace App\Http\Controllers\Admin;

use App\User;
use App\Customer;
use App\Order;
use App\OrderItem;
use App\Invoice;
use App\Coupon;
use App\Product;
use App\Category;
use App\Attribute;
use App\Inventory;
use Carbon\Carbon;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Helpers\CustomHelper;
use Validator;

use DB;
use Hash;

class HomeController extends Controller {

	// Dashboard - URL: /admin
	public function index(){
		//echo "hello"; die;
		// Stats
		$data = [];

		/*$currWeek  = date("W", strtotime('now'));
		$currYear  = date("Y", strtotime('now'));

		$getStartAndEndDateOfWeek = CustomHelper::getStartAndEndDateOfWeek($currWeek, $currYear, 'Y-m-d');
		//prd($getStartAndEndDateOfWeek);

		$weekStartDate = $getStartAndEndDateOfWeek['start_date'];
		$weekEndDate = $getStartAndEndDateOfWeek['end_date'];

		$monthStartDate = date('Y-m-01');
		$monthEndDate = date('Y-m-t');
		//prd($monthEndDate);

		$todayDate = date('Y-m-d');

		$totalOrders = Order::count();

		$todayOrders = Order::whereDate('created_at', $todayDate)->count();
		$weekOrders = Order::whereRaw("DATE(created_at)>='$weekStartDate' AND DATE(created_at)<='$weekEndDate'")->count();
		$monthOrders = Order::whereRaw("DATE(created_at)>='$monthStartDate' AND DATE(created_at)<='$monthEndDate'")->count();
		

		$totalOrdersRevenue = Order::where('order_status', 'success')->count();

		$todayOrdersRevenue = Order::where('order_status', 'success')->whereDate('updated_at', $todayDate)->count();
		$weekOrdersRevenue = Order::where('order_status', 'success')->whereRaw("DATE(updated_at)>='$weekStartDate' AND DATE(updated_at)<='$weekEndDate'")->count();
		$monthOrdersRevenue = Order::where('order_status', 'success')->whereRaw("DATE(updated_at)>='$monthStartDate' AND DATE(updated_at)<='$monthEndDate'")->count();

		$topSellingProducts = OrderItem::select(DB::raw('*, sum(qty) as total_qty'))->whereRaw("DATE(`created_at`) >= (DATE(NOW()) - INTERVAL 15 DAY) Group By product_id Order By sum(qty) desc")->get();

		//prd($topSellingProducts->toArray());

		$data['totalOrders'] = $totalOrders;
		$data['todayOrders'] = $todayOrders;
		$data['weekOrders'] = $weekOrders;
		$data['monthOrders'] = $monthOrders;

		$data['totalOrdersRevenue'] = $totalOrdersRevenue;
		$data['todayOrdersRevenue'] = $todayOrdersRevenue;
		$data['weekOrdersRevenue'] = $weekOrdersRevenue;
		$data['monthOrdersRevenue'] = $monthOrdersRevenue;

		$data['topSellingProducts'] = $topSellingProducts;*/


		return view('admin.index', $data);
	}


	public function verify_old_password(Request $request){


		$back_url = (isset($request->back_url))?$request->back_url:'';

		if(!empty($back_url)){

			if($request->method() == 'POST'){
				prd($request);

				$auth_user = auth()->guard('admin')->user();

				$message = [];
				$rules = [];

				$rules['password'] = 'required';

				$validator = Validator::make($request->all(), $rules, $message);

				$validator->after(function($validator) use ($auth_user){
					if (!Hash::check(request('password'), $auth_user->password)){
						$validator->errors()->add('password', 'Password did not matched!');
					}
					else{
						session(['verify_password'=>TRUE, 'verify_time'=>date('Y-m-d H:i:s')]);
					}
				});

				if ($validator->fails()){
					return back()->withErrors($validator);
				}
				elseif(!empty($back_url)){
					return redirect(url($back_url));
				}
				else{
					return back()->with('success', 'Password has been verified!');
				}
			}
			return view('admin.verify_password');
		}
		else{
			return back();
		}

	}

	public function verify_password(Request $request){

		if($request->method() == 'POST'){
				//prd($request->toArray());

			$auth_user = auth()->guard('admin')->user();

			$message = [];
			$rules = [];

			$rules['password'] = 'required';

			$validator = Validator::make($request->all(), $rules, $message);

			$validator->after(function($validator) use ($auth_user){
				if (!Hash::check(request('password'), $auth_user->password)){
					$validator->errors()->add('password', 'Password did not matched!');
				}
				else{
					session(['verify_password'=>TRUE, 'verify_time'=>date('Y-m-d H:i:s')]);
				}
			});

			if ($validator->fails()){
				return back()->withErrors($validator);
			}
			elseif(!empty($back_url)){
				return redirect(url($back_url));
			}
			else{
				return back()->with('success', 'Password has been verified!');
			}
		}
		else{
			return back();
		}

	}

	/* ck_upload */
	public function ckUpload(Request $request){
        //pr(csrf_token());
        //prd($request->toArray());

        $response = [];

        $response['success'] = false;

        $csrf_token = csrf_token();
        $req_csrf_token = (isset($request->csrf_token))?$request->csrf_token:'';
        $type = (isset($request->type))?$request->type:'';

        if ($request->hasFile('upload') && $csrf_token == $req_csrf_token){

            $file = $request->file('upload');

            $path = 'ck';

            /*if(!empty($type)){
                $path = $type.'/'.'ck';
            }*/

            //UploadFile($file, $path, $ext='')

            $ext='jpg,jpeg,png,gif';

            $uploadResult = CustomHelper::UploadFile($file, $path, $ext);

            //prd($upload_result);

            if($uploadResult['success']){

            	$fileName = $uploadResult['file_name'];
                
                $funcNum = $request->CKEditorFuncNum;
                // Optional: instance name (might be used to load a specific configuration file or anything else).
                $CKEditor = $request->CKEditor;
                // Optional: might be used to provide localized messages.
                $langCode = $request->langCode;

                // Check the $_FILES array and save the file. Assign the correct path to a variable ($url).
                //$url = $uploadResult['fileUrl'];

            	$url = asset('storage/'.$path.'/'.$fileName);
                // Usually you will only assign something here if the file could not be uploaded.
                $message = 'Image/file uploaded successfully.';

                echo "<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction($funcNum, '$url', '$message');</script>";
            }
            else{
                return response()->json($response);
            }
        }
    }


	/* end of controller */
}
