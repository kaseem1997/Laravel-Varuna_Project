	@component('admin.layouts.main')



    @slot('title')

        Admin - Manage Blogs - {{ config('app.name') }}

    @endslot



    <?php

    $BackUrl = CustomHelper::BackUrl();

    $routeName = CustomHelper::getAdminRouteName();

    $parent_id = (request()->has('parent_id'))?request()->parent_id:'';



    $path = 'blog_categories/';

    $thumb_path = 'blog_categories/thumb/';



    $storage = Storage::disk('public');



    $title = '';
    $no_link = '';


    if($type == 'blogs'){

        $title = 'Insights Category List';

        $addBtn = 'Add Insights Category';

        $no_link = 'No. of Insights';

    }

    elseif($type == 'news'){

        $title = 'Case Study Category List';

        $addBtn = 'Add Case Study Category';

        $no_link = 'No. of Case Study';

    }

    if(is_numeric($parent_id) && $parent_id > 0){

        $addBtn = 'Add Sub category';

    }

    $CategoryBreadcrumb = '';

    if(is_numeric($parent_id) && $parent_id > 0){
        $CategoryBreadcrumb = CustomHelper::CategoryBreadcrumb($parentCategory, 'admin/blogs_categories?type='.$type, 'Blog Categories');
    }

    if(!empty($CategoryBreadcrumb)){

        echo '<p>'.$CategoryBreadcrumb.'</p>';

    }

    $old_name = app('request')->input('name');
    $old_status = app('request')->input('status');
    $old_featured = app('request')->input('featured');
    $old_from = app('request')->input('from');
    $old_to = app('request')->input('to');
    $old_category_id = app('request')->input('category_id');
    ?>

    

    <div class="row">

        <div class="col-md-12">

			<div class="titlehead">

			<h1 class="pull-left">{{$title}} ({{ $categories->count() }})</h1>

           

          

            <a href="{{ route($routeName.'.blogs_categories.add', ['type'=>$type,'parent_id'=>$parent_id,'back_url'=>$BackUrl]) }}" class="btn btn-sm btn-success pull-right"><i class="fa fa-plus"></i> <?php echo $addBtn;?></a> 

			</div>

		</div>

   </div>



    <div class="row">



        <div class="col-md-12">

            <div class="row">

            <div class="col-md-12">
                <div class="bgcolor">

                    <div class="table-responsive">

                        <form class="form-inline" method="GET">
                            
                            <input type="hidden" name="type" value="{{$type}}">
                            <div class="col-md-3">
                                <label>Name:</label><br/>
                                <input type="text" name="name" class="form-control admin_input1" value="{{$old_name}}">
                            </div>

                             <div class="col-md-2">
                                <label>Status:</label><br/>
                                <select name="status" class="form-control admin_input1">
                                    <option value="">--Select--</option>
                                    <option value="1" {{ ($old_status == '1')?'selected':'' }}>Active</option>
                                    <option value="0" {{ ($old_status == '0')?'selected':'' }}>Inactive</option>
                                </select>
                            </div>

                            <div class="col-md-2">
                                <label>From Date:</label><br/>
                                <input type="text" name="from" class="form-control admin_input1 to_date" value="{{$old_from}}" autocomplete="off" >
                            </div>

                            <div class="col-md-2">
                                <label>To Date:</label><br/>
                                <input type="text" name="to" class="form-control admin_input1 from_date" value="{{$old_to}}" autocomplete="off" >
                            </div>

                            <div class="col-md-6">
                                <button type="submit" class="btn btn-success btn1search">Search</button>

                                <a href="{{url($routeName.'/blogs_categories?type='.$type)}}" class="btn resetbtn btn-primary btn1search" >Reset</a>
                            </div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>



            @include('snippets.errors')

            @include('snippets.flash')



        <?php



        if(!empty($categories) && $categories->count() > 0){

            ?>

            <div class="table-responsive">           



                <table class="table table-striped table-bordered table-hover">

                    <tr>

                        <th>Name</th>

                        <th>{{$no_link}} </th>

                        <th>Status</th>

                        <th>Created</th>

                        <th>Action</th>

                    </tr>

                    <?php

                    $storage = Storage::disk('public');

                    foreach ($categories as $category){



                    $created_at = CustomHelper::DateFormat($category->created_at, 'd M Y');

                    $name = $category->name;

                    $child_url = 'javascript:void(0)';
                    if(!empty($category->children) && $category->children->count() > 0 ){

                        $child_url = 'blogs_categories?&parent_id='.$category->id.'&type='.$type.'&back_url='.rawurlencode($BackUrl);
                        $name = '<i class="fa fa-list"></i> <strong>'.$category->name.'</strong>';
                    }

                    $categoryBlog = isset($category->Blogs)?$category->Blogs:'';
                    //pr($categoryBlog->toArray());
                        ?>

                        <tr class="row_{{$category->id}}">

                            <td><a href="{{$child_url}}"><?php echo $name; ?></a></td>

                            <td><a href="{{url($routeName.'/blogs?type=blogs&category_id='.$category->id)}}">{{$category->Blogs()->count()}}</a></td>

                            <td>{{ CustomHelper::getStatusStr($category->status) }}</td>

                            <td>{{$created_at}}</td>



                            <td>

                                <?php

                                if($countParents < 2){
                                    ?>
                                    <a href="{{ route($routeName.'.blogs_categories.add', ['type'=>$type,'parent_id'=>$category->id, 'back_url'=>$BackUrl]) }}" title="Add Child Category" ><i class="fas fa-plus"></i></a>

                                    &nbsp;
                                    <?php
                                }

                                ?>

                                <a href="{{route($routeName.'.blogs_categories.edit', ['type'=>$type,'type'=>$type,'id'=>$category->id,'back_url'=>$BackUrl])}}" title="Edit"><i class="fas fa-edit"></i></a>

                                &nbsp;



                                <?php 

                                if ($category->blogs() && $category->blogs()->count() == 0) { ?>

                                <a href="javascript:void(0)" class="sbmtDelForm" title="Delete" ><i class="fas fa-trash-alt"></i></a>



                                <form method="POST" action="{{ route($routeName.'.blogs_categories.delete', $category->id) }}" accept-charset="UTF-8" role="form" onsubmit="return confirm('Do you really want to remove this category?');" class="delForm">

                                    {{ csrf_field() }}

                                </form>

                                <?php } ?>

                            </td>

                        </tr>

                        <?php

                    }

                    ?>

                </table>

            </div>

            {{ $categories->appends(request()->query())->links() }}

            <?php

                    }

                    else{

                ?>

                <div class="alert alert-warning">There are no Records at the present.</div>

                <?php

            }

            ?>

            </div>



        </div>

@endcomponent


<link rel="stylesheet" href="{{ url('public/css/jquery-ui.css') }}">
<script type="text/javascript" src="{{ url('public/js/jquery-ui.js') }}"></script>


<script>

    $(document).on("click", ".sbmtDelForm", function(e){

        e.preventDefault();

        $(this).siblings("form.delForm").submit(); 

    });

    $( function() {
        $( ".to_date, .from_date" ).datepicker({
            'dateFormat':'dd/mm/yy',
            changeMonth: true,
            changeYear: true,
        });
    });

</script>