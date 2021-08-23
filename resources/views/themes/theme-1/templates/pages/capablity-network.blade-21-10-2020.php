@component('themes.theme-1.layouts.main')

@slot('title')
    {{$meta_title or ''}}
@endslot

@slot('meta_description')
    {{$meta_description or ''}}
@endslot

@slot('headerBlock')

<link rel="stylesheet" type="text/css" href="{{asset('public/assets/themes/theme-1/css/owl.carousel.min.css')}}" />

<!-- <script src="https://maps.google.com/maps/api/js?sensor=false" type="text/javascript"></script> -->

<link rel="stylesheet" type="text/css" href="{{asset('public/assets/themes/theme-1/map/examples/complex-styles/styles.css')}}" />

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCQRIiVSlDIL7l0PilJGF-BGbgRKpGE29I&v=3"></script>

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



<section class="mapSecttion  wow fadeInDown">
<div class="container">
<div class="mapBorder">&nbsp;</div>

<div class="row">
<div class="col-sm-12 col-md-12">
<div id="map" style="width: 100%; height: 600px;">&nbsp;</div>
</div>
</div>
</div>
</section>


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
        <p>Drive efficiencies throughout your supply chain with our technology-enabled services.</p>
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

<script type="text/javascript">
    /*var locations = [
      ['Bondi Beach', -33.890542, 151.274856, 4],
      ['Coogee Beach', -33.923036, 151.259052, 5],
      ['Cronulla Beach', -34.028249, 151.157507, 3],
      ['Manly Beach', -33.80010128657071, 151.28747820854187, 2],
      ['Maroubra Beach', -33.950198, 151.259302, 1]
    ];

    var map = new google.maps.Map(document.getElementById('map'), {
      zoom: 10,
      center: new google.maps.LatLng(-33.92, 151.25),
      mapTypeId: google.maps.MapTypeId.ROADMAP
    });

    var infowindow = new google.maps.InfoWindow();

    var marker, i;

    for (i = 0; i < locations.length; i++) {  
      marker = new google.maps.Marker({
        position: new google.maps.LatLng(locations[i][1], locations[i][2]),
        map: map
      });

      google.maps.event.addListener(marker, 'click', (function(marker, i) {
        return function() {
          infowindow.setContent(locations[i][0]);
          infowindow.open(map, marker);
        }
      })(marker, i));
    }*/


    
            var map;
            var InforObj = [];
            var centerCords = {
                lat: 28.6466773,
                lng: 76.813073
            };
            var markersOnMap = [{
                    placeName: "Branch Office",
                    LatLng: [{
                        lat: 22.957793,
                        lng: 72.5898469
                    }]
                },
                {
                    placeName: "Alliance Web solution",
                    LatLng: [{
                        lat: 28.6052853,
                        lng: 77.3897368
                    }]
                },
                {
                    placeName: "Australia (Canberra)",
                    LatLng: [{
                        lat: -35.299085,
                        lng: 509.109615
                    }]
                },
                {
                    placeName: "Australia (Gold Coast)",
                    LatLng: [{
                        lat: -28.013044,
                        lng: 513.425586
                    }]
                },
                {
                    placeName: "Australia (Perth)",
                    LatLng: [{
                        lat: -31.951994,
                        lng: 475.858081
                    }]
                }
            ];

            window.onload = function () {
                initMap();
            };

            function addMarkerInfo() {
                for (var i = 0; i < markersOnMap.length; i++) {
                    var contentString = '<div id="content"><h1>' + markersOnMap[i].placeName +
                        '</h1><p>Lorem ipsum dolor sit amet, vix mutat posse suscipit id, vel ea tantas omittam detraxit.</p></div>';

                    const marker = new google.maps.Marker({
                        position: markersOnMap[i].LatLng[0],
                        map: map
                    });

                    const infowindow = new google.maps.InfoWindow({
                        content: contentString,
                        maxWidth: 200
                    });

                    marker.addListener('click', function () {
                        closeOtherInfo();
                        infowindow.open(marker.get('map'), marker);
                        InforObj[0] = infowindow;
                    });
                }
            }

            function closeOtherInfo() {
                if (InforObj.length > 0) {
                    /* detach the info-window from the marker ... undocumented in the API docs */
                    InforObj[0].set("marker", null);
                    /* and close it */
                    InforObj[0].close();
                    /* blank the array */
                    InforObj.length = 0;
                }
            }

            function initMap() {
                map = new google.maps.Map(document.getElementById('map'), {
                    zoom: 5,
                    center: centerCords
                });
                addMarkerInfo();
            }
        
  </script>

@endslot

@endcomponent

