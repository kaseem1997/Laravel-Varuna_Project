@component('themes.theme-1.layouts.main')

@slot('title')
    Case Studies
@endslot

@slot('headerBlock')



@endslot

<!-- to attach class on body tag of page -->
@slot('bodyClass')
  index-page
@endslot

<?php
$storage = Storage::disk('public');
$path = 'banners/';
$b_image = asset('public/assets/themes/theme-1/images/blog-banner.jpg');
foreach($banners as $banner){
	$images = (isset($banner->Images))?$banner->Images:'';
        //prd($images);
	if(!empty($images) && count($images) > 0){
		foreach($images as $image){
			if(!empty($image->name) && $storage->exists($path.$image->name)){
				
				$b_image = url('public/storage/banners/'.$image->name);
			} 
		}
	}
}
?>

<section class="bannerSec wow fadeInDown">
        <div class="row">
          <div class="col-12">
            <div class="owl-carousel bannerSlider">
              <div class="item">
                <div class="bannerSlWrp">
                  <img class="img-fluid" src="{{$b_image}}" alt="">
                  <div class="bannerContent container-fluid paddingleftRight">
                    <h6 class="yelloHedaing">Cases Studies</h6>
                    <p class="whiteText">Strengthening supply <br /> chain operations <br /> across industries</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
      </div>
    </section>
    <section class="yelloLine wow fadeInDown"></section>

    <section class="singleInsightsBlog wow fadeInDown">
      <div class="insightsBlogWrap">
        <div class="container">
          <div class="row  justify-content-center">


          	<?php
          	if(!empty($case_studies) && count($case_studies) > 0){

          		foreach ($case_studies as $case_study){

          			$r_image = asset('public/assets/themes/theme-1/images/blog-img5.png');
          			if(!empty($case_study->image) && $storage->exists('case_studies/'.$case_study->image)){
          				$r_image = url('public/storage/case_studies/'.$case_study->image);
          			}
          	?>
            <div class="col-12 col-sm-6 col-lg-6 col-xl-6 col-md-6 casestydy__mb51">
              <div class="casestydy__news__Box">
                  <div class="insightsBlogCat">
                  <h5 class="landingHeading">{{$case_study->title}}</h5>
                  <p><?php echo $case_study->brief;?></p>
                  <div class="newsButton">
                     <a href="{{url('case-studies/'.$case_study->slug)}}">LEARN MORE</a>
                  </div>
              </div><!-- casestydy__news__Box -->
            </div>

             </div>
            <div class="col-12 col-sm-6 col-lg-6 col-xl-6 col-md-6 casestydy__mb51">
               <img src="{{$r_image}}" alt="" class="img-fluid" />
            </div>

           
            <?php
        	}
        }
            ?>


        </div>
          <!-- row -->
        </div><!--container -->
      </div><!-- insightsBlogWrap -->
    </section>
 


@slot('footerBlock')

<script type="text/javascript" src="{{url('public')}}/js/owl.carousel.min.js"></script> 

@endslot

@endcomponent