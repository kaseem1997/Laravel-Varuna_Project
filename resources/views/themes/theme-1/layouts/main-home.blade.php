<html lang="en">
<!DOCTYPE html>

<head>

<title>{{ $title or 'Varuna' }}</title>
<meta name="description" content="{{ $meta_description or '' }}"/>
<link rel="canonical" href="{{ url()->current() }}" />

<meta property="og:title" content="{{ $title or 'Varuna' }}" />
<meta property="og:type" content="website" />
<meta property="og:image" content="{{ $og_image or 'https://varuna.net/assets/themes/theme-1/images/logoNew.png' }}" />
<meta property="og:url" content="{{ url()->current() }}" />
<meta property="og:description" content="{{ $meta_description or '' }}" />
<meta property="og:site_name" content="varuna" />

<meta name="twitter:site" content="varuna">
<meta name="twitter:card" content="summary_large_image">
<meta name="google-site-verification" content="AJLqr868Hzp8fSo3XNKTfReXmIwuvVGVyrQETPe1aTw" />
<link rel="profile" href="http://gmpg.org/xfn/11">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<link rel="icon" type="image/ico" href="{{url('/favicon.ico')}}" />
<link rel="shortcut icon" href="{{url('/favicon.ico')}}"/>

<!-- if browser doesn't support JavaScript then use normal link tags to load CSS -->
<noscript>
      <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
</noscript>

<!-- load main.css -->
<script>
(function() {
    var cssMain = document.createElement('link');
    cssMain.href = 'https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css';
    cssMain.rel = 'stylesheet';
    cssMain.type = 'text/css';
    document.getElementsByTagName('head')[0].appendChild(cssMain);
})();
</script>
<!-- <link rel="stylesheet" type="text/css" href="{{asset('assets/themes/theme-1/css/owl.carousel.min.css')}}" /> -->
<!-- <link rel="stylesheet" type="text/css" href="{{asset('assets/themes/theme-1/css/animate.css')}}" /> -->

<!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous"> -->
<!-- End magnific-popup- css -->
<link rel="stylesheet" type="text/css" href="{{asset('assets/themes/theme-1/css/custom.css')}}" defer />
<style type="text/css">
   .owl-carousel button.owl-dot { background: transparent; }
</style>
<!-- Global site tag (gtag.js) - Google Ads: 655721561 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-655721561" defer></script>
<script>
 window.dataLayer = window.dataLayer || [];
 function gtag(){dataLayer.push(arguments);}
 gtag('js', new Date());

 gtag('config', 'AW-655721561');
</script>




{{ $headerBlock or '' }}

</head>

<?php
$THEME_NAME = 'themes./'.CustomHelper::getThemeName();

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
?>

<body class="home {{ $bodyClass or '' }}">

  @include($THEME_NAME.'/layouts.header')

<!-- all pages content/html will come in this slot -->
  {{ $slot }}

<?php

/*$FOOTER_CONTACT_DETAILS = CustomHelper::WebsiteSettings('FOOTER_CONTACT_DETAILS');
$FOOTER_TEXT = CustomHelper::WebsiteSettings('FOOTER_TEXT');
$FOOTER_BOTTOM = CustomHelper::WebsiteSettings('FOOTER_BOTTOM');*/



?>


@include($THEME_NAME.'/layouts.footer')

<script type="text/javascript">
  var CssFiles = ['https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css', 'https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css','https://use.fontawesome.com/releases/v5.8.1/css/all.css']
for (var i = 0; i < CssFiles.length; i++) {
    var link = document.createElement("link");
    link.href = CssFiles[i];
    link.type = "text/css";
    link.rel = "stylesheet";
    link.media = "print";
    link.onload = link.media = "all";
    document.getElementsByTagName("head")[0].appendChild(link);
}
</script>

<script type="text/javascript" src="{{asset('assets/themes/theme-1/js/jquery-3.4.1.min.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/themes/theme-1/js/popper.min.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/themes/theme-1/js/bootstrap.min.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/themes/theme-1/js/owl.carousel.min.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/themes/theme-1/js/wow.min.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/themes/theme-1/js/custom.js')}}"></script>

 <script type="text/javascript">
   $(window).scroll(function() {
    if ($(this).scrollTop() >= 250) {
        $('#topscroll').fadeIn(200);
    } else {
        $('#topscroll').fadeOut(200);
    }
});
$('#topscroll').click(function() {
    $('body,html').animate({
        scrollTop : 0 
    }, 500);
});

$(document).ready(function(){
   $(".form-control").click(function(){
    $(this).removeClass("help-block");
    $(this).removeClass("has-error");
    $(this).siblings('.help-block').html('');
    $(this).parent().removeClass('has-error');
  });
 });

$(document).on("click", ".capabityBtn", function(e){

  e.preventDefault();

  //alert('hi'); return false;
  
  var currSel = $(this);

  var capabilityEnquiryForm = $("form[name=capabilityEnquiryForm]");
  capabilityEnquiryForm.find(".form-group").removeClass( "has-error" );
  capabilityEnquiryForm.find(".help-block").remove();

  var _token = '{{ csrf_token() }}';

  $.ajax({
    url: "{{ url('enquiry/ajax_capability') }}",
    type: "POST",
    data: capabilityEnquiryForm.serialize(),
    dataType:"JSON",
    headers:{'X-CSRF-TOKEN': _token},
    cache: false,
    beforeSend:function(){
      capabilityEnquiryForm.find(".form-group").removeClass( "has-error" );
      capabilityEnquiryForm.find(".help-block").remove();
    },
    success: function(resp){
      if(resp.success) {
        $("#capabilityEnquiry").find(".sccMsg").html('<div class="alert alert-success"> Your Request has been submitted. </div>');

        document.capabilityEnquiryForm.reset();

        window.location = "{{url('thank-you')}}";
      }
      else if(resp.errors){

        var errTag;
        var countErr = 1;

        $.each( resp.errors, function ( i, val ) {

          capabilityEnquiryForm.find( "[name='" + i + "']" ).parents(".form-group").addClass( "has-error" );
          capabilityEnquiryForm.find( "[name='" + i + "']" ).parents(".form-group").append( '<p class="help-block">' + val + '</p>' );

          if(countErr == 1){
            errTag = capabilityEnquiryForm.find( "[name='" + i + "']" );
          }
          countErr++;

        });

        if(errTag){
          errTag.focus();
        }
      }
    }
  });

});


$('.subscribeBtn').click(function(e)
{
   e.preventDefault();

   var currSelector = $(this);
   var y= true;
   var filter = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/; 
   var email = currSelector.siblings("input[name='subscribe_email']").val().trim();
   //alert(email); return false;

   if(email==''){

     currSelector.siblings('.newsletter_messages').html('<span style="color:#e41881">Email is required.</span>');
     y=false;
   } 
   if(email!=''){
    if (!filter.test(email)){
      currSelector.siblings('.newsletter_messages').html('<span style="color:#e41881">Invalid Email.</span>');
      y=false;
    }
  }
   
  if(y) {
    var _token = '{{csrf_token()}}';
    $.ajax({
      url : '<?php echo url('common/newsletterSubscribe'); ?>',
      type : 'POST',
      data : {email:email},
      dataType: 'JSON',
      async : false,
      headers:{'X-CSRF-TOKEN': _token},
      success: function(resp){
        if(resp.success){

          if(resp.message){
            currSelector.siblings('.newsletter_messages').html('<span>'+resp.message+'</span>');
            currSelector.siblings(".subscribe_email").val('');
            currSelector.siblings(".newsletter_messages").addClass('succ_msg');
            //currSelector.siblings(".newsletter_messages").fadeOut(3000);

          }

        }
        else{
          if(resp.message){
            currSelector.siblings('.newsletter_messages').html('<span>'+resp.message+'</span>');
            currSelector.siblings(".subscribe_email").val('');
          }
        }
      }

    });
  }
   return false; 
});
</script>
<script type="text/javascript">
    $('.changeCaptcha').on('click', function(e){
      e.preventDefault();
      
      var captcha = $(".captchImgBox").find('img');

      var _token = '{{csrf_token()}}';

      $.ajax( {
        url: "{{url('common/ajax_regenerate_captcha')}}",
        type: "POST",
        data: {},
        dataType: "JSON",
        headers: {
          'X-CSRF-TOKEN': _token
        },
        cache: false,
        beforeSend: function () {},
        success: function ( resp ) {
          if ( resp.success ) {
            if(resp.captcha_src){
              captcha.attr('src', resp.captcha_src);
            }
          }
        }
      } );
    });
    function validate_contactform()
    {
      //alert('df'); return false;
      $('.error_f_name').html('');
      $('.error_l_name').html('');
      $('.error_c_email').html('');
      $('.error_comment').html('');
      $('.error_phone').html('');
      var z = true;
      var first_name = $('#first_name').val();
      var last_name = $('#last_name').val();
      var phone = $('#phone').val();
      var contact_email = $('#contact_email').val();
      var comment = $('#comment').val();
      var scode = $('#scode').val();

        //alert(comment); return false;
    
    if(first_name == ""){
      $('.first_name').addClass('error_field');
      $('.error_f_name').html('First Name Required');
      z = false; 
    }
    else{
      if(!/^[a-zA-Z_ ]*$/g.test(first_name)){
        $('.first_name').addClass('error_field');
        $('.error_f_name').html('Only Characters Required!');
        z = false; 
      }

    }
    if(last_name == ""){
      $('.last_name').addClass('error_field');
      $('.error_l_name').html('Last Name is Required');
      z = false; 
    }
    if(contact_email == ""){
      $('.contact_email').addClass('error_field');
      $('.error_c_email').html('Email is Required');
      z = false; 
    }
    /*else{
      if(!validateEmail(contact_email)){
        $('.contact_email').addClass('error_field');
        $('.error_c_email').html('Invalid Email!');
        z=false; 
      }     
    }
*/
    if(comment == ""){
      $('.comment').addClass('error_field');
      $('.error_comment').html('comment Required');
      z = false; 
    }

    if(phone == ""){
      $('.phone').addClass('error_field');
      $('.error_phone').html('Phone Required');
      z = false; 
    }

    if(scode == ""){
      $('.scode').addClass('error_field');
      z = false; 
    }

    if(z)
    {
      var _token = '{{csrf_token()}}';
      
      $.ajax( {
        url: "{{url('contact')}}",
        type: "POST",
        data: {first_name: first_name, last_name: last_name, contact_email: contact_email,comment:comment, phone:phone, scode: scode},
        dataType: "JSON",
        headers: {
          'X-CSRF-TOKEN': _token
        },
        cache: false,
        beforeSend: function () {},
        success: function ( resp ) {
          if ( resp.success ) {

            //window.location = "{{url('thank-you')}}";
            $('.msg').addClass('thank-you');
            $('.msg').html(resp.message);
            document.contactForm.reset();
            
                }
                if(resp.errors && resp.errors.scode){
                  $('.error_scode').html(resp.errors.scode);

                }
            }
        });
    }

    return false;

  }

  </script>
  <script type="text/javascript">

  
$(document).ready(function () { 
  $( "body" ).click(function() {
    $('.navicon').removeClass('active');
    $('.topmenu').removeClass('showmenu');
  });
    $( ".navicon" ).click(function(e) {
      e.stopPropagation();
      $(this).toggleClass('active');
      $( ".topmenu" ).toggleClass('showmenu');
    }); 
  $(".topmenu").click(function(e){
    e.stopPropagation();
  }); 
  $(".topmenu > ul > li > a").each(function(){ 
    if($(this).parent().children("ul").length){
      $(this).parent('li').addClass("sub-links"); 
      } 
  });
    
  $(".sub-links > a").each(function(){  
      if($(window).width() < 1023){
    $(this).before( '<span class="plusicon"></span>' );
      }
  });
         
  $('.plusicon').click(function(e) {
    e.stopPropagation();
     if($(window).width() < 1023){
    var $el = $(this).parent().find("ul"),
      $parPlus = $(this).parent().find(".plusicon"); 
   
    $parPlus.stop(true, true).toggleClass("minus_icon");
    $(this).next().next().slideToggle();
       }
  }); 
      
});

setTimeout(function() {
 $('.flash-message').fadeOut();
 //$('#name, #email, #msg, #origin').val('')
}, 3000 );


/*$(document).ready(function(){
    $('#cont').on('click', function(event) {
        event.preventDefault();
        var hash = this.hash;
        $('html, body').animate({scrollTop: $(hash).offset().top}, 900);
    });
})*/
jQuery(function(){
    jQuery(document).on('click', '.scrolltolink', function (event) {
      event.preventDefault();

      var winwidth = jQuery(window).width();
      if(winwidth > 640 ){
        
        jQuery('html, body').animate({
            scrollTop: jQuery(jQuery.attr(this, 'href')).offset().top-142
        }, 500);
      }else{
        jQuery('html, body').animate({
            scrollTop: jQuery(jQuery.attr(this, 'href')).offset().top-80
        }, 500);


      }
    });
  });
  // Tabs 
  $(document).ready(function(){
    $('ul.tabs li').click(function(){
      var tab_id = $(this).attr('data-tab');

      $('ul.tabs li').removeClass('current');
      $('.tab-content').removeClass('current');

      $(this).addClass('current');
      $("#"+tab_id).addClass('current');
    })
  })
</script>
<script type="text/javascript">
  $(".dropdown .arrow_down").click(function(){
  if(
    $(this).parent().hasClass("active")) {
    $(this).parent().removeClass("active");
    $(this).parent().find(".dropdown-menu-cust").slideUp();
  }
  
  else {
    $("dropdown .arrow_down").removeClass("active");
    $(".dropdown-menu-cust").slideUp();
    $(this).parent().addClass("active");
    $(this).parent().find(".dropdown-menu-cust").slideDown();
  }
});
</script>

 <script>
      AOS.init({
        //easing: 'ease-out-back',
        //duration: 1000
      });
    </script>

{{ $footerBlock or '' }}
</body>
</html>