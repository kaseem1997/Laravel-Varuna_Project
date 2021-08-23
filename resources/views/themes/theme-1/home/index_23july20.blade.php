@component('themes.theme-1.layouts.main')

@slot('title')
    Varuna
@endslot

@slot('headerBlock')
<link rel="stylesheet" type="text/css" href="{{asset('public/assets/themes/theme-1/css/owl.carousel.min.css')}}" />

@endslot

<!-- to attach class on body tag of page -->
@slot('bodyClass')
  home-page
@endslot

  <?php
  $storage = Storage::disk('public');
  $params = [];
  $about_usCms = CustomHelper::getCMSPage('about-ihb');
  $chairmansCms = CustomHelper::getCMSPage('chairman-s-message');
  $our_projectsCms = CustomHelper::getCmsData($id='13', $parent_id='', $limit='', $params);
  /*$our_projectsCms = CustomHelper::getCMSPage('kandla-gorakhpur-lpg-pipeline');*/
  //pr($aboutCms);
  $about_usTitle = (isset($about_usCms['title']))?$about_usCms['title']:'';
  $about_usHeading = (isset($about_usCms['heading']))?$about_usCms['heading']:'';
  $about_usBrief = (isset($about_usCms['brief']))?$about_usCms['brief']:'';
  $about_usImage = (isset($about_usCms['image']))?$about_usCms['image']:'';
  $chairmansTitle = (isset($chairmansCms['title']))?$chairmansCms['title']:'';
  $chairmansName = (isset($chairmansCms['Name']))?$chairmansCms['Name']:'';
  $chairmansHeading = (isset($chairmansCms['heading']))?$chairmansCms['heading']:'';
  $chairmansBrief = (isset($chairmansCms['brief']))?$chairmansCms['brief']:'';
  $chairmansImage = (isset($chairmansCms['image']))?$chairmansCms['image']:'';
  $our_projectsHeading = (isset($our_projectsCms['heading']))?$our_projectsCms['heading']:'';
  $our_projectsBrief = (isset($our_projectsCms['brief']))?$our_projectsCms['brief']:'';
  $websiteSettingsNamesArr = ['FOOTER_CONTACT_DETAILS', 'FOOTER_TEXT', 'FOOTER_BOTTOM', 'SITE_ADDRESS', 'SITE_PHONE', 'SITE_EMAIL', 'FACEBOOK', 'TWITTER', 'LINKEDIN', 'INSTAGRAM', 'YOUTUBE', 'PINTEREST', 'FRONTEND_LOGO','HOME_VIDEO','SITE_COPYRIGHT_TEXT','HOME_HEADING_1','HOME_HEADING_2','HOME_HEADING_3','HOME_HEADING_4'];
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
  //prd($aboutImage);
  ?>
  <?php

 /* $topMenu = CustomHelper::getMenu('top-menu');

  $menuItems = (isset($topMenu->menuParentItems))?$topMenu->menuParentItems:'';

  $menuItemsList = CustomHelper::getMenuForFront($menuItems, $is_parent = true, $parent_class='', $child_class='', $child_parent_class='');*/
  //CustomHelper::getHeaderMenu($menu_name='top-menu', $menu_id='', $parent_id=0, $ul_class="menu", $child_ul_class='munu_item',$li_class='',$child_li_class='');

  //prd($menuItemsList);

  //prd($banners);
  if(!empty($banners) && count($banners) > 0){
    ?>
    <section class="bannerSec wow fadeInDown">

      <div class="row">
        <div class="col-12">
          <div class="owl-carousel bannerSlider">
            <div class="item">

              <?php
              $path = 'banners/';
              foreach($banners as $banner){
                $images = (isset($banner->Images))?$banner->Images:'';
                //prd($images);
                if(!empty($images) && count($images) > 0){
                  foreach($images as $image){
                    if(!empty($image->name) && $storage->exists($path.$image->name)){
                      ?>
                      <div class="bannerSlWrp">
                        <img src="{{url('public/storage/banners/'.$image->name)}}" alt="{{$banner->title}}">
                        <div class="bannerContent container-fluid paddingleftRight">
                          <h6><?php echo $banner->subtitle; ?></h6>
                          <p><?php echo $banner->brief; ?></p>
                        </div>
                      </div>
                      <?php
                    } 
                  }
                }
              }
              ?>
            </div>
          </div>
        </div>
      </div>
    </section>
  <?php } ?>

<section class="yelloLine wow fadeInDown"></section>

<section class="wlcomeSec wow fadeInDown">
  <div class="container">
    <h1>Welcome to Varuna Group</h1>
    <p>Established in 1996 with the principles of customer-centricity, operational excellence and transparency, Varuna Group partners with supply chain leaders in managing their end-to-end logistics operations to reduce the effective landed cost of products.</p>
    <div class="knowMoreYellow"><a href="#">Know More</a></div>
  </div>
</section>


<section class="gallerySec wow fadeInDown">
  <div class="gallerySubSec">
    <div class="allGal" style="background: url('{{asset('public/assets/themes/theme-1/images/gal1.jpg')}}');"></div>
    <div class="allGal" style="background: url('{{asset('public/assets/themes/theme-1/images/gal2.jpg')}}');"></div>
    <div class="allGal" style="background: url('{{asset('public/assets/themes/theme-1/images/gal3.jpg')}}');"></div>
    <div class="allGal" style="background: url('{{asset('public/assets/themes/theme-1/images/gal4.jpg')}}');"></div>
    <div class="allGal" style="background: url('{{asset('public/assets/themes/theme-1/images/gal5.jpg')}}');"></div>
    <div class="allGal" style="background: url('{{asset('public/assets/themes/theme-1/images/gal6.jpg')}}');"></div>
  </div>
</section>

<section class="leadershipSection wow fadeInDown">
  <div class="container">
    <div class="userImgOne">
      <h4 class="h4comman">LEADERSHIP</h4>
    </div>
    <div class="row  justify-content-center">
      <div class="col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userImgOne">
        <img src="{{asset('public/assets/themes/theme-1/images/man-1.png')}}" alt="" class="img-fluid" />
      </div>
      <div class="col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userOne">
        <h4> VIKAS JUNEJA </h4>
        <h5>Founder & Chairman</h5>
        <p>A visionary businessman & an inspiring leader with an entrepreneurial streak, Mr Vikas Juneja is a graduate in Commerce from Ruhelkhand University. With 30+ years of experience in large fleet operations management, he has played a key role in developing some of the best industry practices in the country.</p>
      </div>
      <div class="col-sm-6 col-lg-5 col-xl-6 col-12 col-md-6 userTwo">
       <h4> VIVEK JUNEJA </h4>
       <h5>Founder & Managing Director</h5>
       <p>An engineer by degree and an entrepreneur at heart, Vivek Juneja is a visionary spearheading the organisation, alongside Vikas Juneja, since its inception. He has been pivotal in ushering transparent & fair business practices in the industry. Under his leadership, Varuna Group has lived and delivered excellence, while gradually gaining a competitive edge.</p>
     </div>
     <div class="col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userImgOne">
      <img src="{{asset('public/assets/themes/theme-1/images/man-2.png')}}" alt="" class="img-fluid" />
    </div>
  </div>
</div>
</section>

<section class="overLayIageSection wow fadeInDown">
  <img src="{{asset('public/assets/themes/theme-1/images/ourJourney.png')}}" alt="" class="img-fluid" />
  <div class="container-fluid paddingleftRight overlaybox">
    <div class="row  justify-content-center">
      <div class="col-sm-5">
        <h4>OUR JOURNEY</h4>
        <p class="becomeIndia">Becoming one of India’s top <br /> logistics services providers</p>

      </div>
      <div class="col-sm-5">
       <p>
        Our unswerving commitment to our foundational principles - staying <br />transparent, agile & ethical with our clients - has played an instrumental <br />role in our growth.</p>
        <div class="knowMoreWhite">
          <a href="">Know More</a>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="knowMoreAbout wow fadeInDown">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-sm-8 col-lg-8 col-xl-8 col-md-8 col-12">
        <p>Investing in passionate people, robust technologies and the <br />right
        systems to ascend your growth</p>
      </div>
      <div class="col-sm-4 col-lg-4 col-xl-4 col-md-4 col-12">
        <div class="knowMore">
          <a href="#">View Capabilities</a>
        </div>
      </div>
    </div>
  </div>
</section>


@slot('footerBlock')
<script type="text/javascript" src="{{asset('public/assets/themes/theme-1/js/js-scroll/jquery.scrollbox.js')}}"></script>
<script type="text/javascript" src="{{asset('public/assets/themes/theme-1/js/jquery.scrollbox.js')}}"></script>
<script type="text/javascript" src="{{asset('public/assets/themes/theme-1/js/magnificpopup/magnific-popup.min.js')}}"></script> 
<script type="text/javascript" src="{{asset('public/assets/themes/theme-1/js/owl.carousel.min.js')}}"></script> 



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