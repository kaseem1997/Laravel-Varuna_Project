@component('admin.layouts.main')

    @slot('title')
        Admin - Manage Map Location - {{ config('app.name') }}
    @endslot

    <?php 
    $back_url=CustomHelper::BackUrl(); 
    $routeName = CustomHelper::getAdminRouteName();

    $old_state = app('request')->input('state');
    $old_status = app('request')->input('status');
    $old_email = app('request')->input('email');
    $old_from = app('request')->input('from');
    $old_to = app('request')->input('to');
    $old_category_id = app('request')->input('category_id');
    ?>
    <div class="row">

        <div class="col-md-12">

            <h2>Manage Map Location
                <a href="{{ route($routeName.'.map-locations.add').'?back_url='.$back_url }}" class="btn btn-sm btn-success pull-right"><i class="fa fa-plus"></i> Add Map Loation</a>
            </h2>

            <div class="row">

            <div class="col-md-12">
                <div class="bgcolor">

                    <div class="table-responsive">

                        <form class="form-inline" method="GET">
                            
                            
                            <div class="col-md-3">
                                <label>State:</label><br/>
                                <input type="text" name="state" class="form-control admin_input1" value="{{$old_state}}">
                            </div>

                            <div class="col-md-3">
                                <label>Email:</label><br/>
                                <input type="text" name="email" class="form-control admin_input1" value="{{$old_email}}">
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

                                <a href="{{url($routeName.'/map-locations')}}" class="btn resetbtn btn-primary btn1search" >Reset</a>
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
            if(!empty($locations) && count($locations) > 0){
                ?>

                <div class="table-responsive">

                    <table class="table table-striped">
                        <tr>
                            <th>Longitude</th>
                            <th>Latitude</th>
                            <th>Region</th>
                            <th>State</th>
                            <th>Location</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                        <?php
                        foreach($locations as $location){
                            $brief = CustomHelper::wordsLimit($location->brief,35);
                            ?>
                        
                            <tr>
                                <td>{{ $location->longitude }}</td>
                                <td>{{ $location->latitude }}</td>
                                <td><?php echo $location->region; ?></td>
                                <td><?php echo $location->state; ?></td>
                                <td><?php echo $location->location; ?></td>
                                <td>{{ $location->email }}</td>
                                <td>{{ $location->phone }}</td>
                                <td>{{ CustomHelper::getStatusStr($location->status) }}</td>

                                <td>
                                    <a href="{{ route($routeName.'.map-locations.edit', $location->id.'?back_url='.$back_url) }}" title="Edit Blog"><i class="fas fa-edit"></i></a>

                                    <a href="javascript:void(0)" class="sbmtDelForm"  id="{{$location->id}}" title="Delete Blog"><i class="fas fa-trash-alt"></i></i></a>
                                
                                    <form method="POST" action="{{ route($routeName.'.map-locations.delete', $location->id) }}" accept-charset="UTF-8" role="form" onsubmit="return confirm('Do you really want to remove this Case Study?');" id="delete-form-{{$location->id}}">
                                        {{ csrf_field() }}
                                        {{ method_field('POST') }}
                                        <input type="hidden" name="banner_id" value="<?php echo $location->id; ?>">

                                    </form>
                                </td>
                            </tr>
                            <?php
                        }
                        ?>
                    </table>
                </div>
                 {{ $locations->appends(request()->query())->links() }}

            
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
                url: "{{ route($routeName.'.map-locations.ajax_change_featured') }}",
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