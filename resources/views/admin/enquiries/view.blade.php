	@component('admin.layouts.main')



    @slot('title')

        Admin - Manage Enquiries - {{ config('app.name') }}

    @endslot



    <?php

    $BackUrl = CustomHelper::BackUrl();

    ?>



   <?php //prd($enquiry); ?>



  <a href="{{ route('admin.enquiries.index')}}" class="btn btn-primary" >Back</a>



    <div class="row">



        <div class="col-md-12">



            @include('snippets.errors')

            @include('snippets.flash')



        <?php



        if(!empty($enquiry) && $enquiry->count() > 0){

            ?>

            <div class="table-responsive">



                <table class="table table-striped table-bordered table-hover">

                    <tr>

                        <th width="30%" class="">First Name</th>

                        <td>{{ $enquiry->first_name }}</td>

                       

                    </tr>

                    <tr>

                        <th class="">Last Name</th>

                         <td>{{ $enquiry->last_name }}</td>

                    </tr>



                    <tr>

                        <th class="">Email</th>

                         <td>{{ $enquiry->email }}</td>

                    </tr>



                    <tr>

                        <th class="">Phone</th>

                         <td>{{ $enquiry->phone }}</td>

                    </tr>

                    <?php /*
                     <tr>

                        <th class="">Zip</th>

                         <td>{{ $enquiry->zip }}</td>

                    </tr> */?>

                    <tr>

                        <th class="">Company</th>

                         <td>{{ $enquiry->company }}</td>

                    </tr>

                    <tr>

                        <th class="">Designation</th>

                         <td>{{ $enquiry->title }}</td>

                    </tr>

                    <tr>

                        <th class="">Annual Sales</th>

                         <td>{{ $enquiry->annual_sales }}</td>

                    </tr>



                    <tr>

                        <th class="">Comment</th>

                         <td>{{ $enquiry->comment }}</td>

                    </tr>



                   <!--  <tr>

                        <th class="">Phone</th>

                         <td>{{ $enquiry->phone }}</td>

                    </tr>



                    <tr>

                        <th class="">Company</th>

                         <td>{{ $enquiry->company }}</td>

                    </tr>



                    <tr>

                        <th class="">Position</th>

                         <td>{{ $enquiry->company }}</td>

                    </tr> -->



                    <tr>

                        <th class="">Added Date</th>

                         <td>{{ CustomHelper::DateFormat($enquiry->created_at, $toFormat='d-m-Y h:i:A', $fromFormat='') }}</td>

                    </tr>



                </table>

            </div>

           

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



