@component('themes.theme-1.layouts.main')

@slot('title')
    {{$meta_title or ''}}
@endslot

@slot('meta_description')
    {{$meta_description or ''}}
@endslot

@slot('headerBlock')

<link rel="stylesheet" type="text/css" href="{{asset('public/assets/themes/theme-1/css/owl.carousel.min.css')}}" />

@endslot

<!-- to attach class on body tag of page -->
@slot('bodyClass')
  teams_pages_main
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
<section class="fullwidth innerbanner" style="background: url('<?php echo $banner_image;?>') center center no-repeat;">
<!-- <img src="" alt="Industries &amp; Applications"> -->
</section>
<section class="yelloLine wow fadeInDown"></section>
<div class="breadcrumbs">
	<div class="container">
		<div class="breadcrum">
		<ul class="clearfix breadcrum_list">

			<li><a href="{{url('/')}}">Home</a></li>	
			<li>{{$cms->title}}</li>			
		</ul>
	</div>
	</div>
</div>
<section class="fullwidth innerpage cmlayout">
<div class="container">
	<div class="servcont text-center">
      <div class="headings headings-with-border h3_heading_seo pt40">{{$cms->title}}</div>
    </div>
    <div class="cms-content-wrapper">
    	<?php 
	    if(!empty($image)){
	    ?>
		<div class="pageimg">
			<img src="<?php echo $image;?>" alt="{{$cms->title}}">
		</div>
		<?php } ?>
		<div class="cmscontent">
	     <?php echo $cms->content; ?>
		</div>
    </div>
  </div>
</section>

@slot('footerBlock')

@endslot


@endcomponent