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
<section class="fullwidth innerbanner" style="background: url('{{$b_image}}') center center no-repeat;"></section>
 <div class="breadcrumbs">
	<div class="container">
		<ul class="clearfix">
			<li><a href="{{url('/')}}">Home</a></li>	
			<li>Case Studies</li>			
		</ul>
	</div>
</div>
<section class="fullwidth innerpage blog_page">	
	<div class="container">
		<div class="headings headings-with-border text-center">Case Studies</div>
		<div class="eventslist gridsec">
		@include('components.case_studies.listing')
	</div>

	</div>
</section>
 


@slot('footerBlock')

<script type="text/javascript" src="{{url('public')}}/js/owl.carousel.min.js"></script> 

@endslot

@endcomponent