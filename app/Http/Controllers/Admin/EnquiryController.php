<?php

namespace App\Http\Controllers\Admin;

use App\Enquiry;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Helpers\CustomHelper;
use App\Exports\EnquiryExport;
use Maatwebsite\Excel\Facades\Excel;


class EnquiryController extends Controller
{
    private $limit;

    public function __construct()
    {
        $this->limit = 20;
    }

    public function index(Request $request)
    {

        $data = [];

        $name = (isset($request->name))?$request->name:'';
        $vehicle_no = (isset($request->vehicle_no))?$request->vehicle_no:'';
        $email = (isset($request->email))?$request->email:'';
        $phone = (isset($request->phone))?$request->phone:'';
        $action = (isset($request->action))?$request->action:'';
        $from = (isset($request->from))?$request->from:'';
        $to = (isset($request->to))?$request->to:'';
        $export_xls = (isset($request->export_xls))?$request->export_xls:'';

        $limit = $this->limit;
        $s_query = Enquiry::orderBy('id', 'desc');
        $enquiries = $s_query->paginate($limit);

        if(!empty($export_xls) && ($export_xls == 1 || $export_xls == '1') ){
            //prd($task_query);
            $export_enquries = Enquiry::orderBy('name', 'asc')->get();
            return $this->ExportXls($request, $export_enquries);
        }

        $data['enquiries'] = $enquiries;     
        $data['limit'] = $limit;

        return view('admin.enquiries.index', $data);

    }

    public function view(Request $request)
    {   
        $data = [];
        $id = isset($request->id)?$request->id:0;

        if(is_numeric($id) && $id > 0){
            $enquiry = Enquiry::find($id);
        }
        $data['enquiry'] = $enquiry;
        return view('admin.enquiries.view', $data);

    }


    public function delete(Request $request)
    {   
        $id = isset($request->id)?$request->id:0;
        //prd($id);
        if(is_numeric($id) && $id > 0){
        $model = Enquiry::find($id);
        $model->delete();
        return back()->with('alert-success', 'Enquiry deleted successfully.');
        }

        else{
            return back()->with('alert-danger', 'The Enquiry cannot be Deleted, please try again or contact the administrator.');
        }
       
    }

    private function ExportXls($request, $export_enquries){
    //prd($export_enquries);
        $exportArr = [];

        if(!empty($export_enquries) && $export_enquries->count() > 0){
            foreach($export_enquries as $enquiry){
                //prd($enquiry);
                $created_at = CustomHelper::dateFormat($enquiry->created_at, $toFormat='d M Y', $fromFormat='Y-m-d H:i:s');
                $first_name = $enquiry->first_name;
                $last_name = $enquiry->last_name;
                $email = $enquiry->email;
                $phone = $enquiry->phone;
                $annual_sales = $enquiry->annual_sales;
                $company = $enquiry->company;
                $title = $enquiry->title;
                $message = $enquiry->message;
                               
                $enquiryArr = [];

                $enquiryArr['first_name'] = $first_name;
                $enquiryArr['last_name'] = $last_name;
                $enquiryArr['email'] = $email;
                $enquiryArr['phone'] = $phone;
                $enquiryArr['company'] = $company;
                $enquiryArr['annual_sales'] = $annual_sales;
                $enquiryArr['designation'] = $title;
                $enquiryArr['date'] = $created_at;

                $exportArr[] = $enquiryArr;
            }
        }

        $fieldNames = array_keys($exportArr[0]);
        $sheetHeading = 'Enquiry List';

        //prd($exportArr);

        $fileName = 'enquries_list_'.date('Y-m-d-H-i-s').'.xlsx';

        return Excel::download(new EnquiryExport($exportArr, $fieldNames, $sheetHeading), $fileName);

    }

    /* end of controller */
}