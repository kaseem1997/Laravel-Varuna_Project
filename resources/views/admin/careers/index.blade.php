@component('admin.layouts.main')

    @slot('title')
        Admin - Manage Blogs - {{ config('app.name') }}
    @endslot

    <?php 
    $back_url = CustomHelper::BackUrl();
    $routeName = CustomHelper::getAdminRouteName();

    $addBtn = 'Add Career';
    $title = 'Manage Career';

    $old_title = app('request')->input('title');
    $old_status = app('request')->input('status');
    $old_featured = app('request')->input('featured');
    $old_from = app('request')->input('from');
    $old_to = app('request')->input('to');
    $old_category_id = app('request')->input('category_id');
    ?>
    <div class="row">

        <div class="col-md-12">

            <h2>{{$title}}
                <a href="{{route($routeName.'.careers.add',['back_url'=>$back_url]) }}" class="btn btn-sm btn-success pull-right"><i class="fa fa-plus"></i> {{$addBtn}}</a>
            
            </h2>

            <div class="row">

            <div class="col-md-12">
                <div class="bgcolor">

                    <div class="table-responsive">

                        <form class="form-inline" method="GET">
                            
                            <div class="col-md-3">
                                <label>Title:</label><br/>
                                <input type="text" name="title" class="form-control admin_input1" value="{{$old_title}}">
                            </div>

                            <div class="col-md-2">
                                <label>Category:</label><br/>
                                <select name="category_id" class="form-control admin_input1">
                                    <option value="">--Select--</option>
                                <?php
                                if(!empty($categories) && count($categories) > 0){

                                    foreach($categories as $cat){

                                        $selected = '';

                                        if( $cat->id == old('category_id', $old_category_id) ){
                                            $selected = 'selected';
                                        }
                                        //pr($category_hierarchy);
                                        ?>
                                        <option value="{{$cat->id}}" {{$selected}} >{{$cat->name}}</option>
                                        <?php
                                    }
                                }
                                ?>
                            </select>
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

                                <a href="{{url($routeName.'/careers')}}" class="btn resetbtn btn-primary btn1search" >Reset</a>
                            </div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>

            @include('snippets.errors')
            @include('snippets.flash')

            <?php
            if(!empty($careers) && count($careers) > 0){
                ?>

                <div class="table-responsive">

                    <table class="table table-striped">
                        <tr>
                            <th>Title</th>
                            <th>Number of Vacancy</th>
                            <th>Category</th>
                            <th>Featured</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                        <?php
                        foreach($careers as $career){
                            $brief = CustomHelper::wordsLimit($career->brief,35);

                            $career_category = $career->Category;

                            $category_name = (isset($career_category->name))?$career_category->name:'';
                            ?>
                        
                            <tr>
                                <td><?php echo $career->title; ?></td>
                                <td>{{ $career->no_of_vacancy }}</td>
                                <td>{{ $category_name }}</td>
                                <td>{{ CustomHelper::getStatusStr($career->featured) }}</td>
                                <td>{{ CustomHelper::getStatusStr($career->status) }}</td>

                                <td>
                                    <a href="{{ route($routeName.'.careers.edit', [$career->id,'back_url'=>$back_url]) }}" title="Edit"><i class="fas fa-edit"></i></a>

                                    <a href="javascript:void(0)" class="sbmtDelForm"  id="{{$career->id}}" title="Delete"><i class="fas fa-trash-alt"></i></i></a>
                                
                                    <form method="POST" action="{{ route($routeName.'.careers.delete', $career->id) }}" accept-charset="UTF-8" role="form" onsubmit="return confirm('Do you really want to remove?');" id="delete-form-{{$career->id}}">
                                        {{ csrf_field() }}
                                        {{ method_field('POST') }}
                                        <input type="hidden" name="id" value="<?php echo $career->id; ?>">
                                    </form>
                                </td>
                            </tr>
                            <?php
                        }
                        ?>
                    </table>
                </div>
                 {{ $careers->appends(request()->query())->links() }}

            
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


@slot('bottomBlock')

<link rel="stylesheet" href="{{ url('public/css/jquery-ui.css') }}">
<script type="text/javascript" src="{{ url('public/js/jquery-ui.js') }}"></script>

<script type="text/javaScript">
    $('.sbmtDelForm').click(function(){
        var id = $(this).attr('id');
        $("#delete-form-"+id).submit();
    });

    $( function() {
        $( ".to_date, .from_date" ).datepicker({
            'dateFormat':'dd/mm/yy',
            changeMonth: true,
            changeYear: true,
        });
    });
</script>

@endslot

@endcomponent