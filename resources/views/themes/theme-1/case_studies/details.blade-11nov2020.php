@component('themes.theme-1.layouts.main')

@slot('title')
    {{$meta_title or ''}}
@endslot

@slot('meta_description')
    {{$meta_description or ''}}
@endslot

@slot('headerBlock')

<link rel="stylesheet" type="text/css" href="{{url('public')}}/css/owl.carousel.min.css" />

@endslot

<!-- to attach class on body tag of page -->
@slot('bodyClass')
  index-page
@endslot

<?php
$storage = Storage::disk('public');

$image = asset('public/assets/themes/theme-1/images/default-img.png');
if(!empty($case_study->image) && $storage->exists('case_studies/'.$case_study->image)){
	$image = url('public/storage/case_studies/'.$case_study->image);
}

$detail_words = CustomHelper::get_words_count($case_study->content);

$total_decimal = $detail_words/200;
$reads_count = round($total_decimal);

if($reads_count == 0){
   $reads_count = "FEW SECONDS";
}else if($reads_count == 1){
   $reads_count = $reads_count.' MINUTE';
}else{
   $reads_count = $reads_count.' MINUTES';
}
?>

<section class="singleBlog  caseBorderBottom wow fadeInDown">
      <div class="singleBlogWrap case_studies_banner">
        <div class="container-fluid">
          <div class="row justify-content-center">
            <div class="col-12 col-sm-5 col-lg-5 col-xl-5 col-md-6">
              <div class="caseBlogCont">
                  <div class="caseBlogCat">
                    <a href="#">Case study</a></div>
                    <h5 class="casePostHeading"><a href="#" class="">{{$case_study->title}}</a></h5>

                  <?php echo $case_study->brief; ?>

                  <?php /*
                  <div class="caseAuthor">
                     <a href="#"><!-- {{$case_study->author_name}} . --> {{$reads_count}}</a>&nbsp;<a href="#"> READ</a>
                  </div> */?>

              </div><!-- insightsBlogCont -->
            </div>
            <div class="col-12 col-sm-7 col-lg-7 col-xl-7 col-md-6 outerBlogImgp0 outerBlogImgm0 position-relative">
              <div class="outerBlogImg">
               <img src="{{$image}}" alt="" class="img-fluid innerBlogImg" />
             </div>
            </div>
          </div>
        </div>

      </div>
    </section>


    <section class="singleBlogContSec">
       <div class="container sideborderBottom">
        <div class="row">
          <div class="col-12 col-sm-8 col-lg-8 col-xl-8 col-md-8 mt84">
            <h5><?php echo $case_study->sub_title; ?></h5>
            <div class="smallYellowLine"></div>
          </div>
          <div class="col-12 col-sm-4 col-lg-4 col-xl-4 col-md-4">
            <div class="blogSideBar"></div>
          </div>
            <div class="col-12 col-sm-8 col-lg-8 col-xl-8 col-md-8">
          <?php echo $case_study->description; ?>
           <!--<div class="col-12 col-sm-4 col-lg-4 col-xl-4 col-md-6">  -->




           <?php
           //prd($recent_case_study);

           if(!empty($related_insight) && count($related_insight) > 0){
           ?>
         </div>
          <div class="col-12 col-sm-4 col-lg-4 col-xl-4 col-md-4">
            <div class="blogSideBar">
              <h4>Related Insights</h4>

              <?php
              //pr($related_insight->toArray());
              $r_image = asset('public/assets/themes/theme-1/images/blog-img5.png');

              foreach ($related_insight as $r_case_stdy){

              	$re_detail_words = CustomHelper::get_words_count($r_case_stdy->content);

              	$re_total_decimal = $re_detail_words/200;
              	$re_reads_count = round($re_total_decimal);

              	if($re_reads_count == 0){
              		$re_reads_count = "few seconds";
              	}else if($re_reads_count == 1){
              		$re_reads_count = $re_reads_count.' Minute';
              	}else{
              		$re_reads_count = $re_reads_count.' Minutes';
              	}

              	$recentcaseDate = CustomHelper::DateFormat($r_case_stdy->created_at, $toFormat='d M, Y', $fromFormat='');

                //pr($r_case_stdy->image);

                $recent_blog_images = (isset($r_case_stdy->Images))?$r_case_stdy->Images:'';

                //pr($recent_blog_images->toArray());

              	/*$r_image = asset('public/assets/themes/theme-1/images/blog-img5.png');
              	if(!empty($r_case_stdy->image) && $storage->exists('insights/'.$r_case_stdy->image)){
              		$r_image = url('public/storage/insights/'.$r_case_stdy->image);
              	}*/

                
                if(!empty($recent_blog_images) && count($recent_blog_images) > 0){

                  //pr($recent_blog_images->toArray());
                  foreach($recent_blog_images as $bimg){
                    if(!empty($bimg->image) && $storage->exists('blogs/'.$bimg->image)){
                      $r_image = asset('public/storage/blogs/'.$bimg->image);
                      break;
                    }
                  }
                }

                //pr($r_image);
              ?>
              <div class="sideBlogBox sideBorderBtm">
                <h6><a href="{{url('insights/'.$r_case_stdy->slug)}}">{{$r_case_stdy->title}}</a> </h6>
                 <div class="sidebarTimeDate">
                     <a href="{{url('insights/'.$r_case_stdy->slug)}}">{{$recentcaseDate}} . {{$re_reads_count}}</a>&nbsp;<a href="#"> read</a>
                  </div>
                  <img src="{{$r_image}}" alt="" class="img-fluid" />
              </div>
          <?php } ?>

            </div>
          </div>

      <?php } ?>

        </div><!-- row -->
      </div><!-- container -->
    </section>

    <section class="knowMoreAbout wow fadeInDown">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-sm-8 col-lg-8 col-xl-8 col-md-8 col-12">
              <p>Drive efficiencies throughout your supply chain with our technology-enabled services</p>
            </div>
            <div class="col-sm-4 col-lg-4 col-xl-4 col-md-4 col-12">
              <div class="knowMore">
                  <a href="#">View Services</a>
              </div>
            </div>
          </div>
        </div>
      </section>

@slot('footerBlock')

<script type="text/javascript" src="{{url('public')}}/js/owl.carousel.min.js"></script>

@endslot

@endcomponent