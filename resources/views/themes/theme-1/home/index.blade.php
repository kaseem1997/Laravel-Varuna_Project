
<?php
$websiteSettingsNamesArr = ['FOOTER_CONTACT_DETAILS', 'FOOTER_TEXT', 'FOOTER_BOTTOM', 'SITE_ADDRESS', 'SITE_PHONE', 'SITE_EMAIL', 'FACEBOOK', 'TWITTER', 'LINKEDIN', 'INSTAGRAM', 'YOUTUBE', 'PINTEREST', 'FRONTEND_LOGO','HOME_VIDEO','SITE_COPYRIGHT_TEXT','HOME_HEADING_1','HOME_HEADING_2','HOME_HEADING_3','HOME_HEADING_4','META_TITLE','META_DESCRIPTION'];
  $websiteSettingsArr = CustomHelper::websiteSettingsArray($websiteSettingsNamesArr);

$SITE_ADDRESS = (isset($websiteSettingsArr['SITE_ADDRESS']))?$websiteSettingsArr['SITE_ADDRESS']->value:'';
$SITE_PHONE = (isset($websiteSettingsArr['SITE_PHONE']))?$websiteSettingsArr['SITE_PHONE']->value:'';
$SITE_EMAIL = (isset($websiteSettingsArr['SITE_EMAIL']))?$websiteSettingsArr['SITE_EMAIL']->value:'';
$FRONTEND_LOGO = (isset($websiteSettingsArr['FRONTEND_LOGO']))?$websiteSettingsArr['FRONTEND_LOGO']->value:'';

$FACEBOOK = (isset($websiteSettingsArr['FACEBOOK']))?$websiteSettingsArr['FACEBOOK']->value:'';
$TWITTER = (isset($websiteSettingsArr['TWITTER']))?$websiteSettingsArr['TWITTER']->value:'';
$LINKEDIN = (isset($websiteSettingsArr['LINKEDIN']))?$websiteSettingsArr['LINKEDIN']->value:'';
$INSTAGRAM = (isset($websiteSettingsArr['INSTAGRAM']))?$websiteSettingsArr['INSTAGRAM']->value:'';
$PINTEREST = (isset($websiteSettingsArr['PINTEREST']))?$websiteSettingsArr['PINTEREST']->value:'';
$YOUTUBE = (isset($websiteSettingsArr['YOUTUBE']))?$websiteSettingsArr['YOUTUBE']->value:'';

$FOOTER_CONTACT_DETAILS = (isset($websiteSettingsArr['FOOTER_CONTACT_DETAILS']))?$websiteSettingsArr['FOOTER_CONTACT_DETAILS']->value:'';
$FOOTER_TEXT = (isset($websiteSettingsArr['FOOTER_TEXT']))?$websiteSettingsArr['FOOTER_TEXT']->value:'';
$FOOTER_BOTTOM = (isset($websiteSettingsArr['FOOTER_BOTTOM']))?$websiteSettingsArr['FOOTER_BOTTOM']->value:'';
$SITE_COPYRIGHT_TEXT = (isset($websiteSettingsArr['SITE_COPYRIGHT_TEXT']))?$websiteSettingsArr['SITE_COPYRIGHT_TEXT']->value:'';
$HOME_VIDEO = (isset($websiteSettingsArr['HOME_VIDEO']))?$websiteSettingsArr['HOME_VIDEO']->value:'';
$HOME_HEADING_1 = (isset($websiteSettingsArr['HOME_HEADING_1']))?$websiteSettingsArr['HOME_HEADING_1']->value:'';
$HOME_HEADING_2 = (isset($websiteSettingsArr['HOME_HEADING_2']))?$websiteSettingsArr['HOME_HEADING_2']->value:'';
$HOME_HEADING_3 = (isset($websiteSettingsArr['HOME_HEADING_3']))?$websiteSettingsArr['HOME_HEADING_3']->value:'';
$HOME_HEADING_4 = (isset($websiteSettingsArr['HOME_HEADING_4']))?$websiteSettingsArr['HOME_HEADING_4']->value:'';

$meta_title = (isset($websiteSettingsArr['META_TITLE']))?$websiteSettingsArr['META_TITLE']->value:'';
$meta_description = (isset($websiteSettingsArr['META_DESCRIPTION']))?$websiteSettingsArr['META_DESCRIPTION']->value:'';
?>


@component('themes.theme-1.layouts.main-home')

@slot('title')
    {{$meta_title or 'Varuna'}}
@endslot

@slot('meta_description')
    {{$meta_description or ''}}
@endslot



@slot('headerBlock')

@endslot

<!-- to attach class on body tag of page -->
@slot('bodyClass')
  home-page
@endslot

  <?php
  $storage = Storage::disk('public');
  $params = [];
  $home_cms = CustomHelper::getCMSPage('home-page');
  $chairmansCms = CustomHelper::getCMSPage('chairman-s-message');
  $our_projectsCms = CustomHelper::getCmsData($id='13', $parent_id='', $limit='', $params);
  /*$our_projectsCms = CustomHelper::getCMSPage('kandla-gorakhpur-lpg-pipeline');*/
  //pr($aboutCms);
  $homeTitle = (isset($home_cms['title']))?$home_cms['title']:'';
  $homeHeading = (isset($home_cms['heading']))?$home_cms['heading']:'';
  $homeBrief = (isset($home_cms['brief']))?$home_cms['brief']:'';
  $homeImage = (isset($home_cms['image']))?$home_cms['image']:'';
  $homeContent = (isset($home_cms['content']))?$home_cms['content']:'';

  //prd($aboutImage);

$params = [];
$params['featured'] = 1;
$params['limit'] = 3;
$params['orderBy'] = ['created_at'=>'desc'];

$cmsInsightsArr = 2;

$insights = CustomHelper::getCMSInsight($id='',$cmsInsightsArr, $type='blogs', $limit='', $params);
?>

  <?php
  if(!empty($banners) && count($banners) > 0){
    ?>
    <section class="bannerSec wow fadeInDown">
        <div class="row">
          <div class="col-12">
            <div class="owl-carousel bannerSlider">
              

              <?php
              $path = 'banners/';
              foreach($banners as $banner){
                $images = (isset($banner->Images))?$banner->Images:'';
                //prd($images);
                if(!empty($images) && count($images) > 0){
                  foreach($images as $image){
                    if(!empty($image->name) && $storage->exists($path.$image->name)){
                      ?>
                      <div class="item">

                      <div class="bannerSlWrp">
                        <img src="{{url('storage/banners/'.$image->name)}}" alt="{{$banner->title}}">
                        <div class="bannerContent container-fluid paddingleftRight">
                          <h6 class="yelloHedaing"><?php echo $banner->subtitle; ?></h6>
                          <p class="whiteText"><?php echo $banner->brief; ?></p>

                          <div class="home__sliderRedmore">
                              <a href="<?php echo $banner->link; ?>" target="_blank">READ MORE</a>
                          </div>
                        </div>
                      </div>
                    </div>
                      <?php
                    }
                  }
                }
              }
              ?>
            <!-- </div> -->
          </div>
        </div>
      </div>
    </section>
  <?php } ?>

  <section class="yelloLine wow fadeInDown"></section>

  <?php echo $homeContent;?>


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
                <img src="{{$blog_image}}" alt="<?php echo $insight->title; ?>" class="img-fluid">
              </div>
              <div class="exploreCont">
                <a href="{{url('insights/'.$insight->slug)}}">
                  <h6><?php echo $insight->title; ?></h6>
                </a>
                <p><?php echo $insight->brief; ?></p>
              </div>
            </div>
          <?php } ?>
        </div>
        <div class="homeknowMore__yellow" style="text-align: center;"><a href="{{url('insights')}}">View All</a></div>
      </div>
</section>
<?php } ?>


<!--section class="knowMoreAbout wow fadeInDown">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-sm-8 col-lg-8 col-xl-8 col-md-8 col-12">
        <p>Wish to learn more about how we help our clients experience excellence?</p>
      </div>
      <div class="col-sm-4 col-lg-4 col-xl-4 col-md-4 col-12">
        <div class="knowMore">
          <a href="#">View Capabilities</a>
        </div>
      </div>
    </div>
  </div>
</section-->

@slot('footerBlock')
<script type="text/javascript" src="{{asset('assets/themes/theme-1/js/jquery.lazy.min.js')}}"></script>

<script type="text/javascript" src="{{asset('assets/themes/theme-1/js/owl.carousel.min.js')}}"></script>
<script type="text/javascript">
  $(function() {
    $('.lazy').Lazy();
});
</script>


<script>
  // $( ".dgsgs" ).click(function(e) {
  //   e.stopPropagation();
  //   if($(window).width() < 1023)
  //   {
  //   $(this).next().fadeToggle();
  //   }
  // });

  $('.banner').owlCarousel({
    loop:true,
    autoplay:true,
    margin:20,
    items:1,
    dots:true,
    nav:false,
    autoHeight:true,
  });

  $('.feature-product').owlCarousel({
    loop:false,
    margin:20,
    items:3,
    dots:false,
    nav:true,
    responsive:{
      0:{
        items:1,
      },
      600:{
        items:2,
      },
      1000:{
        items:4
      }
    }
  });
  $('.feature-blog').owlCarousel({
    loop:false,
    margin:20,
    items:3,
    dots:false,
    nav:true,
    responsive:{
      0:{
        items:1,
      },
      600:{
        items:2,
      },
      1000:{
        items:3
      }
    }
  });
</script>
<script>
$(function ()
{
var sliderOptions = '';
if($(window).width() >= 320){
  sliderOptions = {
    linear: true,
    step: 1,
    delay: 0,
    speed: 30
    }
} else {
  sliderOptions = {
    linear: true,
    step: 1,
    direction: 'h',
      onMouseOverPause: false,
    delay: 0,
    speed: 30
    }
}
$('#demo2').scrollbox(sliderOptions);
});
</script>
<script>
$('#demo2').scrollbox({
  direction: 'h',
  distance: 140
});
$('#demo2-backward').click(function () {
  $('#demo2').trigger('backward');
});
$('#demo2-forward').click(function () {
  $('#demo2').trigger('forward');
});
</script>
@endslot


@endcomponent