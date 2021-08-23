    @component('admin.layouts.main')

    @slot('title')

        Admin - Manage Enquiries - {{ config('app.name') }}
    @endslot

    <?php
    $BackUrl = CustomHelper::BackUrl();

    $old_name = app('request')->input('name');
    $old_email = app('request')->input('email');
    $old_phone = app('request')->input('phone');
    $old_status = app('request')->input('status');
    $old_from = app('request')->input('from');
    $old_to = app('request')->input('to');
    ?>

    <div class="row">

        <div class="col-md-12">

            <div class="titlehead">

            <h1 class="pull-left">Enquiries ({{ $enquiries->count() }})</h1>

            <button type="button" onclick="exportList('export_xls')" class="btn btn-sm btn-success pull-right" ><i class="fa fa-table"></i> Export XLS</button>

                <form name="exportForm" method="" action="" >
                    <input type="hidden" name="export_xls" value="">
                    <?php
                    if(count(request()->input())){
                        foreach(request()->input() as $input_name=>$input_val){
                            ?>
                            <input type="hidden" name="{{$input_name}}" value="{{$input_val}}">
                            <?php
                        }
                    }
                    ?>
                </form>

            </div>

        </div>

   </div>

   <div class="row">

            <div class="col-md-12">
                <div class="bgcolor">

                    <div class="table-responsive">

                        <form class="form-inline" method="GET">
                            
                            
                            <div class="col-md-3">
                                <label>Name:</label><br/>
                                <input type="text" name="name" class="form-control admin_input1" value="{{$old_name}}">
                            </div>

                            <div class="col-md-3">
                                <label>Email:</label><br/>
                                <input type="text" name="email" class="form-control admin_input1" value="{{$old_email}}">
                            </div>

                            <div class="col-md-3">
                                <label>Phone:</label><br/>
                                <input type="text" name="phone" class="form-control admin_input1" value="{{$old_phone}}">
                            </div>

                            <div class="col-md-3">
                                <label>From Date:</label><br/>
                                <input type="text" name="from" class="form-control admin_input1 to_date" value="{{$old_from}}" autocomplete="off" >
                            </div>

                            <div class="col-md-3">
                                <label>To Date:</label><br/>
                                <input type="text" name="to" class="form-control admin_input1 from_date" value="{{$old_to}}" autocomplete="off" >
                            </div>

                            <div class="col-md-6">
                                <button type="submit" class="btn btn-success btn1search">Search</button>

                                <a href="{{url('admin/enquiries')}}" class="btn resetbtn btn-primary btn1search" >Reset</a>
                            </div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>





    <div class="row">



        <div class="col-md-12">



            @include('snippets.errors')

            @include('snippets.flash')



        <?php



        if(!empty($enquiries) && $enquiries->count() > 0){



            //$staticFormElements  = CustomHelper::getStaticFormElements();

            ?>

            <div class="table-responsive">



            {{ $enquiries->appends(request()->query())->links() }}



                <table class="table table-striped table-bordered table-hover">

                    <tr>

                        <th class="">Name</th>

                        <th class="">Email</th>
                        <th class="">Phone</th>

                        <th class="">Action</th>

                    </tr>

                    <?php

                    

                    foreach ($enquiries as $enquiry){



                        /*$formData = $enquiry->form;

                        $formElemetsData = $formData->formElements;



                        $data = $enquiry->data;

                        $unserializeData = unserialize($data);



                        $formElemsts = $formElemetsData;

                        if(!empty($staticFormElements)){

                            $formElemsts = $formElemetsData->merge($staticFormElements);

                        }



                        $formElemstsArr = [];*/



                        //prd($formElemsts->toArray());

                        //prd($unserializeData);



                        /*if(!empty($formElemsts)){

                           $formElemstsArr = $formElemsts->keyBy('id');

                        }*/



                        /*foreach($unserializeData as $inpKey=>$inpVal){

                            $eleId = str_replace('input','',$inpKey);

                            if(is_numeric($eleId) && $eleId > 0){

                                $elementIdsArr[] = $eleId;

                            }

                        }*/

                        //pr($formElemetsData->toArray());



                     ?>

                        <tr>

                            <td>{{$enquiry->first_name}} {{$enquiry->last_name}}</td>

                            <td>
                                {{$enquiry->email}}
                            </td>

                            <td>
                                {{$enquiry->phone}}
                            </td>

                            

                            <td>

                                 <a href="{{ route('admin.enquiries.view', $enquiry->id.'?back_url='.$BackUrl) }}"><i class="fa fa-search-plus"></i></a> |



                                <a href="javascript:void(0)" class="sbmtDelForm"  id="{{$enquiry->id}}"><i class="fas fa-trash-alt"></i></i></a> </br></br>



                                <?php

                                $pdf_path = 'careers/';

                                $storage = Storage::disk('public');



                                if(!empty($enquiry->document)){

                                    if($storage->exists($pdf_path.$enquiry->document)){

                                        ?>

                                        <a target="_blank" href="{{url('public/storage/'.$pdf_path.$enquiry->document)}}">

                                            <img src="{{ url('public/images/pdf.jpg') }}" style="width:30px; height:30px;"><br>

                                        </a>

                                        <?php }

                                    }

                                ?>

                                <a>

                                </a>



                                <form method="POST" action="{{ route('admin.enquiries.delete', $enquiry->id) }}" accept-charset="UTF-8" role="form" onsubmit="return confirm('Do you really want to remove this Enquiry?');" id="delete-form-{{$enquiry->id}}">

                                    {{ csrf_field() }}

                                    {{ method_field('POST') }}

                                    <input type="hidden" name="enquiry_id" value="<?php echo $enquiry->id; ?>">



                                </form>

                        

                            </td>

                        </tr>

                        <?php

                    }

                    ?>

                </table>

            </div>

            {{ $enquiries->appends(request()->query())->links() }}

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

            function exportList(exportName){

                if(exportName ){
                    if( exportName == 'export_xls'){
                        var exportForm = $("form[name='exportForm']");

                        exportForm.find("input[name='export_xls']").val('1');
                        exportForm.find("input[name='export_inventory']").val('');
                        document.exportForm.submit();
                    }
                }
            }


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



