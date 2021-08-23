@component('admin.layouts.main')

    @slot('title')
        Admin - {{ $page_heading }} - {{ config('app.name') }}
    @endslot

    @slot('headerBlock')

    <link rel="stylesheet" type="text/css" href="{{ url('css/jquery-ui.css') }}"/ >

    <link rel="stylesheet" type="text/css" href="{{ url('datetimepicker/jquery-ui-timepicker-addon.css') }}"/ >

    @endslot


    <?php

    //pr($location->toArray());
    $routeName = CustomHelper::getAdminRouteName();

    $id = (isset($location->id))?$location->id:'';
    $region = (isset($location->region))?$location->region:'';
    $state = (isset($location->state))?$location->state:'';
    $zone = (isset($location->zone))?$location->zone:'';
    $branch_name = (isset($location->branch_name))?$location->branch_name:'';
    $office_type = (isset($location->office_type))?$location->office_type:'';
    $map_location = (isset($location->location))?$location->location:'';
    $phone = (isset($location->phone))?$location->phone:'';
    $email = (isset($location->email))?$location->email:'';
    $longitude = (isset($location->longitude))?$location->longitude:'';
    $latitude = (isset($location->latitude))?$location->latitude:'';
    $address = (isset($location->address))?$location->address:'';
    $status = (isset($location->status))?$location->status:1;


    //pr($location->toArray());
    //echo $region;
    //echo $location->email;
    //echo $email;
    ?>

    <div class="row">

        <div class="col-md-12 bgcolor">

            <h2>{{ $page_heading }} <?php if(request()->has('back_url')){ $back_url= request('back_url');  ?>
            
        <a href="{{ url($back_url)}}" class="btn btn-success btn-sm" style='float: right;'>Back</a><?php } ?>
    </h2>

            <!-- @include('snippets.errors') -->
            @include('snippets.flash')

            <div class="ajax_msg"></div>

            <form method="POST" action="" accept-charset="UTF-8" role="form" enctype="multipart/form-data">
                {{ csrf_field() }}

                <div class="row">

                    <div class="col-md-6">
                        <div class="form-group{{ $errors->has('longitude') ? ' has-error' : '' }}">
                            <label for="longitude" class="control-label required">Longitude:</label>

                            <input type="text" id="longitude" class="form-control" name="longitude" value="{{ old('longitude', $longitude) }}"  />

                            @include('snippets.errors_first', ['param' => 'longitude'])
                        </div>
                    </div>


                    <div class="col-md-6">
                        <div class="form-group{{ $errors->has('latitude') ? ' has-error' : '' }}">
                            <label for="latitude" class="control-label required">Latitude:</label>

                            <input type="text" id="latitude" class="form-control" name="latitude" value="{{ old('latitude', $latitude) }}"  />

                            @include('snippets.errors_first', ['param' => 'latitude'])
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group{{ $errors->has('region') ? ' has-error' : '' }}">
                            <label for="region" class="control-label ">Region:</label>

                            <input type="text" id="region" class="form-control" name="region" value="{{ old('region', $region) }}" />

                            @include('snippets.errors_first', ['param' => 'region'])
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group{{ $errors->has('state') ? ' has-error' : '' }}">
                            <label for="state" class="control-label">State:</label>

                            <input type="text" id="state" class="form-control" name="state" value="{{ old('state', $state) }}" />

                            @include('snippets.errors_first', ['param' => 'state'])
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group{{ $errors->has('zone') ? ' has-error' : '' }}">
                            <label for="zone" class="control-label">Zone:</label>

                            <input type="text" id="zone" class="form-control" name="zone" value="{{ old('zone', $zone) }}" />

                            @include('snippets.errors_first', ['param' => 'zone'])
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group{{ $errors->has('branch_name') ? ' has-error' : '' }}">
                            <label for="branch_name" class="control-label">Branch Name:</label>

                            <input type="text" id="branch_name" class="form-control" name="branch_name" value="{{ old('branch_name', $branch_name) }}" />

                            @include('snippets.errors_first', ['param' => 'branch_name'])
                        </div>
                    </div>

                    
                    <div class="col-md-6">
                        <div class="form-group{{ $errors->has('location') ? ' has-error' : '' }}">
                            <label for="location" class="control-label">Location:</label>

                            <input type="text" id="location" class="form-control" name="location" value="{{ old('location', $map_location) }}" />

                            @include('snippets.errors_first', ['param' => 'location'])
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group{{ $errors->has('office_type') ? ' has-error' : '' }}">
                            <label for="office_type" class="control-label">Office Type:</label>

                            <input type="text" id="office_type" class="form-control" name="office_type" value="{{ old('office_type', $office_type) }}" />

                            @include('snippets.errors_first', ['param' => 'office_type'])
                        </div>
                    </div>
                
                    <div class="col-md-6">
                        <div class="form-group{{ $errors->has('phone') ? ' has-error' : '' }}">
                            <label for="link_name" class="control-label">Phone:</label>

                            <input type="text" id="phone" class="form-control" name="phone" value="{{ old('phone', $phone) }}"  />

                            @include('snippets.errors_first', ['param' => 'phone'])
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                            <label for="link_name" class="control-label">Email:</label>

                            <input type="text" id="email" class="form-control" name="email" value="{{ old('email', $email) }}"  />

                            @include('snippets.errors_first', ['param' => 'email'])
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="form-group{{ $errors->has('address') ? ' has-error' : '' }}">
                            <label for="link_name" class="control-label">Address:</label>

                            <textarea class="form-control" name="address">{{ old('address', $address) }}</textarea>

                            @include('snippets.errors_first', ['param' => 'address'])
                        </div>
                    </div>

                    

                    

                    <div class="form-group{{ $errors->has('status') ? ' has-error' : '' }} col-md-12">
                            <label class="control-label">Status:</label>
                            &nbsp;&nbsp;
                            Active: <input type="radio" name="status" value="1" <?php echo ($status == '1')?'checked':''; ?> >
                            &nbsp;
                            Inactive: <input type="radio" name="status" value="0" <?php echo ( strlen($status) > 0 && $status == '0')?'checked':''; ?> >

                            @include('snippets.errors_first', ['param' => 'status'])
                        </div>

                            <div class="col-md-12">
                                <div class="form-group">
                                    <p></p>
                                    <input type="hidden" id="id" class="form-control" name="id" value="{{ old('id', $id) }}"  />
                                    <button type="submit" class="btn btn-success" title="Create this new category"><i class="fa fa-save"></i> Submit</button>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>

            </form>
            <div class="clearfix"></div>
        </div>

    </div>




@slot('bottomBlock')

<script type="text/javascript" src="{{ url('js/jquery-ui.js') }}"></script>
<script type="text/javascript" src="{{ url('datetimepicker/jquery-ui-timepicker-addon.js') }}"></script>

<script type="text/javascript" src="{{ url('js/ckeditor/ckeditor.js') }}"></script>

<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>


<script type="text/javascript">

$(document).ready(function(){

    $('.page_id').select2({
    });

    $(".del_image").click(function(){

        var current_sel = $(this);

        var image_id = $(this).attr('data-id');

        conf = confirm("Are you sure to Delete this Image?");

        if(conf){

            var _token = '{{ csrf_token() }}';

            $.ajax({
                url: "{{ route($routeName.'.case-studies.ajax_delete_image') }}",
                type: "POST",
                data: {image_id},
                dataType:"JSON",
                headers:{'X-CSRF-TOKEN': _token},
                cache: false,
                beforeSend:function(){
                   $(".ajax_msg").html("");
                },
                success: function(resp){
                    if(resp.success){
                        $(".ajax_msg").html(resp.msg);
                        current_sel.parent('.image_box').remove();
                    }
                    else{
                        $(".ajax_msg").html(resp.msg);
                    }
                    
                }
            });
        }

    });


});
    
$(document).ready(function(){

//var editor = CKEDITOR.replace('brief');
//var editor = CKEDITOR.replace('description');



var editor = CKEDITOR.replace('description', {
    filebrowserImageUploadUrl: "<?php echo url($routeName.'/ck_upload?type=cms_pages&csrf_token='.csrf_token());?>"
});

$('.date').datepicker({
    dateFormat: "dd/mm/yy",
    changeMonth: true,
    changeYear: true,
    yearRange:"1950:+0"
});

});
 </script>


@endslot

@endcomponent