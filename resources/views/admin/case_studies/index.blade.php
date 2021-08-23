@component('admin.layouts.main')

    @slot('title')
        Admin - Manage Case Studies - {{ config('app.name') }}
    @endslot

    <?php 
    $back_url=CustomHelper::BackUrl(); 
    $routeName = CustomHelper::getAdminRouteName();

    $old_title = app('request')->input('title');
    $old_status = app('request')->input('status');
    $old_featured = app('request')->input('featured');
    $old_from = app('request')->input('from');
    $old_to = app('request')->input('to');
    $old_category_id = app('request')->input('category_id');
    ?>
    <div class="row">

        <div class="col-md-12">

            <h2>Manage Case Studies
                <a href="{{ route($routeName.'.case-studies.add').'?back_url='.$back_url }}" class="btn btn-sm btn-success pull-right"><i class="fa fa-plus"></i> Add Case Study</a>
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

                            <?php /*
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
                            </div> */?>

                             <div class="col-md-2">
                                <label>Status:</label><br/>
                                <select name="status" class="form-control admin_input1">
                                    <option value="">--Select--</option>
                                    <option value="1" {{ ($old_status == '1')?'selected':'' }}>Active</option>
                                    <option value="0" {{ ($old_status == '0')?'selected':'' }}>Inactive</option>
                                </select>
                            </div>

                            <div class="col-md-2">
                                <label>Featured:</label><br/>
                                <select name="featured" class="form-control admin_input1">
                                    <option value="">--Select--</option>
                                    <option value="1" {{ ($old_featured == '1')?'selected':'' }}>Active</option>
                                    <option value="0" {{ ($old_featured == '0')?'selected':'' }}>Inactive</option>
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

                                <a href="{{url($routeName.'/case-studies')}}" class="btn resetbtn btn-primary btn1search" >Reset</a>
                            </div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>

            @include('snippets.errors')
            @include('snippets.flash')

            <div class="ajax_msg"></div>

            <?php
            // if(!empty($case_studies) && count($case_studies) > 0){
                if(count($case_studies)>0){
                ?>

                <div class="table-responsive">

                    <table class="table table-striped">
                        <tr>
                            <th>Title</th>
                            <th>Description</th>
                            <th>Featured</th>
                            <th>Sort Order</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                        <?php
                        foreach($case_studies as $case_study){
                            $brief = CustomHelper::wordsLimit($case_study->brief,35);
                            ?>
                        
                            <tr>
                                <td><?php echo $case_study->title; ?></td>
                                <td>{{ strip_tags($brief) }}</td>
                                <td>
                                    <input type="checkbox" name="featured" class="is_featured" data-id="{{$case_study->id}}" value="1" <?php if($case_study->featured == 1){ echo 'checked';} ?>>
                                </td>
                                <td>{{ $case_study->sort_order }}</td>
                                <td>{{ CustomHelper::getStatusStr($case_study->status) }}</td>

                                <td>
                                    <a href="{{ route($routeName.'.case-studies.edit', $case_study->id.'?back_url='.$back_url) }}" title="Edit Blog"><i class="fas fa-edit"></i></a>

                                    <a href="javascript:void(0)" class="sbmtDelForm"  id="{{$case_study->id}}" title="Delete Blog"><i class="fas fa-trash-alt"></i></i></a>
                                
                                    <form method="POST" action="{{ route($routeName.'.case-studies.delete', $case_study->id) }}" accept-charset="UTF-8" role="form" onsubmit="return confirm('Do you really want to remove this Case Study?');" id="delete-form-{{$case_study->id}}">
                                        {{ csrf_field() }}
                                        {{ method_field('POST') }}
                                        <input type="hidden" name="banner_id" value="<?php echo $case_study->id; ?>">

                                    </form>
                                </td>
                            </tr>
                            <?php
                        }
                        ?>
                    </table>
                </div>
                 {{ $case_studies->appends(request()->query())->links() }}

            
            <?php
        }
        else{
            ?>
            <div class="alert alert-warning">No Record found.</div>
            <?php
        }
            ?>

        </div>

    </div>

@endcomponent

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

    $(".is_featured").click(function(){

        var current_sel = $(this);

         if(this.checked) {
            featured_true = 1;
         }
         else{
            featured_true = 0;
         }
        //alert(featured_true); return false;

        var id = $(this).attr('data-id');

        conf = confirm("Are you sure to Featured this Case Study?");

        if(conf){

            var _token = '{{ csrf_token() }}';

            $.ajax({
                url: "{{ route($routeName.'.case-studies.ajax_change_featured') }}",
                type: "POST",
                data: {id:id,featured_true:featured_true},
                dataType:"JSON",
                headers:{'X-CSRF-TOKEN': _token},
                cache: false,
                beforeSend:function(){
                   $(".ajax_msg").html("");
                },
                success: function(resp){
                    if(resp.success){
                        $(".ajax_msg").html(resp.msg);
                        //current_sel.parent('.image_box').remove();
                    }
                    else{
                        $(".ajax_msg").html(resp.msg);
                    }
                    
                }
            });
        }

    });
</script>