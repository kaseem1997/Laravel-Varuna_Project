<html lang="en">
@component('themes.theme-1.layouts.main')

@slot('title')
    {{$meta_title or 'Employee Stories | Varuna Group'}}
@endslot

@slot('meta_description')
    {{$meta_description or 'We take pride in our 1500+ strong team inspired by the single-minded drive to help our clients unlock the growth potential of their supply chains.'}}
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
$brief = '';
$banner_title = '';

$b_image = asset('assets/themes/theme-1/images/blog-banner.jpg');
foreach($banners as $banner){
  $images = (isset($banner->Images))?$banner->Images:'';
  $brief = (isset($banner->brief))?$banner->brief:'';
	$banner_title = (isset($banner->title))?$banner->title:'';
  //prd($images);
	if(!empty($images) && count($images) > 0){
		foreach($images as $image){
			if(!empty($image->name) && $storage->exists($path.$image->name)){
				
				$b_image = url('storage/banners/'.$image->name);
			} 
		}
	}
}



$websiteSettingsNamesArr = ['EMP_STORY_HEADING_1', 'EMP_STORY_TEXT'];

$websiteSettingsArr = CustomHelper::websiteSettingsArray($websiteSettingsNamesArr);

$EMP_STORY_HEADING_1 = (isset($websiteSettingsArr['EMP_STORY_HEADING_1']))?$websiteSettingsArr['EMP_STORY_HEADING_1']->value:'';
$EMP_STORY_TEXT = (isset($websiteSettingsArr['EMP_STORY_TEXT']))?$websiteSettingsArr['EMP_STORY_TEXT']->value:'';
?>
<style type="text/css">
  .font_22{line-height: 35px; }
      
</style>

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
 
<section class="commLeftSect bgcolorFFF8E7 wow fadeInDown implanding">
	<div class="container">
		<h1><?php echo $EMP_STORY_HEADING_1; ?></h1>
		<p><?php echo $EMP_STORY_TEXT; ?></p>
	</div>
</section>


<section class="twoColConSection wow fadeInDown employee_stories_page">
      <div class="container-fluid">
        <div class="twoColContent pb-0">
          <ul class="twocol-flex">

          	<?php
          	if(!empty($emp_stories) && count($emp_stories) > 0){

          		foreach ($emp_stories as $emp_story){

      			$r_image = asset('assets/themes/theme-1/images/blog-img5.png');
      			if(!empty($emp_story->image) && $storage->exists('employee_stories/'.$emp_story->image)){
      				$r_image = url('storage/employee_stories/'.$emp_story->image);
      			}
          	?>
            <li>
              <div class="img-box">
                <img src="{{$r_image}}" alt="" class="img-fluid imgRadious flex-left" />
              </div>
              <div class="content-box">
                  <div class="leftContEmp">
                  <div class="landingHeading_employee_stories">{{$emp_story->title}}</div>
                  <div class="landingHeading_employee_stories_post">{{$emp_story->designation}}</div>
                  <p class="font_22">
                  <?php echo $emp_story->heading1; ?>
                  </p>
                  <div class="newsButton">
                    <a href="{{url('employee-stories/'.$emp_story->slug)}}">READ MORE</a>
                  </div>
                  </div>
              </div>
            </li>
            <?php
        	}
        }
            ?>

            <?php /*
            <div class="col-sm-7 col-md-7 mt-4 mb-4">
              <img src="images/employee-stories1.png" alt="" class="img-fluid imgRadious flex-left" />
            </div><!-- col-sm-7  -->
            <!-- <div class="col-sm-7 col-md-7 employeemb mt-4 mb-4">
              <img src="images/employee-stories2.png" alt="" class="img-fluid imgRadious" />
            </div> --><!-- col-sm-7  -->


            <div class="col-sm-5 col-md-5 mt-4 mb-4">
              <div class="leftContEmp">
                <h5 class="landingHeading">JOHN DOE</h5>
                <h6>Warehouse Manager</h6>
                <p>"Quod maxime efficit Theophrasti de beata vita liber, in
                    quo multum admodum fortunae datur. Sed haec
                    omittamus;
                    ; TumTorquatus: Prorsus, inquit, assentior"</p>
                  <div class="newsButton">
                  <a href="#">READ MORE</a>
                  </div>
              </div><!-- leftContEmp -->
            </div><!-- col-sm-5  -->

              <div class="col-sm-5 col-md-5 mt-4 mb-4">
                <div class="leftContEmp">
                    <h5 class="landingHeading">JOHN DOE</h5>
                    <h6>Warehouse Manager</h6>
                    <p>"Quod maxime efficit Theophrasti de beata vita liber, in
                    quo multum admodum fortunae datur. Sed haec
                    omittamus;
                    ; TumTorquatus: Prorsus, inquit, assentior"</p>
                    <div class="newsButton">
                      <a href="#">READ MORE</a>
                    </div>
                </div><!-- leftContEmp -->
              </div><!-- col-sm-5  -->

             <div class="col-sm-7 col-md-7 mt-4 mb-4">
              <img src="images/employee-stories3.png" alt="" class="img-fluid imgRadious flex-left" />
            </div><!-- col-sm-7  -->

             <div class="col-sm-7 col-md-7 mt-4">
              <img src="images/employee-stories4.png" alt="" class="img-fluid imgRadious" />
            </div><!-- col-sm-7  -->

            <div class="col-sm-5 col-md-5 mt-4">
              <div class="leftContEmp">
                  <h5 class="landingHeading">JOHN DOE</h5>
                  <h6>Warehouse Manager</h6>
                  <p>"Quod maxime efficit Theophrasti de beata vita liber, in
                    quo multum admodum fortunae datur. Sed haec
                    omittamus;
                    ; TumTorquatus: Prorsus, inquit, assentior"</p>
                <div class="newsButton">
                    <a href="#">READ MORE</a>
                </div>
              </div><!-- leftContEmp -->
            </div><!-- col-sm-5  --> */?>

          </ul>
        </div><!-- twoColContent -->
      </div><!-- container-fluid -->
    </section>

    <section class="knowMoreAbout m_text_center wow fadeInDown">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-sm-8 col-lg-8 col-xl-8 col-md-8 col-12">
              <p>Join our team in adding more efficiency to the supply chains 

of India’s leading companies.</p>
            </div>
            <div class="col-sm-4 col-lg-4 col-xl-4 col-md-4 col-12">
              <div class="knowMore">
                  <a href="{{url('careers')}}">APPLY NOW</a>
              </div>
            </div>
          </div>
        </div>
      </section>

@slot('footerBlock')

<script type="text/javascript" src="{{url('')}}/js/owl.carousel.min.js"></script> 

@endslot

@endcomponent