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
if(!empty($cms->image) && $storage->exists('cms_pages/thumb/'.$cms->image)){
  $image = url('public/storage/cms_pages/thumb/'.$cms->image);
}

$banner_image = asset('public/assets/themes/theme-1/images/default-img.png');
if(!empty($cms->banner_image) && $storage->exists('cms_pages/'.$cms->banner_image)){
  $banner_image = url('public/storage/cms_pages/'.$cms->banner_image);
}

//pr($careerData);
?>

<section class="bannerSec wow fadeInDown">
        <div class="row">
          <div class="col-12">
            <div class="owl-carousel bannerSlider">
              <div class="item">
                <div class="bannerSlWrp">
                  <img class="img-fluid" src="{{$banner_image}}" alt="">
                  <div class="bannerContent container-fluid paddingleftRight">
                    <h6 class="yelloHedaing"><?php echo $cms->heading; ?></h6>
                    <p class="whiteText"><?php echo $cms->brief; ?></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
      </div>
    </section>

<section class="yelloLine wow fadeInDown"></section>

<?php
echo $cms->content;

//prd($careerData);
?>

<?php
if(!empty($careerData)){

  
?>
<section class="listingSect wow fadeInDown pt-4 pb-5">
<div class="container">
<h4 class="font-Size16 h4comman">EXPLORE JOB OPENINGS</h4>

<div class="row justify-content-center pt-4">

<?php
$i = 0;
foreach ($careerData as $career){
  $i++;

  if(!empty($career)){
  ?>
  <div class="col-sm-8 col-lg-8 col-xl-8 col-md-8 col-12">
    <div class="listName">
      <div>{{$career->title}}</div>
      <a href="{{url('career-detail/'.$career->job_id)}}"><strong>view job details</strong></a></div>
    </div>

    <div class="col-sm-4 col-lg-4 col-xl-4 col-md-4 col-12">
      <div class="listAresDetils">
        <div>{{$career->department}}</div>
        <span>{{$career->location_city}}, {{$career->location_country}}</span></div>
      </div>

      <div class="borderBttomLanding">&nbsp;</div>

      <?php
      if($i == 3){
          break;
        }
      } }
      ?>

<div class="col-sm-8 col-lg-8 col-xl-8 col-md-8 col-12">
<div class="viewAll"><a href="{{url('careers')}}">View All</a></div>
</div>

<div class="col-sm-4 col-lg-4 col-xl-4 col-md-4 col-12">&nbsp;</div>
</div>
<!-- row --></div>
<!-- container -->
</section>
<?php } ?>





<?php
if($segment1 == 'capability-fleet'){
?>
<section class="commanContactSection wow fadeInDown">
  <div class="container-fluid comContactForm">
    <h3 class="h3ComHed">Let us know how we can help</h3>
    @include('components.includes._capability_form')
  </div>
</section>

<section class="knowMoreAbout wow fadeInDown">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-sm-8 col-lg-8 col-xl-8 col-md-8 col-12">
        <p>Reach anywhere in India through the safe, efficient & dependable support of Varuna Logistics.</p>
      </div>
      <div class="col-sm-4 col-lg-4 col-xl-4 col-md-4 col-12">
        <div class="knowMore">
          <a href="{{url('service-logistics')}}">Know More</a>
        </div>
      </div>
    </div>
  </div>
</section>
<?php } ?>

@slot('footerBlock')

@endslot





@endcomponent

