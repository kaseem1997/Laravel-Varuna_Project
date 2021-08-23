@component('themes.theme-1.layouts.main')

@slot('title')
    {{$meta_title or 'Insight'}}
@endslot

@slot('meta_description')
    {{$meta_description or ''}}
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
$b_image = asset('assets/themes/theme-1/images/blog-banner.jpg');
foreach($banners as $banner){
	$images = (isset($banner->Images))?$banner->Images:'';
        //prd($images);
	if(!empty($images) && count($images) > 0){
		foreach($images as $image){
			if(!empty($image->name) && $storage->exists($path.$image->name)){
				$b_image = url('storage/banners/'.$image->name);
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
              	<?php
              	foreach($banners as $banner){
              		$images = (isset($banner->Images))?$banner->Images:'';
        			//prd($images);
              		if(!empty($images) && count($images) > 0){
              			foreach($images as $image){
              				if(!empty($image->name) && $storage->exists($path.$image->name)){
							$b_image = url('storage/banners/'.$image->name);
						}
					}
              	?>
                <div class="bannerSlWrp">
                  <img class="img-fluid" src="{{$b_image}}" alt="Market News and Insights">
                  <div class="bannerContent container-fluid paddingleftRight">
                    <h6 class="yelloHedaing"><?php echo $banner->title; ?></h6>
                    <p class="whiteText"><?php echo $banner->brief; ?></p>
                  </div>
                </div>
                <?php
        }
    }
    ?>

              </div>
            </div>
          </div>
      </div>
    </section>
    <section class="yelloLine wow fadeInDown"></section>

    <?php
    if(!empty($featured_blog) && count($featured_blog) > 0){

    	$f_blog_images = (isset($featured_blog->Images))?$featured_blog->Images:'';

    	$catName = '';
    	$category = (isset($featured_blog->blogCategories))?$featured_blog->blogCategories:'';
    	if(!empty($category) && count($category) > 0){
    		$category = $category->first();
    		$catName = $category->name;
    	}

    	$f_image = asset('assets/themes/theme-1/images/default-img.png');
    		if(!empty($f_blog_images) && count($f_blog_images)){
    			foreach($f_blog_images as $f_bimg){
    				if(!empty($f_bimg->image) && $storage->exists('blogs/'.$f_bimg->image)){
    					$f_image = asset('storage/blogs/'.$f_bimg->image);
    					break;
    				}
    			}
    		}
    ?>
    <section class="singleInsightsBlog wow fadeInDown">
      <div class="insightsBlogWrap">
        <div class="container">
          <div class="row  justify-content-center">
            <div class="col-12 col-sm-7 col-lg-7 col-xl-7 col-md-6">
              <div class="insightsBlogCont">
                  <div class="insightsBlogCat">
                    <a href="#">{{$catName}}</a></div>
                  <h1 class="landingHeading_employee_stories"><?php echo $featured_blog->title; ?></h1>
                  <p><?php echo $featured_blog->brief; ?></p>
                  <div class="newsButton">
                     <a href="{{url('insights/'.$featured_blog->slug)}}">LEARN MORE</a>
                  </div>
              </div><!-- insightsBlogCont -->
            </div>
            <div class="col-12 col-sm-5 col-lg-5 col-xl-5 col-md-6">
               <img src="{{$f_image}}" alt="<?php echo $featured_blog->title; ?>" class="img-fluid" />
            </div>
          </div>
        </div>

      </div>
    </section>
<?php } ?>

    <?php
    if(!empty($blogs) && count($blogs) > 0){
    ?>
    <section class="allInsightsBlog">
       <div class="container borderBottom">
        <div class="row">
        	<?php
        	foreach ($blogs as $blog){

    		$blog_images = (isset($blog->Images))?$blog->Images:'';

    		$category = (isset($blog->blogCategories))?$blog->blogCategories:'';

    		$cat1Name = '';
    		if(!empty($category) && count($category) > 0){
    			$category = $category->first();
    			$cat1Name = $category->name;
    		}
    		//prd();

    		$image = asset('assets/themes/theme-1/images/default-img.png');
    		if(!empty($blog_images) && count($blog_images)){
    			foreach($blog_images as $bimg){
    				if(!empty($bimg->image) && $storage->exists('blogs/'.$bimg->image)){
    					$image = asset('storage/blogs/'.$bimg->image);
    					break;
    				}
    			}
    		}
        	?>
          <div class="col-12 col-sm-4 col-lg-4 col-xl-4 col-md-6">
            <div class="blogBox">
              <div class="blogBoxImg">
                <img src="{{$image}}" alt="{{$cat1Name}}" class="img-fluid" />
              </div>
              <div class="insightsBlogCat">
                    <a class="" href="{{url('insights/'.$blog->slug)}}">{{$cat1Name}}</a></div>
              <div class="blogBoxCont">
                <p><?php echo $blog->title;?></p>
              </div>
            </div>
          </div>
      <?php  } ?>

        </div><!-- row -->
      </div><!-- container -->
    </section>
	<?php }  ?>


      <section class="knowMoreAbout wow fadeInDown">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-sm-8 col-lg-8 col-xl-8 col-md-8 col-12">
              <p>Drive efficiencies throughout your supply chain with our technology-enabled services.</p>
            </div>
            <div class="col-sm-4 col-lg-4 col-xl-4 col-md-4 col-12">
              <div class="knowMore">
                  <a href="{{url('services')}}">View Services</a>
              </div>
            </div>
          </div>
        </div>
      </section>



@slot('footerBlock')

@endslot

@endcomponent