@component('admin.layouts.main')

    @slot('title')
        Admin - {{ $page_heading }} - {{ config('app.name') }}
    @endslot

    @slot('headerBlock')

    <link rel="stylesheet" type="text/css" href="{{ url('public/css/jquery-ui.css') }}"/ >

    <link rel="stylesheet" type="text/css" href="{{ url('public/datetimepicker/jquery-ui-timepicker-addon.css') }}"/ >

    <link href="{{url('public')}}/bootstrap-multiselect/bootstrap-multiselect.css" rel="stylesheet" type="text/css" />

    @endslot


    <?php

    //pr($blog->toArray());
    $routeName = CustomHelper::getAdminRouteName();

    $id = (isset($career->id))?$career->id:'';
    $category_id = (isset($career->category_id))?$career->category_id:'';
    $title = (isset($career->title))?$career->title:'';
    $location = (isset($career->location))?$career->location:'';
    $brief = (isset($career->brief))?$career->brief:'';
    $description = (isset($career->description))?$career->description:'';
    $qualification = (isset($career->qualification))?$career->qualification:'';
    $no_of_vacancy = (isset($career->no_of_vacancy))?$career->no_of_vacancy:'';
    $aggregate_marks = (isset($career->aggregate_marks))?$career->aggregate_marks:'';
    $max_age = (isset($career->max_age))?$career->max_age:'';
    $age_on_date = (isset($career->age_on_date))?$career->age_on_date:'';
    $experience = (isset($career->experience))?$career->experience:'';
    $experience_on_date = (isset($career->experience_on_date))?$career->experience_on_date:'';
    $applicable_category = (isset($career->applicable_category))?$career->applicable_category:'';
    $opening_date = (isset($career->opening_date))?$career->opening_date:'';
    $closing_date = (isset($career->closing_date))?$career->closing_date:'';

    $sort_order = (isset($career->sort_order))?$career->sort_order:0;
    $meta_title = (isset($career->meta_title))?$career->meta_title:'';
    $meta_description = (isset($career->meta_description))?$career->meta_description:'';
    $featured = (isset($career->featured))?$career->featured:0;
    $status = (isset($career->status))?$career->status:1;
    
    $age_on_date = CustomHelper::DateFormat($age_on_date, 'd/m/Y');
    $opening_date = CustomHelper::DateFormat($opening_date, 'd/m/Y');
    $closing_date = CustomHelper::DateFormat($closing_date, 'd/m/Y');
    $experience_on_date = CustomHelper::DateFormat($experience_on_date, 'd/m/Y');

    $category_arr = config('custom.category_arr');
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
                        <div class="form-group{{ $errors->has('title') ? ' has-error' : '' }}">
                            <label for="link_name" class="control-label required">Title:</label>

                            <input type="text" id="title" class="form-control" name="title" value="{{ old('title', $title) }}"/>

                            @include('snippets.errors_first', ['param' => 'title'])
                        </div>
                    </div>


                    <div class="col-md-6">
                        <div class="form-group{{ $errors->has('category_id') ? ' has-error' : '' }}">
                            <label for="status" class="control-label required">Category:</label>

                            <select name="category_id" class="form-control" required>
                                <?php
                                if(!empty($categories) && count($categories) > 0){
                                    foreach($categories as $cat_key=>$cat_val){
                                        //prd($pa_val);
                                        ?>
                                        <option @if($cat_val['id']==$category_id) selected @endif value="{{ $cat_val['id'] }}"><?php echo $cat_val['name']; ?></option>
                                        <?php
                                    }
                                    
                                }
                                ?>
                            </select>

                            @include('snippets.errors_first', ['param' => 'category_id'])
                        </div>
                    </div>
                
                    <div class="col-md-6">
                        <div class="form-group{{ $errors->has('location') ? ' has-error' : '' }}">
                            <label for="link_name" class="control-label">Location:</label>

                            <input type="text" id="location" class="form-control" name="location" value="{{ old('location', $location) }}"  />

                            @include('snippets.errors_first', ['param' => 'location'])
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="form-group{{ $errors->has('qualification') ? ' has-error' : '' }}">
                            <label for="link_name" class="control-label required">Qualification:</label>

                            <textarea id="qualification" class="form-control " name="qualification">{{ old('qualification', $qualification) }}</textarea>

                            @include('snippets.errors_first', ['param' => 'qualification'])
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group{{ $errors->has('no_of_vacancy') ? ' has-error' : '' }}">
                        <label for="no_of_vacancy" class="control-label required">Number of Vacancy:</label>
                            <input type="text" id="no_of_vacancy" class="form-control" name="no_of_vacancy" value="{{ old('no_of_vacancy', $no_of_vacancy) }}"  />

                            @include('snippets.errors_first', ['param' => 'no_of_vacancy'])
                        </div>
                    </div>

                     <div class="col-md-6">
                        <div class="form-group{{ $errors->has('aggregate_marks') ? ' has-error' : '' }}">
                        <label for="aggregate_marks" class="control-label required">Aggregate % of Marks:</label>
                            <input type="text" id="aggregate_marks" class="form-control" name="aggregate_marks" value="{{ old('aggregate_marks', $aggregate_marks) }}"  />

                            @include('snippets.errors_first', ['param' => 'aggregate_marks'])
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group{{ $errors->has('max_age') ? ' has-error' : '' }}">
                        <label for="max_age" class="control-label required">Max Age:</label>
                            <input type="text" id="max_age" class="form-control" name="max_age" value="{{ old('max_age', $max_age) }}"  />

                            @include('snippets.errors_first', ['param' => 'max_age'])
                        </div>
                    </div>

                     <div class="col-md-6">
                        <div class="form-group{{ $errors->has('age_on_date') ? ' has-error' : '' }}">
                        <label for="age_on_date" class="control-label ">Age on date:</label>
                            <input type="text" id="age_on_date" class="form-control date" name="age_on_date" value="{{ old('age_on_date', $age_on_date) }}"  />

                            @include('snippets.errors_first', ['param' => 'age_on_date'])
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group{{ $errors->has('experience') ? ' has-error' : '' }}">
                        <label for="experience" class="control-label">Experience (In years):</label>
                            <input type="text" id="experience" class="form-control" name="experience" value="{{ old('experience', $experience) }}"  />

                            @include('snippets.errors_first', ['param' => 'experience'])
                        </div>
                    </div>


                    <div class="col-md-6">
                        <div class="form-group{{ $errors->has('experience_on_date') ? ' has-error' : '' }}">
                        <label for="experience_on_date" class="control-label date">Experience on date:</label>
                            <input type="text" id="experience_on_date" class="form-control date" name="experience_on_date" value="{{ old('experience_on_date', $experience_on_date) }}"  />

                            @include('snippets.errors_first', ['param' => 'experience_on_date'])
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group{{ $errors->has('applicable_category') ? ' has-error' : '' }}">
                        <label for="applicable_category" class="control-label">Applicable category:</label>
                            <!-- <input type="text" id="applicable_category" class="form-control" name="applicable_category" value="{{ old('applicable_category', $applicable_category) }}"  /> -->
                            <?php
                            //pr($category_arr);
                            ?>
                            <select class="form-control applicable_category" name="applicable_category[]" multiple="multiple">
                                <?php

                                if(!empty($category_arr)){

                                    $applicable_arr = explode(',', $applicable_category);

                                    foreach ($category_arr as $key=>$category){

                                        $selected = '';
                                        if(in_array($key, $applicable_arr)){
                                            $selected = 'selected';
                                        }

                                ?>
                                <option value="{{$key}}" {{$selected}}>{{$category}}</option>
                                <?php
                                }
                                }
                                ?>
                            </select>

                            @include('snippets.errors_first', ['param' => 'applicable_category'])
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group{{ $errors->has('opening_date') ? ' has-error' : '' }}">
                        <label for="opening_date" class="control-label required">Opening Date:</label>
                            <input type="text" id="opening_date" class="form-control date" name="opening_date" value="{{ old('opening_date', $opening_date) }}"  />

                            @include('snippets.errors_first', ['param' => 'opening_date'])
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group{{ $errors->has('closing_date') ? ' has-error' : '' }}">
                        <label for="closing_date" class="control-label required">Closing Date:</label>
                            <input type="text" id="closing_date" class="form-control date" name="closing_date" value="{{ old('closing_date', $closing_date) }}"  />

                            @include('snippets.errors_first', ['param' => 'closing_date'])
                        </div>
                    </div>

                     <div class="col-md-12">
                        <div class="form-group{{ $errors->has('brief') ? ' has-error' : '' }}">
                            <label for="brief" class="control-label">Brief:</label>

                            <textarea id="brief" class="form-control " name="brief">{{ old('brief', $brief) }}</textarea>

                            @include('snippets.errors_first', ['param' => 'brief'])
                        </div>
                    </div>
                
                    <div class="col-md-12">
                        <div class="form-group{{ $errors->has('description') ? ' has-error' : '' }}">
                            <label for="description" class="control-label">Description:</label>

                            <textarea id="description" class="form-control " name="description">{{ old('description', $description) }}</textarea>

                            @include('snippets.errors_first', ['param' => 'description'])
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group{{ $errors->has('sort_order') ? ' has-error' : '' }}">
                            <label for="sort_order" class="control-label">Sort Order:</label>

                            <input type="text" id="sort_order" class="form-control" name="sort_order" value="{{ old('sort_order', $sort_order) }}"  />

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

                    <div class="col-md-6">
                        <div class="form-group{{ $errors->has('meta_description') ? ' has-error' : '' }}">
                            <label for="meta_description" class="control-label">Mata Description:</label>

                            <input type="text" id="meta_description" class="form-control" name="meta_description" value="{{ old('meta_description', $meta_description) }}"  />

                            @include('snippets.errors_first', ['param' => 'meta_description'])
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

<script type="text/javascript" src="{{ url('public/js/jquery-ui.js') }}"></script>
<script type="text/javascript" src="{{ url('public/datetimepicker/jquery-ui-timepicker-addon.js') }}"></script>

<script type="text/javascript" src="{{ url('public/bootstrap-multiselect/bootstrap-multiselect.js') }}"></script>

<script type="text/javascript" src="{{ url('public/js/ckeditor/ckeditor.js') }}"></script>


<script type="text/javascript">

$(document).ready(function(){

//var editor = CKEDITOR.replace('description');
//var editor = CKEDITOR.replace('brief');

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


$('.applicable_category').multiselect({
   /* enableFiltering: true,
    numberDisplayed: 4,
    enableCaseInsensitiveFiltering: true,
    maxHeight: 200*/
});

});
 </script>


@endslot

@endcomponent