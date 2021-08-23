@component('themes.theme-1.layouts.main')

@slot('title')
    {{$meta_title or 'Media | Varuna Group'}}
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
?>

<section class="" style="background-color: #1c2c5e; text-align: center; padding:20px 0px">
  <div class="container">
  <div class="row">
    <div class="col-md-4 col-sm-12">
  
    </div>
    <div class="col-md-4 col-sm-12" style="text-align: center !important;margin: auto;">
      
  <select class="form-control col-md-3 col-sm-12" style="max-width: 68%; float: left; margin-right: 20px;">
    {{-- action="{{route('category.store')}}" --}}
    {{-- <p href="{{url('media/'.$media->category_id)}}">{{$media->title}}</p> --}}
      <option class="form-control" selected="select" >Select Category</option>
      <option class="form-control" value="red" >Press Release</option>
      <option class="form-control" value="blue">Thought Leadership</option>
      <option class="form-control" value="green">Industry Feature</option>
      
  </select>
  <button class="form-control col-md-3 col-sm-12 myreset-btn"  onClick="refreshPage()">Reset</button>

  
    </div>
    <div class="col-md-4 col-sm-12">
 
    </div>
    </div>
</div>
</section>


  


<section class="bannerSec wow fadeInDown">
        <div class="row">
          <div class="col-12">
            <div class="owl-carousel bannerSlider">
              <div class="item">
                <div class="bannerSlWrp">
                  <img class="img-fluid" src="{{$b_image}}" alt="Explore how we enabled an industry leader in the FMCG sector to boost its profits by optimising its warehousing & secondary distribution.">
                  <div class="bannerContent container-fluid paddingleftRight">
                    <div class="banner_yellow_text">{{$banner_title}}</div>
                    <p class="whiteText"><?php echo $brief; ?></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
      </div>
    </section>
    <div class="breadcrum">
  <div class="container">
  <ul class="breadcrum_list">
    <li>
      <a href="{{url('/')}}">Home</a>
    </li>
    
     <li>
    Media
    </li>
  </ul>
</div>
</div>


    <section class="yelloLine wow fadeInDown"></section>

    <section class="twoColConSection wow fadeInDown singleInsightsBlog media_page">
          <div class="container">
            <ul class="twocol-flex">

            	<?php
            	if(!empty($media) && count($media) > 0){

            		foreach ($media as $media){

            			$r_image = asset('assets/themes/theme-1/images/blog-img5.png');
            			if(!empty($media->image) && $storage->exists('media/'.$media->image)){
            				$r_image = url('storage/media/'.$media->image);
            			}
            	?>
              <p href="{{url('media/'.$media->category_id)}}">{{$media->category_id}}</p>
              <li>
              <div class="img-box">
                 <img src="{{$r_image}}" alt="{{$media->title}}" class="img-fluid imgRadious flex-left" />
              </div>
              
              <div class="content-box">
                 <div class="leftContEmp">
                    <h1 class="landingHeading_employee_stories">{{$media->title}}</h1>
                    <p><?php echo $media->brief;?></p>
                    <div class="newsButton">
                       <a href="{{url('media/'.$media->slug)}}">LEARN MORE</a>
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

<script type="text/javascript" src="{{url('')}}/js/owl.carousel.min.js"></script> 

@endslot

@endcomponent