@component('themes.theme-1.layouts.main')

@slot('title')
    {{$meta_title or ''}}
@endslot

@slot('meta_description')
    {{$meta_description or ''}}
@endslot

@slot('headerBlock')

<!-- Event snippet for Contact conversion page -->
<script>
 gtag('event', 'conversion', {'send_to': 'AW-655721561/12F1CIPZw-wBENmI1rgC'});
</script>

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



@slot('footerBlock')

@endslot

@endcomponent