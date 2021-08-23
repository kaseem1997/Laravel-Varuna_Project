@component('themes.theme-1.layouts.main')

@slot('title')
    {{$meta_title or ''}}
@endslot

@slot('meta_description')
    {{$meta_description or ''}}
@endslot

@slot('headerBlock')

<link rel="stylesheet" type="text/css" href="{{url('')}}/css/owl.carousel.min.css" />

@endslot

<!-- to attach class on body tag of page -->
@slot('bodyClass')
  index-page
@endslot

<?php
$storage = Storage::disk('public');

$image = asset('assets/themes/theme-1/images/blog-img5.png');
if(!empty($case_study->image) && $storage->exists('employee_stories/'.$case_study->image)){
	$image = url('storage/employee_stories/'.$case_study->image);
}

$detail_words = CustomHelper::get_words_count($case_study->content);

$total_decimal = $detail_words/200;
$reads_count = round($total_decimal);

if($reads_count == 0){
   $reads_count = "few seconds";
}else if($reads_count == 1){
   $reads_count = $reads_count.' Minute';
}else{
   $reads_count = $reads_count.' Minutes';
}
?>

<section class="bannerSec wow fadeInDown">
        <div class="row">
          <div class="col-12">
            <div class="owl-carousel halfBannerSlider">
              <div class="item">
                <div class="halfbannerSlWrp bannerSlWrp">
                  <div class="bannerLeft">
                    <div class="empStroBnnerCont container-fluid paddingleftRight">
                        <h6 class="darkyellow"><?php echo $case_study->title; ?>, <small>{{$case_study->designation}}</small></h6>

                        <!-- <p class="">Nurturing leaders and  <span class="bannerNewLine"></span> fostering a sense  <span class="bannerNewLine"></span> of community </p> -->
                        <p><?php echo $case_study->subtitle; ?></p>
                    </div>
                  </div>
                  <div class="bannerRight">
                    <img class="img-fluid" src="{{$image}}" alt="<?php echo $case_study->title; ?>">
                  </div>
                </div>
              </div>
            </div>
          </div>
      </div>
    </section>


    <section class="yelloLine wow fadeInDown"></section>

    <section class="emploeStroriSectmain emploeStrorih1 emploeStroriCont bgcolorFFF8E7 wow fadeInDown">
      <div class="container">
        <h1><?php echo $case_study->heading1; ?></h1>
       
          <?php echo $case_study->brief; ?>
        
      </div>
    </section>

    <?php echo $case_study->description; ?>

  <div class="container">
      <div class="empStroiBorder"></div>
  </div>

  <section class="knowMoreAbout wow fadeInDown">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-sm-8 col-lg-8 col-xl-8 col-md-8 col-12">
          <p>Wish to experience what unlimited growth facilitated by an exceptional team & great leadership feels like?</p>
        </div>
        <div class="col-sm-4 col-lg-4 col-xl-4 col-md-4 col-12">
          <div class="knowMore">
              <a href="{{url('careers')}}">Explore Careers</a>
          </div>
        </div>
      </div>
    </div>
  </section>

@slot('footerBlock')

<script type="text/javascript" src="{{url('')}}/js/owl.carousel.min.js"></script>

@endslot

@endcomponent