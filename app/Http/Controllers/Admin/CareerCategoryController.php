<?php



namespace App\Http\Controllers\Admin;



use App\CareerCategory;

use Illuminate\Http\Request;

use App\Http\Controllers\Controller;

use Validator;

use Storage;

use App\Helpers\CustomHelper;

use DB;

use Image;



class CareerCategoryController extends Controller{



    private $limit;

    private $ADMIN_ROUTE_NAME;



    public function __construct(){

        $this->limit = 20;

        $this->ADMIN_ROUTE_NAME = CustomHelper::getAdminRouteName();

    }



    public function index(Request $request){



        $data = [];



        $limit = $this->limit;

        $name = (isset($request->name))?$request->name:'';
        $status = (isset($request->status))?$request->status:'';
        $from = (isset($request->from))?$request->from:'';
        $to = (isset($request->to))?$request->to:'';

        

        $category_query = CareerCategory::orderBy('sort_order', 'asc');

        if(!empty($name)){
            $category_query->where('name', 'like', $name.'%');
        }

        if($status !=''){
            $category_query->where('status',$status);
        }

        if(!empty($from)){
            $from_date = CustomHelper::DateFormat($from, 'Y-m-d', 'd/m/Y');
            if(!empty($from_date)){
                $category_query->whereRaw('DATE(action_date) >= "'.$from_date.'"');
            }
        }
        if(!empty($to)){
            $to_date = CustomHelper::DateFormat($to, 'Y-m-d', 'd/m/Y');
            if(!empty($to_date)){
             $category_query->whereRaw('DATE(action_date) <= "'.$to_date.'"');
         }
        }



        $categories = $category_query->paginate($limit);

        $data['categories'] = $categories;

        $data['limit'] = $limit;



        return view('admin.career_categories.index', $data);



    }





    public function add(Request $request){

        //prd($request->toArray());

        $data = [];

        $id = (isset($request->id))?$request->id:0;



        $category = '';



        if(is_numeric($id) && $id > 0){

            $category = CareerCategory::find($id);

        }



        if($request->method() == 'POST' || $request->method() == 'post'){

            //prd($request->toArray());



            $back_url = (isset($request->back_url))?$request->back_url:'';



            if(empty($back_url)){

                $back_url = $this->ADMIN_ROUTE_NAME.'/career_categories';

            }



            $req_id = (isset($request->id))?$request->id:0;



            $rules = [];

            $rules['name'] = 'required';

            $rules['status'] = 'required';



            $this->validate($request, $rules);



            $req_data = [];



            $req_data = $request->except(['_token', 'id','back_url']);

            

            $slug = CustomHelper::GetSlug('career_categories', 'id', $id, $request->name);

            $req_data['slug'] = $slug;

        

            if(!empty($category) && count($category) > 0 && $req_id == $id){

                $isSaved = CareerCategory::where(['id'=>$category->id])->update($req_data);

                //prd($isSaved);

            }

            else{

                $isSaved = CareerCategory::create($req_data);

                $id = $isSaved->id;

            }

            

            if ($isSaved) {



                return redirect(url($back_url))->with('alert-success', 'Career Category has been saved successfully.');

            } else {

                return back()->with('alert-danger', 'Career Category cannot be added, please try again or contact the administrator.');

            }

        }

        

       

        $page_heading = 'Add Career Category';

        if(isset($category->name)){

            $page_heading = 'Edit Career Category - '.$category->name;

        }



        $data['page_heading'] = $page_heading;

        $data['id'] = $id;

        $data['category'] = $category;



        return view('admin.career_categories.form', $data);



    }



    public function delete($id){

        $category = CareerCategory::find($id);

        if ($category->careers() && $category->careers()->count() > 0) {

            return back()->with('alert-danger', 'This category cannot be removed because there are currently ' . $category->careers()->count() . ' careers associated with it. Please remove the careers first.');

        }

        // The Category must not have any associated Sub-categories to be deleted

        if ($category->children() && $category->children()->count() > 0) {

            return back()->with('alert-danger', 'This category cannot be removed because there are currently ' . $category->children()->count() . ' blog sub-categories associated with it. Please remove the blog sub-categories first.');

        }

        else {      

            $category->delete();



            return back()->with('alert-success', 'The category has been removed successfully.');

        }

    }



    /* end of controller */

}