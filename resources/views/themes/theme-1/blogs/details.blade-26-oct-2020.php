@component('themes.theme-1.layouts.main')

<?php
$storage = Storage::disk('public');

$blog_images = (isset($blog->Images))?$blog->Images:'';

$image = asset('public/assets/themes/theme-1/images/default-img.png');
if(!empty($blog_images) && count($blog_images)){
  foreach($blog_images as $bimg){
    if(!empty($bimg->image) && $storage->exists('blogs/'.$bimg->image)){
      $image = asset('public/storage/blogs/'.$bimg->image);
      break;
    }
  }
}
?>

@slot('title')
    {{$meta_title or 'Blogs'}}
@endslot

@slot('meta_description')
    {{$meta_description or ''}}
@endslot

@slot('og_image')
    {{$image or ''}}
@endslot

@slot('headerBlock')

<link rel="stylesheet" type="text/css" href="{{url('public')}}/css/owl.carousel.min.css" />

<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.min.js"></script>
<script src="https://html2canvas.hertzen.com/dist/html2canvas.js"></script>

@endslot
<!-- to attach class on body tag of page -->

@slot('bodyClass')
  index-page
@endslot

<?php

$category = (isset($blog->blogCategories))?$blog->blogCategories:'';

$cat1Name = '';
if(!empty($category) && count($category) > 0){
	$category = $category->first();
	$cat1Name = $category->name;
}

$blogDate = CustomHelper::DateFormat($blog->created_at, $toFormat='d M, Y', $fromFormat='');




$detail_words = CustomHelper::get_words_count($blog->content);

$total_decimal = $detail_words/200;
$reads_count = round($total_decimal);

if($reads_count == 0){
   $reads_count = "few seconds";
}else if($reads_count == 1){
   $reads_count = $reads_count.' Minute';
}else{
   $reads_count = $reads_count.' Minutes';
}
?>

<style type="text/css">
@media print {
   .noPrint {display:none;}
   /*.hide-on-screen {display:block;}*/
}
</style>

<section class="singleBlog wow fadeInDown">
      <div class="singleBlogWrap">
        <div class="container-fluid">
          <div class="row justify-content-center">
            <div class="col-12 col-sm-5 col-lg-5 col-xl-5 col-md-6">
              <div class="singleBlogCont">
                  <div class="insightsBlogCat">
                    <a href="#">{{$cat1Name}}</a></div>
                  <h5 class="postBlogHeading"><a href="#" class=""><?php echo $blog->title ?></a></h5>

                  <div class="blogTimeDate">
                     <a href="#"><?php if(!empty($blog->author_name)){ echo $blog->author_name.' . '; }?>{{$blogDate}} . {{$reads_count}}</a>&nbsp;<a href="#"> read</a>
                  </div>
                  <div class="blogShare">
                    <ul>
                      <!-- <li><img class="img-fluid roundIcon" src="{{asset('public/assets/themes/theme-1/images/socialShare.png')}}" /></li> -->
                      <li>
                       <div class="tooltipp">
                         <img class="img-fluid roundIcon" src="{{asset('public/assets/themes/theme-1/images/socialShare.png')}}" />
                         <span class="tooltiptext">
                           <ul class="socialShare">
                             <li><a href="https://www.facebook.com/sharer/sharer.php?u=<?php echo url('insights/'.$blog->slug);?>&amp;src=sdkpreparse"><i class="fab fabb fa-facebook "></i></a></li>
                             <li><a href="https://www.linkedin.com/shareArticle?mini=true&url=<?php echo url('insights/'.$blog->slug);?>&title=<?php echo $blog->slug;?>&source=<?php echo url('/');?>"><i class="fab fabb fa-linkedin "></i></a></li>
                             <li><a href="https://twitter.com/intent/tweet?url=<?php echo url('insights/'.$blog->slug);?>"><i class="fab fa-twitter fabb"></i></a></li>
                              <li><a href=""><i class="fab fabb fa-whatsapp"></i></a></li>
                           </ul>
                         </span>
                       </div>
                     </li>
                      <li>
                        <a href="javascript:void(0)" data-id="{{ $blog->id }}" class="print_invoice noPrin"><img class="img-fluid roundIcon" src="{{asset('public/assets/themes/theme-1/images/socialPrint.png')}}" /></a>
                      </li>
                      <li>
                        <a href="{{url('insights/download-pdf/'.$blog->id)}}" ><img class="img-fluid roundIcon" src="{{asset('public/assets/themes/theme-1/images/socialPDF.png')}}" /></a>
                      </li>
                      <!-- <li><img class="img-fluid roundIcon" src="{{asset('public/assets/themes/theme-1/images/socialShre.png')}}" /></li> -->

                      <!-- onclick='getPDF("code-adoption-cycles-what-we-can-learn-from-the-past-and-what-to-prepare-for-in-2020")' -->
                    </ul>
                  </div>

                  <?php /*
                  <div class='pop_download_pdf'><button onclick='getPDF("code-adoption-cycles-what-we-can-learn-from-the-past-and-what-to-prepare-for-in-2020")'>Download as PDF</button></div> */?>
              </div><!-- insightsBlogCont -->
            </div>
            <div class="col-12 col-sm-7 col-lg-7 col-xl-7 col-md-6">
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
          <div class="col-12 col-sm-8 col-lg-8 col-xl-8 col-md-6 mt84">
            <h5><?php echo $blog->subtitle; ?></h5>
            <div class="smallYellowLine"></div>
          </div>
          <div class="col-12 col-sm-4 col-lg-4 col-xl-4 col-md-6">
            <div class="blogSideBar"></div>
          </div>
          <div class="col-12 col-sm-8 col-lg-8 col-xl-8 col-md-6">
            <div class="singleContentSect olli__display">

            	<?php echo $blog->content; ?>
               <!--  <div class="blogShare">
                    <ul>
                      <li><img class="img-fluid roundIcon" src="{{asset('public/assets/themes/theme-1/images/socialShare.png')}}" /></li>
                      <li><img class="img-fluid roundIcon" src="{{asset('public/assets/themes/theme-1/images/socialPrint.png')}}" /></li>
                      <li><img class="img-fluid roundIcon" src="{{asset('public/assets/themes/theme-1/images/socialPDF.png')}}" /></li>
                      <li><img class="img-fluid roundIcon" src="{{asset('public/assets/themes/theme-1/images/socialShre.png')}}" /></li>
                    </ul>
                  </div> -->
            </div>
          </div>

          <?php
          if(!empty($recent_blogs) && count($recent_blogs) > 0){
          ?>
          <div class="col-12 col-sm-4 col-lg-4 col-xl-4 col-md-6">
            <div class="blogSideBar">
              <h4>Related Insights</h4>
              <?php
              foreach ($recent_blogs as $r_blog){

              	$recent_blog_images = (isset($r_blog->Images))?$r_blog->Images:'';

                $recentBlogDate = CustomHelper::DateFormat($r_blog->created_at, $toFormat='d M, Y', $fromFormat='');

              	$image = asset('public/assets/themes/theme-1/images/default-img.png');
              	if(!empty($recent_blog_images) && count($recent_blog_images)){
              		foreach($recent_blog_images as $bimg){
              			if(!empty($bimg->image) && $storage->exists('blogs/'.$bimg->image)){
              				$image = asset('public/storage/blogs/'.$bimg->image);
              				break;
              			}
              		}
              	}


                $r_detail_words = CustomHelper::get_words_count($r_blog->content);

                $r_total_decimal = $r_detail_words/200;
                $r_reads_count = round($r_total_decimal);

                if($r_reads_count == 0){
                 $r_reads_count = "few seconds";
               }else if($r_reads_count == 1){
                 $r_reads_count = $r_reads_count.' Minute';
               }else{
                 $r_reads_count = $r_reads_count.' Minutes';
               }
              ?>

              <div class="sideBlogBox sideBorderBtm">
                <h6><a href="{{url('insights/'.$r_blog->slug)}}"><?php echo $r_blog->title; ?></a> </h6>
                 <div class="sidebarTimeDate">
                     <a href="#">{{$recentBlogDate}} . {{$r_reads_count}}</a>&nbsp;<a href="{{url('insights/'.$r_blog->slug)}}"> read</a>
                  </div>
                  <img src="{{$image}}" alt="" class="img-fluid" />
              </div><!-- sideBlogBox -->
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



<script type="text/javascript">

  function getPDF(article_title){

    var HTML_Width = $(".singleContentSect").width();
    var HTML_Height = $(".singleContentSect").height();
    var top_left_margin = 15;
    var PDF_Width = HTML_Width+(top_left_margin*2);
    var PDF_Height = (PDF_Width*1.5)+(top_left_margin*2);
    var canvas_image_width = HTML_Width;
    var canvas_image_height = HTML_Height;

    var totalPDFPages = Math.ceil(HTML_Height/PDF_Height)-1;


    html2canvas($(".singleContentSect")[0],{allowTaint:true}).then(function(canvas) {
        canvas.getContext('2d');

        console.log(canvas.height+"  "+canvas.width);


        var imgData = canvas.toDataURL("image/jpeg", 1.0);
        var pdf = new jsPDF('p', 'pt',  [PDF_Width, PDF_Height]);
        pdf.addImage(imgData, 'JPG', top_left_margin, top_left_margin,canvas_image_width,canvas_image_height);


        for (var i = 1; i <= totalPDFPages; i++) {
            pdf.addPage(PDF_Width, PDF_Height);
            pdf.addImage(imgData, 'JPG', top_left_margin, -(PDF_Height*i)+(top_left_margin*4),canvas_image_width,canvas_image_height);
        }

        pdf.save(article_title+".pdf");
    });
}


$(document).ready(function(){

$(".print_invoice").click(function(){

  var current_sel = $(this);

  var id = $(this).attr('data-id');
          //alert(id); return false;
          var _token = '{{ csrf_token() }}';
          setTimeout(() => {
            $.ajax({
              url: "{{ route('insights.ajax_insight_print') }}",
              type: "POST",
              data: {id:id},
              dataType:"JSON",
              headers:{'X-CSRF-TOKEN': _token},
              cache: false,
              beforeSend:function(){
                     //$(".ajax_msg").html("");
                   },
                   success: function(resp){
                    if(resp.success){

                      printdiv(resp.viewHtml);
                    }
                    else{

                    }
                  }
                });
            }, 1000);
          });
});

function printdiv(printpage){

  var headstr = "<html><head><title></title></head><body>";
  //var headstr = '<html><head>'+'<meta charset="utf-8" />'+'<title></title></head><body>';
  //var headstr = '<html><head>'+'<meta charset="utf-8" /><title>'+'</title>'+'<style type="text/css">body {-webkit-print-color-adjust: exact; font-family: Arial; }</style></head><body>';
  var footstr = '</body>';
  var newstr = printpage
  var oldstr = document.body.innerHTML;
  document.body.innerHTML = headstr+newstr+footstr;
  window.print();
  window.location.reload();
  return false;
}
</script>

@endslot



@endcomponent