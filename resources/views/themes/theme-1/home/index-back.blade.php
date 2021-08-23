@component('themes.theme-1.layouts.main')

@slot('title')
    IHBL
@endslot

@slot('headerBlock')
<link rel="stylesheet" type="text/css" href="{{asset('public/assets/themes/theme-1/css/owl.carousel.min.css')}}" />

@endslot

<!-- to attach class on body tag of page -->
@slot('bodyClass')
  index-page
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
  <section class="banner owl-carousel owl-theme fullwidth">

    <?php
    $path = 'banners/';
    foreach($banners as $banner){
      $images = (isset($banner->Images))?$banner->Images:'';

      //prd($images);
      if(!empty($images) && count($images) > 0){
        foreach($images as $image){
          if(!empty($image->name) && $storage->exists($path.$image->name)){
            ?>
            <div>
              <img src="{{url('public/storage/banners/'.$image->name)}}" alt="{{$banner->title}}">
              <div class="bannertext">
                <div class="banner-inner">
                    <div class="banner-title"><?php echo $banner->subtitle; ?></div>
                    <div class="banner-description"><?php echo $banner->brief; ?></div>
                </div>
              </div>
            </div>
            <?php
          } 
        }
      }
    }
    ?>
  </section>
  <?php } ?>
<!-- Welcome start -->
<section class="sectionpad fullwidth welcome-sec">
    <div class="container">
      <div class="top-block-sc">
        <div class="tagline"><?php echo $about_usHeading; ?></div>
        <h1 class="headings headings-with-border"><?php echo $HOME_HEADING_1; ?></h1>
      </div>
    </div>
    <div class="welcome-sec-inner">
      <div class="container">
        <div class="welcome-content-block">
          <div class="short-description">
           <?php echo $about_usBrief; ?>
          </div>
        </div>
        <div class="welcome-img-block">
          <a href="{{url('tenders')}}">
              <img src="{{url('public/storage/cms_pages/'.$about_usImage)}}" alt="<?php echo $about_usTitle; ?>">
          </a>  
        </div>
      </div>
    </div>
</section> 
<!-- Welcome end -->
<!-- feature project start -->
<!-- CMS Content -->
<section class="sectionpad project-sec fullwidth">
    <div class="container">
    <div class="project-details-block">
      <a class="project-details-inner" href="{{url('kandla-gorakhpur-pipeline')}}">
          <div class="headings headings-with-border"><?php echo $HOME_HEADING_2; ?></div>
          <div class="project-title"><?php echo $our_projectsHeading; ?></div>
          <div class="project-content-box">
            <?php echo $our_projectsBrief; ?>
          </div>
          <span class="project-link-box"><i class="arrow-white-icon"></i></span>
      </a>
    </div>
    <div class="video-block-wrapper">
        <div class="video-block-inner">
          <?php echo $HOME_VIDEO; ?>
        </div>
    </div>
  </div>
</section>
<!-- feature project end -->
<!-- News start -->
<section class="sectionpad news-sec newsbg fullwidth">
    <div class="container clearfix">
      <div class="board-of-director-block">
          <div class="board-title headings"><?php echo $HOME_HEADING_3; ?></div>
          <div class="board-detail-box clearfix"> 
            <div class="board-img"><img src="{{url('public/storage/cms_pages/'.$chairmansImage)}}" alt="<?php echo $HOME_HEADING_3; ?>"></div>
            <div class="board-content-box">
              <div class="board-content">
                <?php echo $chairmansBrief; ?>
              </div>
              <div class="board-info">
                  <div class="member-name"><?php echo $chairmansHeading; ?></div>
                  <div class="member-position">Chairman & Director</div>
              </div>
            </div>
          </div>
      </div>
      <div class="news-block-wrapper">
        <div class="news-block-inner-wrapper">
            <div class="headings headings-with-border"><?php echo $HOME_HEADING_4; ?></div>
              <div id="slideFrameHtml" class="news-slide-container">
                <div class="slideFrame" id="slider-0">
                    <div id="demo2" class="scroll-text">
                      <ul class="project-listing clearfix">
                        @include('components.includes._news')
                      </ul>
                    </div>
                </div>
              </div>
            <div class="read-more-wrapper">
              <a href="{{url('news')}}" class="read-more">View All <i class="arrow-icon"></i></a>
            </div>
        </div>
      </div>
    </div>
</section> 
<!-- News end -->
<!-- Testimonials end -->
<div>
</div>
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