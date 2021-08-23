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
$segment1 =  Request::segment(1);

$storage = Storage::disk('public');

$image = '';
/*if(!empty($cms->image) && $storage->exists('cms_pages/thumb/'.$cms->image)){
  $image = url('public/storage/cms_pages/thumb/'.$cms->image);
}*/

$banner_image = asset('assets/themes/theme-1/images/default-img.png');
/*if(!empty($cms->banner_image) && $storage->exists('cms_pages/'.$cms->banner_image)){
  $banner_image = url('public/storage/cms_pages/'.$cms->banner_image);
}*/

//pr($careerData);
?>

<!-- <section class="bannerSec  wow fadeInDown">
        <div class="row">
          <div class="col-12">
            <div class="owl-carousel bannerSlider">
              <div class="item">
                <div class="bannerSlWrp">
                  <img class="img-fluid" src="{{$banner_image}}" alt="">
                  <div class="bannerContent container-fluid paddingleftRight">
                    <h6 class="yelloHedaing"><?php //echo $cms->heading; ?></h6>
                    <p class="whiteText"><?php //echo $cms->brief; ?></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
      </div>
    </section> -->


<?php
//echo $cms->content;


//pr($careerData);
//pr($expFrom);
//pr($expTo);
?>


<section class="bannerSec banner_carr wow fadeInDown">
        <div class="row">
          <div class="col-12">
            <div class="owl-carousel bannerSlider">
              <div class="item">
                <div class="bannerSlWrp">
                  <img class="img-fluid" src="/assets/themes/theme-1/images/jop-banner.jpg" alt="">
                  <div class="bannerContent container-fluid paddingleftRight">
                    <h6 class="yelloHedaing">JOB OPENINGS</h6>
                    <p class="whiteText">Do the best work <br>of your life</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
      </div>
    </section>
<section class="yelloLine wow fadeInDown"></section>

<section class="listingSect wow fadeInDown pt-4 pb-5 careers_pages">


<div class="container">

<?php
if(!empty($careerData)){
?>

<h1 class="h3_heading_seo pt40">Explore Job Openings</h1>
    <div class="carees_form">

      <form method="GET" action="">
     
        <div class="row">

          <?php
          if(!empty($location_city) && count($location_city) > 0){
          ?>
          <div class="col-sm-3">
            <div class="form-group">
                  <div class="custom_select">

                  <select class="form-control" name="location">
                    <option value="">Location</option>
                    <?php
                    foreach ($location_city as $location){

                      foreach($location as $l_city){

                        if(!empty($l_city)){
                          $selected = '';
                          if($req_location == $l_city){
                            $selected = 'selected';
                          }
                          ?>
                          <option value="{{$l_city}}" {{$selected}}>{{$l_city}}</option>
                          <?php
                        }
                      }
                    }
                    ?>

                  </select>

                  </div>
                  
          </div>
          </div>
          <?php
        }
        ?>

        <?php
        if(!empty($departments) && count($departments) > 0){
        ?>
          <div class="col-sm-3">
            <div class="form-group">
               <div class="custom_select">
            
                  <select class="form-control" name="department">
                    <option value="">Department</option>
                    <?php
                    foreach ($departments as $key=>$department){

                      $selected = '';
                      if($req_department == $department){
                        $selected = 'selected';
                      }
                    ?>
                   <option value="{{$department}}" {{$selected}}>{{$department}}</option>
                    
                    <?php
                    }
                    ?>
                  </select>
                  
              </div>
            </div>
          </div>
          <?php
          }

          ?>



          <?php
          if(!empty($experience_from) && !empty($experience_to)){
          ?>
           <div class="col-sm-3">
            <div class="form-group">
               <div class="custom_select">
              <select class="form-control" name="experience">
                <option value="">Experience of Years</option>
                <?php
                foreach ($experience_from as $key=>$val){

                  $selected = '';
                  if($expFrom == $val || $expTo == $experience_to[$key]){
                    $selected = 'selected';
                  }
                ?>
                <option value="{{$val}},{{$experience_to[$key]}}" {{$selected}}>{{$val}} Years - {{$experience_to[$key]}} Years</option>
                <!-- <option>0 Years - 2 Years</option>
                <option>2 Years - 5 Years</option>
                 <option>5 Years - 10 Years</option> -->
                 <?php
                }
                 ?>
              </select>
            </div>
            </div>
          </div>
          <?php
          }
          ?>


          <div class="col-sm-3">
            <button type="submit" class="btn">Search</button>
          </div>
        </div>

      </form>
      </div>

<?php
//prd($careerData);



?>

<div class="row justify-content-center pt-4">

<?php
foreach ($careerData as $career){

  //$career = object()$career;
  //pr($career->location_country);
  $locat_city = $career->location_city;
  $cityArr = [];
  $cityNames = '';

  if(!empty($locat_city) && count($locat_city) > 0){
    //pr($locat_city);
    foreach ($locat_city as $city){
      
      if(!empty($city)){
        $cityArr[] = $city;

        if(!empty($cityArr) && count($cityArr) > 0){
          $cityNames = implode(',', $cityArr);
        }
      }

    }
  }

?>
<div class="col-sm-8 col-lg-8 col-xl-8 col-md-8 col-12">
<div class="listName">
<div>{{$career->job_title}}</div>
<a href="{{url('career-detail/'.$career->job_id)}}">view job details <span class="icon_r"></span> </a></div>
</div>

<div class="col-sm-4 col-lg-4 col-xl-4 col-md-4 col-12">
<div class="listAresDetils">
<div>{{$career->department}}</div>
<span>{{$cityNames}}, {{$career->location_country}}</span></div>
</div>

<div class="borderBttomLanding">&nbsp;</div>
<?php } ?>

<!-- <div class="col-sm-4 col-lg-4 col-xl-4 col-md-4 col-12">&nbsp;</div>
</div> -->

<section class="knowMoreAbout wow fadeInDown" style="visibility: visible; animation-name: fadeInDown;">
  <div class="container">
    <div class="row justify-content-center">
      
         <p>If you are not able to find a relevant job please <a href="https://integrations1.darwinbox.in/ms/candidate/candidate/login" target="_blank">click here</a> to post your resume.</p>
      
     <!--  <div class="col-sm-4 col-lg-4 col-xl-4 col-md-4 col-12">
        <div class="knowMore">
          <a href="http://varuna.ehostinguk.com/services">View Services</a>
        </div>
      </div> -->
    </div>
  </div>
</section>

<!-- row -->
<div class="common_peg">
   {{ $paginator->links() }}
</div>

<?php } 

else{
  echo "Record not found";
}
?>


</div>
<!-- container -->
</section>

@slot('footerBlock')

@endslot





@endcomponent

