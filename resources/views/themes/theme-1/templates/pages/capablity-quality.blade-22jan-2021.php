@component('themes.theme-1.layouts.main')

@slot('title')
    {{$meta_title or ''}}
@endslot

@slot('meta_description')
    {{$meta_description or ''}}
@endslot

@slot('headerBlock')

<link rel="stylesheet" type="text/css" href="{{asset('assets/themes/theme-1/css/owl.carousel.min.css')}}" />

@endslot

<!-- to attach class on body tag of page -->
@slot('bodyClass')
  
@endslot

<?php
$storage = Storage::disk('public');

$image = '';
if(!empty($cms->image) && $storage->exists('cms_pages/thumb/'.$cms->image)){
  $image = url('storage/cms_pages/thumb/'.$cms->image);
}

$banner_image = asset('assets/themes/theme-1/images/default-img.png');
if(!empty($cms->banner_image) && $storage->exists('cms_pages/'.$cms->banner_image)){
  $banner_image = url('storage/cms_pages/'.$cms->banner_image);
}

?>

<section class="bannerSec wow fadeInDown">
  <div class="row">
    <div class="col-12">
      <div class="owl-carousel bannerSlider">
        <div class="item">
          <div class="bannerSlWrp">
            <img class="img-fluid" src="{{$banner_image}}" alt="">
            <div class="bannerContent container-fluid paddingleftRight">
              <div class="banner_yellow_text"><?php echo $cms->heading; ?></div>
              <p><?php echo $cms->brief; ?></p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<div class="breadcrum">
  <div class="container">
  <ul class="breadcrum_list">
    <li>
      <a href="{{url('/')}}">Home</a>
    </li>
     <li>
    <a href="{{url('capabilities')}}">Capabilities</a>
    </li>
     <li>
    Capability Quality
    </li>
  </ul>
</div>
</div>

<section class="yelloLine wow fadeInDown"></section>
<?php echo $cms->content; ?>



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
        <p>Drive efficiencies throughout your supply chain with the help of our technology-enabled services.</p>
      </div>
      <div class="col-sm-4 col-lg-4 col-xl-4 col-md-4 col-12">
        <div class="knowMore">
          <a href="{{url('services')}}">View Services</a>
        </div>
      </div>
    </div>
  </div>
</section>



@slot('footerBlock')

@endslot





@endcomponent