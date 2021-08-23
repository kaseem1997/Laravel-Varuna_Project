@component('themes.theme-1.layouts.main')

@slot('title')
    {{$meta_title or 'Case Studies | Varuna Group'}}
@endslot

@slot('meta_description')
    {{$meta_description or 'Explore how we enabled an industry leader in the FMCG sector to boost its profits by optimising its warehousing & secondary distribution.'}}
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
$banner_title = '';
$brief = '';
$b_image = asset('public/assets/themes/theme-1/images/blog-banner.jpg');
foreach($banners as $banner){
	$images = (isset($banner->Images))?$banner->Images:'';
  $brief = (isset($banner->brief))?$banner->brief:'';
  $banner_title = (isset($banner->title))?$banner->title:'';
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
                    <h6 class="yelloHedaing">{{$banner_title}}</h6>
                    <p class="whiteText"><?php echo $brief; ?></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
      </div>
    </section>
    <section class="yelloLine wow fadeInDown"></section>

    <section class="twoColConSection wow fadeInDown singleInsightsBlog case_studies_page">
          <div class="container">
            <ul class="twocol-flex">

            	<?php
            	if(!empty($case_studies) && count($case_studies) > 0){

            		foreach ($case_studies as $case_study){

            			$r_image = asset('public/assets/themes/theme-1/images/blog-img5.png');
            			if(!empty($case_study->image) && $storage->exists('case_studies/'.$case_study->image)){
            				$r_image = url('public/storage/case_studies/'.$case_study->image);
            			}
            	?>
              <li>
              <div class="img-box">
                 <img src="{{$r_image}}" alt="" class="img-fluid imgRadious flex-left" />
              </div>
              <div class="content-box">
                 <div class="leftContEmp">
                    <h5 class="landingHeading">{{$case_study->title}}</h5>
                    <p><?php echo $case_study->brief;?></p>
                    <div class="newsButton">
                       <a href="{{url('case-studies/'.$case_study->slug)}}">LEARN MORE</a>
                    </div>
                </div>

              </div>

            </li>

             
              <?php
          	}
          }
              ?>


          </ul>
      </div>
    </section>
 


@slot('footerBlock')

<script type="text/javascript" src="{{url('public')}}/js/owl.carousel.min.js"></script> 

@endslot

@endcomponent