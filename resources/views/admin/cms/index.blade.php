@component('admin.layouts.main')

    @slot('title')
        Admin - CMS Pages - {{ config('app.name') }}
    @endslot

    <?php
    $BackUrl=CustomHelper::BackUrl();
    $routeName = CustomHelper::getAdminRouteName();
    $parent_id = (request()->has('parent_id'))?request()->parent_id:'';

    $old_name = app('request')->input('name');
    $old_status = app('request')->input('status');
    $old_featured = app('request')->input('featured');
    $old_from = app('request')->input('from');
    $old_to = app('request')->input('to');
    ?>
    <div class="row">

        <div class="col-md-12">

            <h1>Static Pages ({{ count($pages) }})

                 <a href="{{ route('admin.cms.add', ['parent_id'=>$parent_id, 'back_url'=>$BackUrl]) }}" class="btn btn-sm btn-success pull-right"><i class="fa fa-plus"></i> Add Page</a>
            </h1>

            @include('snippets.errors')
            @include('snippets.flash')

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

                                <a href="{{url($routeName.'/cms')}}" class="btn resetbtn btn-primary btn1search" >Reset</a>
                            </div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>

            <?php
            if(!empty($pages) && count($pages) > 0){
                ?>

                <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover">

                        <tr>
                            <th width="35%" class="text-center">Title</th>
                            <th width="30%" class="text-center">Slug</th>
                            <th width="10%" class="text-center">Status</th>
                            <th width="10%" class="text-center">Date Created</th>
                            <th width="15%" class="text-center">Action</th>
                        </tr>

                        
                        <?php
                        foreach($pages as $page){

                            $child_url = 'javascript:void(0)';
                            $title = $page->title;

                            if(!empty($page->children) && $page->children->count() > 0 ){
                                $child_url = 'cms?parent_id='.$page->id.'&back_url='.rawurlencode($BackUrl);
                                $title = '<i class="fa fa-list"></i> <strong>'.$page->title.'</strong>';
                            }
                        ?>
                            <tr>
                                <td> <a href="{{$child_url}}"> <?php echo $title; ?></a>
                                   </td>
                                <td><?php echo $page->slug; ?></td>
                                <td>{{ CustomHelper::getStatusStr($page->status) }}</td>
                                <td>{{ CustomHelper::DateFormat($page->created_at, 'd/m/Y') }}</td>


                                <td>

                                    <a href="{{ route($routeName.'.cms.add', ['parent_id'=>$page->id, 'back_url'=>$BackUrl]) }}" title="Add Child Page" ><i class="fas fa-plus"></i></a>
                                    &nbsp;

                                    <a href="{{ route($routeName.'.cms.edit', $page->id) }}" class=""><i class="fas fa-edit"></i> </a>

                                    <?php /*
                                    if($page->children->count() == 0){
                                        ?>
                                        <a href="javascript:void(0)" class="sbmtDelForm" title="Delete" ><i class="fas fa-trash-alt"></i></a>

                                        <form style="display: inline-block;" method="POST" action="{{ route($routeName.'.cms.delete', [$page['id'], 'back_url'=>$BackUrl]) }}" accept-charset="UTF-8" role="form" onsubmit="return confirm('Do you really want to remove this?');" class="delForm">
                                            {{ csrf_field() }}
                                        </form>
                                        <?php
                                    }
                                    else{
                                        ?>
                                        <a href="javascript:void(0)" title="Delete" onclick="alert('please remove Child associated with this Parent first!')" ><i class="fas fa-trash-alt"></i></a>
                                        <?php
                                    } */?>

                                    <?php /*
                                    <a  href="{{ route($routeName.'.images.upload',['tid'=>$page->id,'tbl'=>'cms_pages']) }}" target="_blank"><i class="fa fa-image" title="Add Images"></i></a>

                                    <a  href="{{ route($routeName.'.videos.add',['vid'=>$page->id,'tbl'=>'cms_pages']) }}" target="_blank"><i class="fa fa-video" title="Add Images"></i></a> */ ?>
                                </td>

                            </tr>
                        <?php
                        }
                        ?>
                    </table>
                </div>
           <?php
       }else{
        ?>
        <div class="alert alert-warning">There are no CMS Pages at the present.</div>
        <?php

       }
           ?>

        </div>

    </div>

    @slot('bottomBlock')

    <link rel="stylesheet" href="{{ url('public/css/jquery-ui.css') }}">
    <script type="text/javascript" src="{{ url('public/js/jquery-ui.js') }}"></script>

    <script type="text/javascript">
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
    
    @endslot

@endcomponent