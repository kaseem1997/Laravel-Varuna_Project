@component('themes.theme-1.layouts.main')

@slot('title')
    {{$meta_title or ''}}
@endslot

@slot('meta_description')
    {{$meta_description or ''}}
@endslot

@slot('headerBlock')

<link rel="stylesheet" type="text/css" href="{{asset('assets/themes/theme-1/css/owl.carousel.min.css')}}" />

<style type="text/css">
  .listAresDetils {
float: left;
}
</style>

@endslot

<!-- to attach class on body tag of page -->
@slot('bodyClass')
  
@endslot

<?php
$segment1 =  Request::segment(1);

$storage = Storage::disk('public');

$image = '';
//if(!empty($cms->image) && $storage->exists('cms_pages/thumb/'.$cms->image)){
//$image = url('public/storage/cms_pages/thumb/'.$cms->image);
//}

$banner_image = asset('assets/themes/theme-1/images/default-img.png');


//prd($careerData);
?>
<section class="careers_single_border">
  
      <div class="borer_inline"></div>
   
</section>
<!-- <section class="bannerSec wow fadeInDown">
        <div class="row">
          <div class="col-12">
            <div class="owl-carousel bannerSlider">
              <div class="item">
                <div class="bannerSlWrp">
                  <img class="img-fluid" src="{{$banner_image}}" alt="">
                  <div class="bannerContent container-fluid paddingleftRight">
                    <h6 class="yelloHedaing">Varuna Career</h6>
                    <p class="whiteText"></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
      </div>
    </section> -->

<!-- <section class="yelloLine wow fadeInDown"></section> -->

<?php
//echo $cms->content;

//pr($careerData);
?>

<?php
if(!empty($careerData->data) && count($careerData->data) > 0){

  $careerData = $careerData->data;

  $created_at = CustomHelper::DateFormat($careerData->job_created_timestamp, $toFormat='d M, Y', $fromFormat='');

  $description = isset($careerData->job_decription) ? $careerData->job_decription:'';

  $locat_city = isset($careerData->location_city) ? $careerData->location_city:'';

  /*if(!empty($careerData->location_city[0])){
    $location_city = $careerData->location_city[0];
  }
  else{
    $location_city = $careerData->location_city[1];
  }*/
  $cityArr = [];
  $cityNames = '';

  if(!empty($locat_city) && count($locat_city) > 0){
    //pr($locat_city);
    foreach ($locat_city as $city){
      
      if(!empty($city)){
        $cityArr[] = $city;

        if(!empty($cityArr) && count($cityArr) > 0){
          $cityNames = implode(',', $cityArr);
        }
      }

    }
  }

?>
<section class="listingSect wow fadeInDown careers_single_page">
<div class="container">


<div class="row justify-content-center">

<?php
//foreach ($careerData as $career){
//pr($careerData);
?>
<div class="col-sm-8 col-lg-8 col-xl-8 col-md-8 col-12 left_side_area">
<div class="left_side_area_wrap">
<div class="listName">
<div><?php echo $careerData->job_title; ?></div>
</div>
<section class="yelloLine wow fadeInDown"></section>
<div class="content">

  <?php echo html_entity_decode($description); ?>

</div>
</div>
</div>


<div class="col-sm-4 col-lg-4 col-xl-4 col-md-4 col-12">
  <div class="right_sidebar_wrap">
<div class="listAresDetils">
  <div class="listName">
<div class="">JOB DETAILS</div>
</div>
<!-- <span>{{$careerData->designation}}</span></div> -->
<div style="clear: both;"></div>
<ul class="job_list">

  <li>
    <strong>Functional Designation</strong> <span>{{$careerData->designation}}</span>
  </li>

  <li>
    <strong>Department</strong> <span>{{$careerData->department}}</span>
  </li>

  <li>
    <strong>Experience</strong> <span>{{$careerData->experience_from}} - {{$careerData->experience_to}}</span>
  </li>

  <?php /*
  <li>
    <strong>Id</strong> <span>{{$job_id}}</span>
  </li> */?>

  <li>
    <strong>Location</strong> <span>{{$cityNames}}</span>
  </li>

  <li>
    <strong>Created</strong> <span>{{$created_at}}</span>
  </li>
  
  
  <?php /* <li>
    <strong>Employee Type</strong> <span> {{$careerData->employee_type}}</span>
  </li>
  <li>
    <strong>Hiring Lead Email</strong> <span>{{$careerData->hiring_lead_email}}</span>
  </li>
  <li>
    <strong>Salary Min</strong> <span>{{$careerData->salary_min}} {{$careerData->salary_currency}}</span>
  </li>
  <li>
    <strong>Salary Max</strong> <span>{{$careerData->salary_max}} {{$careerData->salary_currency}}</span>
  </li> */?>
</ul>
<a class="btn" href="https://integrations1.darwinbox.in/ms/candidate/careers/{{$job_id}}?apply=1" target="_blank">Apply Now</a>
</div>
</div>






<?php //} ?>



<!-- <div class="col-sm-8 col-lg-8 col-xl-8 col-md-8 col-12">
<div class="listName">
<div>SENIOR ANALYST / GLOBAL OPERATIONS</div>
<a><strong>view job details</strong></a></div>
</div>

<div class="col-sm-4 col-lg-4 col-xl-4 col-md-4 col-12">
<div class="listAresDetils">
<div>Operations, Graduates</div>
<span>New Delhi, India</span></div>
</div>

<div class="borderBttomLanding">&nbsp;</div>

<div class="col-sm-8 col-lg-8 col-xl-8 col-md-8 col-12">
<div class="listName">
<div>SENIOR ANALYST / GLOBAL OPERATIONS</div>
<a><strong>view job details</strong></a></div>
</div>

<div class="col-sm-4 col-lg-4 col-xl-4 col-md-4 col-12">
<div class="listAresDetils">
<div>Operations, Graduates</div>
<span>New Delhi, India</span></div>
</div> -->


</div>
<!-- row --></div>
<!-- container -->
</section>
<?php } ?>


@slot('footerBlock')

@endslot





@endcomponent

