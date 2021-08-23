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
if(!empty($careerData) && count($careerData) > 0){
?>
<section class="listingSect wow fadeInDown careers_single_page">
<div class="container">


<div class="row justify-content-center">

<?php
//foreach ($careerData as $career){

  //pr($career);
?>
<div class="col-sm-8 col-lg-8 col-xl-8 col-md-8 col-12 left_side_area">
<div class="left_side_area_wrap">
<div class="listName">
<div>{{$careerData->title}} / {{$careerData->department}}</div>
</div>
<section class="yelloLine wow fadeInDown"></section> 
<div class="content">
  <p>The company was collaborating with a number of local, unorganised service providers for its primary
transportation needs, giving rise to multiple challenges:</p>
<p>As the company was working with unorganized transport services providers, its transit times
remained significantly high, adding to the overall inventory carrying costs. Moreover, these
associations combined with minimal technological intervention and unskilled team members riddled
the company’s logistics operations with sub-optimum practices and intensive manual work. This led
to a steep rise in the error margin, eventually costing the company a significant amount of working
capital.</p>
<div class="head_lg"> Required Qualification</div>
 <ul class="list_style">
   <li>
     Haec para/doca illi, nos admirabilia dicamus
   </li>
   <li> Omnibus enim artibus volumus attributam esse eam, quae communis appellatur prudentia,
    quam omnes, qui cuique artificio praesunt, debent habere</li>
    <li> Quis animo aequo videt eum, quem inpure ac flagitiose putet vivere?</li>
     <li>Haec para/doca illi, nos admirabilia dicamus.</li>
     <li>Omnibus enim artibus volumus attributam esse eam, quae communis appellatur prudentia,
    quam omnes, qui cuique artificio praesunt, debent habere.</li>
   <li> Quis animo aequo videt eum, quem inpure ac flagitiose putet vivere?</li>
 </ul>

</div>
</div>
</div>


<div class="col-sm-4 col-lg-4 col-xl-4 col-md-4 col-12">
  <div class="right_sidebar_wrap">
<div class="listAresDetils">
  <div class="listName">
<div class="">JOB DETAILS</div>
</div>
<span>{{$careerData->location}}</span></div>
<div style="clear: both;"></div>
<ul class="job_list">
  <li>
    <strong>Company</strong> <span>{{$careerData->company}}</span>
  </li>
  <li>
    <strong>Experience</strong> <span>{{$careerData->department}}</span>
  </li>
  <li>
    <strong>Department</strong> <span>{{$careerData->department}}</span>
  </li>
  <li>
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
  </li>
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

