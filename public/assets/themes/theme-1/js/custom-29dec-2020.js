
jQuery(document).ready(function() {

  jQuery('.bannerSlider').owlCarousel({

    loop: true,

    nav: false,
    dots:true,

    autoplay: true,

    navigation: false,

    responsiveClass: true,

    autoplayHoverPause: true,

    responsive: {

      0: {

        items: 1

      },

      600: {

        items: 1

      },

      1000: {

        items: 1

      }

    }

  });

    jQuery('.home__slider__mob').owlCarousel({
    loop: true,
     margin: 20,
    nav: true,
    autoplay: false,
    lazyLoad: true,
    navigation: true,
    responsiveClass: true,
    autoHeight:true,
    autoplayHoverPause: true,
    navText:["<div class='mobprev__home'></div>","<div class='mobnext__home'></div>"],
    responsive: {

      0: {

        items: 1

      },

      600: {

        items:3

      },

      1000: {

        items: 1

      }

    }

  });


jQuery('.ld__growth__chart').owlCarousel({
    loop: true,
     margin: 20,
    nav: true,
    autoplay: false,
    navigation: true,
    responsiveClass: true,
    autoHeight:true,
    autoplayHoverPause: true,
    navText:["<div class='prev__ldgchart'></div>","<div class='next__ldgchart'></div>"],
    responsive: {

      0: {

        items: 1

      },

      600: {

        items:1

      },

      1000: {

        items: 1

      }

    }

  });



 jQuery('.home__slider').owlCarousel({
    loop: true,
     margin: 20,
    nav: true,
    autoplay: false,
    navigation: true,
    responsiveClass: true,
    autoHeight:true,
    autoplayHoverPause: true,
    navText:["<div class='home__btn prev__home'></div>","<div class='home__btn next__home'></div>"],
    responsive: {

      0: {

        items: 1

      },

      600: {

        items: 3

      },

      1000: {

        items: 3

      }

    }

  });
   jQuery('.mobileBnnerSlider').owlCarousel({
    loop: true,
    nav: true,
    autoplay: false,
    navigation: true,
    responsiveClass: true,
    autoHeight:true,
    autoplayHoverPause: true,
    responsive: {

      0: {

        items: 1

      },

      600: {

        items: 2

      },

      1000: {

        items: 3

      }

    }

  });


   jQuery('.halfBannerSlider').owlCarousel({
    loop: true,
    nav: true,
    autoplay: false,
    navigation: true,
    responsiveClass: true,
    autoHeight:true,
    autoplayHoverPause: true,

    responsive: {

      0: {

        items: 1

      },

      600: {

        items: 1

      },

      1000: {

        items: 1

      }

    }

  });


   jQuery('.awardSlider').owlCarousel({
    loop: false,
    navigation: true,
    responsiveClass: true,
    autoHeight:true,
    autoplayHoverPause: true,
    margin:0,
    nav: true,
    autoplay: true,
 margin:20,
   navText:["<div class='nav-btn prev-slide'></div>","<div class='nav-btn next-slide'></div>"],
    responsive: {

      0: {

        items: 1

      },

      600: {

        items: 3

      },

      1000: {

        items: 3

      }

    }

  });

   jQuery('.home__lifeAtveruna').owlCarousel({
    loop: true,
     margin: 20,
    nav: true,
    autoplay: true,
    navigation: true,
    responsiveClass: true,
    autoHeight:true,
    autoplayHoverPause: true,

    responsive: {

      0: {

        items: 1

      },

      600: {

        items: 1

      },

      1000: {

        items: 1

      }

    }

  });


jQuery('.owl-NewbannerSlider').owlCarousel({
    loop: false,
    center: true,
    dots:true,
    margin: 0,
    callbacks: true,
    URLhashListener: true,
    autoplayHoverPause: true,
    navigation: true,
    nav: true,
    responsiveClass: true,
    startPosition: 'URLHash',
    autoWidth:false,
    navText:["<div class='nav-btn prev-slide'></div>","<div class='nav-btn next-slide'></div>"],
    responsive: {
      0: {
      items: 1
      },
      600: {
      items: 1
      },
      1000: {
      items: 1
      }
    }
});
  $('.owl-carousel').on('changed.owl.carousel', function(event) {
    var current = event.item.index;
    var hash = $(event.target).find(".owl-item").eq(current).find(".item").attr('data-hash');
    $('.item-'+hash).addClass('active');
  });

  $('.owl-carousel').on('change.owl.carousel', function(event) {
    var current = event.item.index;
    var hash = $(event.target).find(".owl-item").eq(current).find(".item").attr('data-hash');
    $('.item-'+hash).removeClass('active');
  });





$(window).scroll(function(){

  if($(window).scrollTop() > 50){

    $('.headerSec').addClass('fixed');

  }else{

    $('.headerSec').removeClass('fixed');

  }

});





new WOW().init();

jQuery('.dropdownCustonhover').hover(function() {
    jQuery(this).addClass('show');
},
function() {
    jQuery(this).removeClass('show');
});

$('.navbar .dropdownCustonhover > a').click(function(){
  location.href = this.href;
});




 //$('.industryConte').hide();
 $('.hero__pharmaOne').show();
 $('.hero__pharmaTwo').hide();
 $('.hero__pharmaThree').hide();
 $('body').on('click', '.heroSection', function(){
   var elem = $(this);
   $('.industryConte').hide();
   $('.hero__' + elem.data('content')).show();
  $('.heroSection').removeClass('activee');
   elem.addClass('activee');
 });


  //$('.industryConte').hide();
   $('.hero__pharma-One').hide();
   $('.hero__pharma-Two').hide();
   $('.hero__pharma-Three').hide();
   $('body').on('click', '.heroSection__new', function(){
     var elem = $(this);
     $('.industryContee').hide();
     $('.hero__' + elem.data('content')).show();
      $('.heroSection__new').removeClass('activee');
      elem.addClass('activee');
   });


});


//mobile nav

// Function expression to select elements.
const selectElement = (s) => document.querySelector(s);


//Open the menu on click
selectElement('.open').addEventListener('click', () => {
  selectElement('.secondHed').classList.add('active');
});


//Close the menu on click
selectElement('.close').addEventListener('click', () => {
  selectElement('.secondHed').classList.remove('active');
});

  ( function() {

  var youtube = document.querySelectorAll( ".youtube" );
  
  for (var i = 0; i < youtube.length; i++) {
    
    var source = "https://img.youtube.com/vi/"+ youtube[i].dataset.embed +"/sddefault.jpg";
    
    var image = new Image();
        image.src = source;
        image.addEventListener( "load", function() {
          youtube[ i ].appendChild( image );
        }( i ) );
    
        youtube[i].addEventListener( "click", function() {

          var iframe = document.createElement( "iframe" );

              iframe.setAttribute( "frameborder", "0" );
              iframe.setAttribute( "allowfullscreen", "" );
              iframe.setAttribute( "src", "https://www.youtube.com/embed/"+ this.dataset.embed +"?rel=0&showinfo=0&autoplay=1" );

              this.innerHTML = "";
              this.appendChild( iframe );
        } );  
  };
  
} )();
