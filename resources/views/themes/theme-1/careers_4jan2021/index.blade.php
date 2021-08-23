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
  $image = url('storage/cms_pages/thumb/'.$cms->image);
}*/

$banner_image = asset('assets/themes/theme-1/images/default-img.png');
/*if(!empty($cms->banner_image) && $storage->exists('cms_pages/'.$cms->banner_image)){
  $banner_image = url('storage/cms_pages/'.$cms->banner_image);
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
<h4 class="font-Size16 h4comman">Explore Job Openings</h4>
    <div class="carees_form">

      <form method="GET" action="">
     
        <div class="row">
          <div class="col-sm-3">
            <div class="form-group">
              <div class="custom_select">
                <?php
                if(!empty($location_city) && count($location_city) > 0){
                  ?>
                  <select class="form-control" name="location">
                    <option value="">Location</option>
                    <?php
                    foreach ($location_city as $key=>$location){

                      $selected = '';
                      if($req_location == $location){
                        $selected = 'selected';
                      }
                    ?>
                    <option value="{{$location}}" {{$selected}}>{{$location}}</option>
                    
                    <?php
                    }
                    ?>
                  </select>
                  <?php
                }
                ?>

            </div>
          </div>
          </div>

          <div class="col-sm-3">
            <div class="form-group">
               <div class="custom_select">
            <?php
                if(!empty($departments) && count($departments) > 0){
                  ?>
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
                  <?php
                }
                ?>
              </div>
            </div>
          </div>
           <div class="col-sm-3">
            <div class="form-group">
               <div class="custom_select">
              <select class="form-control">
                <option>Experience of Years</option>
                <option>0 Years - 2 Years</option>
                <option>2 Years - 5 Years</option>
                 <option>5 Years - 10 Years</option>
              </select>
            </div>
            </div>
          </div>
          <div class="col-sm-3">
            <button type="submit" class="btn">Search</button>
          </div>
        </div>

      </form>
      </div>

<?php
if(!empty($careerData)){
?>

<div class="row justify-content-center pt-4">

<?php
foreach ($careerData as $career){

  //pr($career);
?>
<div class="col-sm-8 col-lg-8 col-xl-8 col-md-8 col-12">
<div class="listName">
<div>{{$career->title}}</div>
<a href="{{url('career-detail/'.$career->job_id)}}">view job details <span class="icon_r"></span> </a></div>
</div>

<div class="col-sm-4 col-lg-4 col-xl-4 col-md-4 col-12">
<div class="listAresDetils">
<div>{{$career->department}}</div>
<span>{{$career->location_city}}, {{$career->location_country}}</span></div>
</div>

<div class="borderBttomLanding">&nbsp;</div>
<?php } ?>

<div class="col-sm-4 col-lg-4 col-xl-4 col-md-4 col-12">&nbsp;</div>
</div>
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

