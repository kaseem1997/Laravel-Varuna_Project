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
$storage = Storage::disk('public');

$image = '';
if(!empty($cms->image) && $storage->exists('cms_pages/thumb/'.$cms->image)){
  $image = url('public/storage/cms_pages/thumb/'.$cms->image);
}

$banner_image = asset('public/assets/themes/theme-1/images/default-img.png');
if(!empty($cms->banner_image) && $storage->exists('cms_pages/'.$cms->banner_image)){
  $banner_image = url('public/storage/cms_pages/'.$cms->banner_image);
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

<?php echo $cms->content; ?>


<section class="commanContactSection wow fadeInDown">
  <div class="container-fluid comContactForm">
    <h3 class="h3ComHed">Let us know how we can help</h3>
    @include('components.includes._capability_form')
  </div>
</section>

<section class="footer_cta">
  <div class="container">
    <div class="footer_cta_wrap">
      <div class="row justify-content-center">
        <div class="col-sm-8 col-lg-8 col-xl-8 col-md-8 col-12">
          <p>Learn more about our services to clients in the<br />
          Electrical Industry</p>
        </div>

        <div class="col-sm-4 col-lg-4 col-xl-4 col-md-4 col-12">
          <div class="knowMore"><a href="{{url('industry-electrical')}}">Know More</a></div>
        </div>
      </div>
    </div>
  </div>
</section>



@slot('footerBlock')

@endslot





@endcomponent

