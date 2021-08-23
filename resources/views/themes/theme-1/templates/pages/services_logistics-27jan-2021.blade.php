
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

$cmsInsightsArr = 10;

$insights = CustomHelper::getCMSInsight($id='',$cmsInsightsArr, $type='blogs', $limit='', $params);

$params1 = [];
$params1['featured'] = 1;
$params1['limit'] = 1;
$params1['orderBy'] = ['created_at'=>'desc'];
$singleInsight = CustomHelper::getCasestudy($id=0, $parent_id=0, $limit='', $params1);



//pr($singleInsight->toArray());
?>

<section class="bannerSec wow fadeInDown">
  <div class="row">
    <div class="col-12">
      <div class="owl-carousel bannerSlider">
        <div class="item">
          <div class="bannerSlWrp">
            <img class="img-fluid" alt="Logistics Management Solution" src="{{$banner_image}}" alt="">
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
     Logistics Management Services
    </li>
  </ul>
</div>
</div>

<section class="yelloLine wow fadeInDown"></section>

<?php echo $cms->content; ?>

<?php
if(!empty($singleInsight) && count($singleInsight) > 0){
?>
<section class="caseStudies wow fadeInDown"><img alt=" " class="img-fluid" src="/assets/themes/theme-1/images/logisticsbanner2.jpg" />
  <div class="caseStudiesImgText case__stud_width">
    <h6 class="colorffc908">CASE STUDY</h6>
    <span><?php echo $singleInsight[0]->title; ?></span>

    <div class="caseStudiesBtn"><a href="{{url('case-studies/'.$singleInsight[0]->slug)}}">LEARN More</a></div>
  </div>
</section>
<?php } ?>


<?php
if(!empty($insights) && count($insights)){

?>
<section class="exploreInsights wow fadeInDown">
      <div class="container">
        <h4 class="h4comman">EXPLORE INSIGHTS</h4>
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
                <img src="{{$blog_image}}" alt="{{$insight->title}}" class="img-fluid">
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

<section class="knowMoreAbout wow fadeInDown">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-sm-8 col-lg-8 col-xl-8 col-md-8 col-12">
        <p>Wish to learn more about how we help our clients experience excellence?</p>
      </div>
      <div class="col-sm-4 col-lg-4 col-xl-4 col-md-4 col-12">
        <div class="knowMore">
          <a href="{{url('capabilities')}}">View Capabilities</a>
        </div>
      </div>
    </div>
  </div>
</section>



@slot('footerBlock')

@endslot





@endcomponent

