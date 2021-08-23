	@component('admin.layouts.main')



    @slot('title')

        Admin - Manage Products - {{ config('app.name') }}

    @endslot



    <?php

    $BackUrl = CustomHelper::BackUrl();

    $routeName = CustomHelper::getAdminRouteName();



    $path = 'blog_categories/';

    $thumb_path = 'blog_categories/thumb/';



    $storage = Storage::disk('public');



    $title = '';



        $title = 'Career Category List';

        $addBtn = 'Add Career Category';

    $old_name = app('request')->input('name');
    $old_status = app('request')->input('status');
    $old_featured = app('request')->input('featured');
    $old_from = app('request')->input('from');
    $old_to = app('request')->input('to');
    ?>

    

    <div class="row">

        <div class="col-md-12">

			<div class="titlehead">

			<h1 class="pull-left">{{$title}} ({{ $categories->count() }})</h1>

           

          

            <a href="{{ route($routeName.'.career_categories.add', ['back_url'=>$BackUrl]) }}" class="btn btn-sm btn-success pull-right"><i class="fa fa-plus"></i> <?php echo $addBtn;?></a> 

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

                                <a href="{{url($routeName.'/career_categories')}}" class="btn resetbtn btn-primary btn1search" >Reset</a>
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

                        <th>No. of Career</th>

                        <th>Status</th>

                        <th>Created</th>

                        <th>Action</th>

                    </tr>

                    <?php

                    $storage = Storage::disk('public');

                    foreach ($categories as $category){



                    $created_at = CustomHelper::DateFormat($category->created_at, 'd M Y');

                        ?>

                        <tr class="row_{{$category->id}}">

                            <td>{{$category->name}}</td>

                            <td>{{$category->careers()->count()}}</td>

                            <td>{{ CustomHelper::getStatusStr($category->status) }}</td>

                            <td>{{$created_at}}</td>



                            <td>

                                <a href="{{route($routeName.'.career_categories.edit', ['id'=>$category->id,'back_url'=>$BackUrl])}}" title="Edit"><i class="fas fa-edit"></i></a>

                                &nbsp;



                                <?php 

                                if ($category->careers() && $category->careers()->count() == 0) { ?>

                                <a href="javascript:void(0)" class="sbmtDelForm" title="Delete" ><i class="fas fa-trash-alt"></i></a>



                                <form method="POST" action="{{ route($routeName.'.career_categories.delete', $category->id) }}" accept-charset="UTF-8" role="form" onsubmit="return confirm('Do you really want to remove this category?');" class="delForm">

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