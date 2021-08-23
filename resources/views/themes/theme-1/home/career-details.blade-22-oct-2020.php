@component('themes.theme-1.layouts.main')

@slot('title')
    {{$meta_title or ''}}
@endslot

@slot('meta_description')
    {{$meta_description or ''}}
@endslot

@slot('headerBlock')

<link rel="stylesheet" type="text/css" href="{{asset('public/assets/themes/theme-1/css/owl.carousel.min.css')}}" />

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

$banner_image = asset('public/assets/themes/theme-1/images/default-img.png');


//prd($careerData);
?>

<section class="bannerSec wow fadeInDown">
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
    </section>

<section class="yelloLine wow fadeInDown"></section>

<?php
//echo $cms->content;

//pr($careerData);
?>

<?php
if(!empty($careerData) && count($careerData) > 0){
?>
<section class="listingSect wow fadeInDown pt-4 pb-5">
<div class="container">
<h4 class="font-Size16 h4comman">EXPLORE JOB OPENINGS</h4>

<div class="row justify-content-center pt-4">

<?php
//foreach ($careerData as $career){

  //pr($career);
?>
<div class="col-sm-8 col-lg-8 col-xl-8 col-md-8 col-12">
<div class="listName">
<div>{{$careerData->title}} / {{$careerData->department}}</div>
</div>
</div>

<div class="col-sm-4 col-lg-4 col-xl-4 col-md-4 col-12">
<div class="listAresDetils">
<div>Operations, Graduates</div>
<span>{{$careerData->location}}</span></div>
</div>

<div class="col-sm-8 col-lg-8 col-xl-8 col-md-8 col-12">
  <div class="listName">
    <strong>Company</strong> - {{$careerData->company}}
    <strong>Experience</strong> - {{$careerData->experience}}
    <strong>Department</strong> - {{$careerData->department}}
    <strong>Employee Type</strong> - {{$careerData->employee_type}}
    <strong>Hiring Lead Email</strong> - {{$careerData->hiring_lead_email}}
    <strong>Salary Min</strong> - {{$careerData->salary_min}} {{$careerData->salary_currency}}
    <strong>Salary Max</strong> - {{$careerData->salary_max}} {{$careerData->salary_currency}}
  </div>
</div>

<a href="https://integrations1.darwinbox.in/ms/candidate/careers/{{$job_id}}?apply=1" target="_blank">Apply Now</a>

<div class="borderBttomLanding">&nbsp;</div>
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

<div class="col-sm-4 col-lg-4 col-xl-4 col-md-4 col-12">&nbsp;</div>
</div>
<!-- row --></div>
<!-- container -->
</section>
<?php } ?>


@slot('footerBlock')

@endslot





@endcomponent

