@component('admin.layouts.main')

    @slot('title')
        Admin - {{ $page_heading }} - {{ config('app.name') }}
    @endslot

    @slot('headerBlock')

    <link rel="stylesheet" type="text/css" href="{{ url('css/jquery-ui.css') }}"/ >

    <link rel="stylesheet" type="text/css" href="{{ url('datetimepicker/jquery-ui-timepicker-addon.css') }}"/ >

    @endslot


    <?php

    //pr($blog->toArray());
    $routeName = CustomHelper::getAdminRouteName();

    $id = (isset($case_study->id))?$case_study->id:'';
    $category_id = (isset($case_study->category_id))?$case_study->category_id:'';
    $title = (isset($case_study->title))?$case_study->title:'';
    $slug = (isset($case_study->slug))?$case_study->slug:'';
    $subtitle = (isset($case_study->subtitle))?$case_study->subtitle:'';
    $designation = (isset($case_study->designation))?$case_study->designation:'';
    $heading1 = (isset($case_study->heading1))?$case_study->heading1:'';
    $brief = (isset($case_study->brief))?$case_study->brief:'';
    $description = (isset($case_study->description))?$case_study->description:'';
    $sort_order = (isset($case_study->sort_order))?$case_study->sort_order:0;
    $author_name = (isset($case_study->author_name))?$case_study->author_name:'';
    $meta_title = (isset($case_study->meta_title))?$case_study->meta_title:'';
    $meta_keyword = (isset($case_study->meta_keyword))?$case_study->meta_keyword:'';
    $meta_description = (isset($case_study->meta_description))?$case_study->meta_description:'';
    $featured = (isset($case_study->featured))?$case_study->featured:0;
    $status = (isset($case_study->status))?$case_study->status:1;
    $image = (isset($case_study->image))?$case_study->image:'';

    $pages_id = (isset($case_study->pages_id))?$case_study->pages_id:'';

    if(!empty($pages_id) && count($pages_id) > 0){
        $pages_id = explode(',', $pages_id);
    }

    $storage = Storage::disk('public');

    //pr($storage);

    $path = 'employee_stories/';

    $old_image = 0;

    $image_req = 'required';
    $link_req = '';
    ?>

    <div class="row">

        <div class="col-md-12 bgcolor">

            <h2>{{ $page_heading }} <?php if(request()->has('back_url')){ $back_url= request('back_url');  ?>
            
        <a href="{{ url($back_url)}}" class="btn btn-success btn-sm" style='float: right;'>Back</a><?php } ?>
    </h2>

            @include('snippets.errors')
            @include('snippets.flash')

            <div class="ajax_msg"></div>

            <form method="POST" action="" accept-charset="UTF-8" role="form" enctype="multipart/form-data">
                {{ csrf_field() }}

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group{{ $errors->has('title') ? ' has-error' : '' }}">
                            <label for="link_name" class="control-label required">Title:</label>

                            <input type="text" id="title" class="form-control" name="title" value="{{ old('title', $title) }}" />

                            @include('snippets.errors_first', ['param' => 'title'])
                        </div>
                    </div>

                    <?php
                    if(!empty($slug)){
                    ?>
                    <div class="col-md-6">
                        <div class="form-group{{ $errors->has('slug') ? ' has-error' : '' }}">
                            <label for="link_name" class="control-label">Slug:</label>

                            <input type="text" id="slug" class="form-control" name="slug" value="{{ old('slug', $slug) }}" required  />

                            @include('snippets.errors_first', ['param' => 'slug'])
                        </div>
                    </div>
                    <?php } ?>

                    <div class="col-md-6">
                        <div class="form-group{{ $errors->has('subtitle') ? ' has-error' : '' }}">
                            <label for="link_name" class="control-label">Sub Title:</label>

                            <input type="text" id="subtitle" class="form-control" name="subtitle" value="{{ old('subtitle', $subtitle) }}" />

                            @include('snippets.errors_first', ['param' => 'subtitle'])
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group{{ $errors->has('designation') ? ' has-error' : '' }}">
                            <label for="link_name" class="control-label">Designation:</label>

                            <input type="text" id="designation" class="form-control" name="designation" value="{{ old('designation', $designation) }}" />

                            @include('snippets.errors_first', ['param' => 'designation'])
                        </div>
                    </div>


                    <div class="col-md-6">
                        <div class="form-group{{ $errors->has('heading1') ? ' has-error' : '' }}">
                            <label for="link_name" class="control-label">Heading 1:</label>

                            <input type="text" id="heading1" class="form-control" name="heading1" value="{{ old('heading1', $heading1) }}" />

                            @include('snippets.errors_first', ['param' => 'heading1'])
                        </div>
                    </div>

                    <?php /*
                    <div class="col-md-6">
                        <div class="form-group{{ $errors->has('category_id') ? ' has-error' : '' }}">
                            <label for="link_name" class="control-label">Category:</label>

                            <select name="category_id" class="form-control">
                                <option value="">Select</option>
                                <?php
                                if(!empty($categories) && count($categories) > 0){

                                    foreach($categories as $cat){
                                        
                                        $selected = '';

                                        if( $cat->id == $category_id ){
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


                            @include('snippets.errors_first', ['param' => 'category_id'])
                        </div>
                    </div> 

                    <div class="col-md-6">
                        <div class="form-group{{ $errors->has('pages_id') ? ' has-error' : '' }}">
                        <label for="pages_id" class="control-label">Pages:</label>
                            <select name="pages_id[]" class="form-control page_id" multiple="multiple">
                            <?php
                            if(!empty($cms_pages) && count($cms_pages) > 0){
                                foreach ($cms_pages as $cms){
                                    $selected = '';
                                    
                                    if(!empty($pages_id) && count($pages_id) > 0){
                                        if(in_array($cms->id, $pages_id)){
                                            $selected = 'selected';
                                        }
                                    }
                                    
                            ?>
                              <option value="{{$cms->id}}" {{$selected}}>{{$cms->title}}</option>
                            <?php } } ?>
                          </select>

                            @include('snippets.errors_first', ['param' => 'pages_id'])
                        </div>
                    </div> */?>
                
                
                    <div class="col-md-12">
                        <div class="form-group{{ $errors->has('brief') ? ' has-error' : '' }}">
                            <label for="link_name" class="control-label">Brief:</label>

                            <textarea id="brief" class="form-control " name="brief">{{ old('brief', $brief) }}</textarea>

                            @include('snippets.errors_first', ['param' => 'brief'])
                        </div>
                    </div> 

                    <div class="col-md-12">
                        <div class="form-group{{ $errors->has('description') ? ' has-error' : '' }}">
                            <label for="link_name" class="control-label">Description:</label>

                            <textarea id="description" class="form-control " name="description">{{ old('description', $description) }}</textarea>

                            @include('snippets.errors_first', ['param' => 'description'])
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group{{ $errors->has('sort_order') ? ' has-error' : '' }}">
                            <label for="sort_order" class="control-label">Sort Order:</label>

                            <input type="text" id="sort_order" class="form-control" name="sort_order" value="{{ old('sort_order', $sort_order) }}" />

                            @include('snippets.errors_first', ['param' => 'sort_order'])
                        </div>
                    </div>
                
                    <div class="col-md-6">
                        <div class="form-group{{ $errors->has('meta_title') ? ' has-error' : '' }}">
                            <label for="link_name" class="control-label">Mata Title:</label>

                            <input type="text" id="meta_title" class="form-control" name="meta_title" value="{{ old('meta_title', $meta_title) }}"  />

                            @include('snippets.errors_first', ['param' => 'meta_title'])
                        </div>
                    </div>

                    <?php /*
                    <div class="col-md-6">
                        <div class="form-group{{ $errors->has('meta_keyword') ? ' has-error' : '' }}">
                            <label for="link_name" class="control-label">Mata Keyword:</label>

                            <input type="text" id="meta_keyword" class="form-control" name="meta_keyword" value="{{ old('meta_keyword', $meta_keyword) }}"  />

                            @include('snippets.errors_first', ['param' => 'meta_keyword'])
                        </div>
                    </div> */?>

                    <div class="col-md-6">
                        <div class="form-group{{ $errors->has('meta_description') ? ' has-error' : '' }}">
                            <label for="meta_description" class="control-label">Mata Description:</label>

                            <input type="text" id="meta_description" class="form-control" name="meta_description" value="{{ old('meta_description', $meta_description) }}"  />

                            @include('snippets.errors_first', ['param' => 'meta_description'])
                        </div>
                    </div>
                


                <?php
                $image_required = $image_req;
                if($id > 0){
                    $image_required = '';
                }
                ?>
                    <div class="col-md-6">

                                <div class="form-group{{ $errors->has('image') ? ' has-error' : '' }}">
                                    <label for="sort_order" class="control-label {{ $image_required }}">Image:</label>

                                    <input type="file" id="image" name="image"/>

                                    @include('snippets.errors_first', ['param' => 'image'])
                                </div>
                                <?php
                                if(!empty($image)){
                                    if($storage->exists($path.$image))
                                    {
                                        ?>
                                        <div class="col-md-2 image_box">
                                           <img src="{{ url('storage/'.$path.'thumb/'.$image) }}" style="width: 100px;"><br>
                                           <a href="javascript:void(0)" data-id="{{ $id }}" class="del_image">Delete</a>
                                       </div>
                                       <?php        
                                   }

                                   ?>
                                   <?php
                               }
                               ?>

                           <input type="hidden" name="old_image" value="{{ $old_image }}">
                        
                 </div>

                    <div class="form-group{{ $errors->has('status') ? ' has-error' : '' }} col-md-12">
                            <label class="control-label">Status:</label>
                            &nbsp;&nbsp;
                            Active: <input type="radio" name="status" value="1" <?php echo ($status == '1')?'checked':''; ?> >
                            &nbsp;
                            Inactive: <input type="radio" name="status" value="0" <?php echo ( strlen($status) > 0 && $status == '0')?'checked':''; ?> >

                            @include('snippets.errors_first', ['param' => 'status'])
                        </div>

                        <div class="form-group{{ $errors->has('featured') ? ' has-error' : '' }} col-md-12">
                            <div class="form-group{{ $errors->has('featured') ? ' has-error' : '' }}">
                                <label class="control-label ">Featured:</label>

                                <input type="checkbox" name="featured" value="1" <?php echo ($featured == '1')?'checked':''; ?> />

                                @include('snippets.errors_first', ['param' => 'featured'])
                            </div>
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
                url: "{{ route($routeName.'.empoloyee-stories.ajax_delete_image') }}",
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

var editor = CKEDITOR.replace('brief', {
    filebrowserImageUploadUrl: "<?php echo url($routeName.'/ck_upload?type=cms_pages&csrf_token='.csrf_token());?>"
});

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