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
  .warehousing-services h3 {
    color: #1a2c5e;
    font-size: 25px;
    line-height: 30px;
    padding-bottom: 25px;
    font-weight: 400;
    position: relative;
    margin-bottom: 20px;
}
.warehousing-services {padding-bottom: 50px}
.warehousing-services h3::after {
    position: absolute;
    content: '';
    background: #ffc112;
    width: 50px;
    height: 4px;
    bottom: 0px;
    left: 0px;
}
.warehousing-services p {
    color: #454649;
    font-size: 18px;
    line-height: 28px;
    font-weight: 400;
}
</style>

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

$cmsInsights = (isset($cms->cmsInsights))?$cms->cmsInsights:'';

$cmsInsightsArr = [];

/*if(!empty($cmsInsights)){
    $cmsInsightsArr = $cmsInsights->pluck('id')->toArray();
}*/

//pr($cmsInsightsArr);
$params = [];
$params['featured'] = 1;
$params['limit'] = 3;
$params['orderBy'] = ['created_at'=>'desc'];

$cmsInsightsArr = 12;

$insights = CustomHelper::getCMSInsight($id='',$cmsInsightsArr, $type='blogs', $limit='', $params);

//pr($insights->toArray());
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
              <p class="whiteText"><?php echo $cms->brief; ?></p>
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
    <a href="{{url('services')}}">Services</a>
    </li>
     <li>
     Warehousing Management Services
    </li>
  </ul>
</div>
</div>

<section class="yelloLine wow fadeInDown"></section>

<?php echo $cms->content; ?>


<?php


if(!empty($insights) && count($insights)){

?>
<section class="exploreInsights wow fadeInDown">
      <div class="container">
        <div class="common_top_upper">EXPLORE INSIGHTS</div>
        <div class="row">

          <?php
          $blog_image = '';
          foreach ($insights as $insight) {

            $blog_images = (isset($insight->Images))?$insight->Images:'';

            if(!empty($blog_images) && count($blog_images)){
              foreach($blog_images as $bimg){
                if(!empty($bimg->image) && $storage->exists('blogs/'.$bimg->image)){
                  $blog_image = asset('storage/blogs/'.$bimg->image);
                  break;
                }
              }
            }
          ?>

          <div class="col-sm-4 col-md-4 col-lg4 col-xl-4 col-12">
              <div class="coreValgaryBox">
                <img src="{{$blog_image}}" alt="" class="img-fluid">
              </div>
              <div class="exploreCont">
                <a href="{{url('insights/'.$insight->slug)}}">
                  <h6>{{$insight->title}}</h6>
                </a>
                <p><?php echo $insight->brief; ?></p>
              </div>
            </div>
          <?php } ?>
        </div>
      </div>
</section>
<?php } ?>


<section class="commanContactSection wow fadeInDown">
  <div class="container-fluid comContactForm">
    <h3 class="h3ComHed">Let us know how we can help</h3>
    @include('components.includes._capability_form')
  </div>
</section>

<div class="container">
<div class="whreHouseBorder1">&nbsp;</div>
</div>

<section class="knowMoreAbout wow fadeInDown">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-sm-8 col-lg-8 col-xl-8 col-md-8 col-12">
              <p>Wish to learn more about how we help our clients experience excellence?</p>
            </div>
            <div class="col-sm-4 col-lg-4 col-xl-4 col-md-4 col-12">
              <div class="knowMore">
                  <a href="#">Know more</a>
              </div>
            </div>
          </div>
        </div>
      </section>

      <div class="container">
<div class="whreHouseBorder1">&nbsp;</div>
</div>

      <section class="warehousing-services">
           <div class="container">
               <h3>Warehousing Services Available In</h3>
               <p>Mumbai | Navi Mumbai | Thane | Delhi | Noida | Greater Noida | Bangalore | Hyderabad | Gurgaon | Raipur</p>
            </div>
         </section>



@slot('footerBlock')

@endslot





@endcomponent

