@component('admin.layouts.main')

@slot('title')
Admin - {{$page_heading}} - {{ config('app.name') }}
@endslot

<link href="{{url('public')}}/bootstrap-multiselect/bootstrap-multiselect.css" rel="stylesheet" type="text/css" />

<div class="row">

    <?php
    $back_url = (request()->has('back_url'))?request()->input('back_url'):'';
    if(empty($back_url)){
        $back_url = 'admin/cities';
    }
    
    $name = (isset($city->name))?$city->name:'';
    $country_id = (isset($city->cityState->country_id))?$city->cityState->country_id:99;
    $state_id=(isset($city->state_id))?$city->state_id:'';
    $status = (isset($city->status))?$city->status:1;
    

    //echo $country_id;



    ?>

    <div class="col-md-12">

        <h2>{{$page_heading}}</h2>
        <div class="bgcolor">

            @include('snippets.errors')
            @include('snippets.flash')

            <form method="POST" action="" accept-charset="UTF-8" enctype="multipart/form-data" role="form">
                {{ csrf_field() }}

               

                <div class="row">

                    
                    <div class="col-sm-12 col-md-6">
                        <div class="form-group{{ $errors->has('country') ? ' has-error' : '' }}">
                            <label class="control-label required">Country:</label>
                             
                             <select class="form-control" name="country" id="country">
                             <option value="">Please Select</option>
                              <?php foreach($country as $c) 
                              {  ?>

                              <option <?php if($country_id==$c->id) { echo 'selected';    } ?> value="{{$c->id}}">{{$c->nicename}}</option>



                               <?php  }   ?>

                             

                             </select>
                             @include('snippets.errors_first', ['param' => 'country'])
                        </div>
                    </div>

                    <div class="col-sm-12 col-md-6">
                        <div class="form-group{{ $errors->has('state') ? ' has-error' : '' }}">
                            <label class="control-label required">State:</label>
                             
                             <select class="form-control" name="state" id="state">
                             <option value="">Please Select</option>
                              <?php 

                              if(!empty($state))
                              {

                              foreach($state as $s) 
                              {  ?>

                              <option <?php if($state_id==$s->id) { echo 'selected';    } ?> value="{{$s->id}}">{{$s->name}}</option>



                               <?php  } }  ?>

                             

                             </select>

                              @include('snippets.errors_first', ['param' => 'state'])
                        </div>
                    </div>


                    <div class="col-sm-12 col-md-6">
                        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                            <label class="control-label required">Name:</label>

                            <input type="text" name="name" class="form-control" value="{{ old('name', $name) }}" maxlength="255" />

                            @include('snippets.errors_first', ['param' => 'name'])
                        </div>
                    </div>                   

                    


                       <div class="col-sm-12 col-md-6">
                        <div class="form-group{{ $errors->has('status') ? ' has-error' : '' }}">
                            <label class="control-label">Status:</label>
                            <br>

                            <input class="" type="checkbox" <?php if($status==1) { echo 'checked';  } ?> name="status" id="status" value="1">

                          

                            @include('snippets.errors_first', ['param' => 'status'])
                        </div>
                       </div>             



                    <div class="clearfix"></div>


                </div>

                <br>
                <br>

                    <div class="form-group">
                        <input type="hidden" name="back_url" value="{{ $back_url }}" >
                            <button type="submit" class="btn btn-success" title="Create this new product"><i class="fa fa-save"></i> Submit</button>

                            <a href="{{ url($back_url) }}" class="btn btn-lg btn-primary" title="Click here to cancel">Cancel</a>
                        </div>

            </form>
        </div>

    </div>


</div>




@slot('bottomBlock')




    
@endslot

@endcomponent