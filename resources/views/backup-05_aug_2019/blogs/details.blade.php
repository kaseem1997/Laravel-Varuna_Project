<!DOCTYPE html>
<html>
<head>

@include('common.head')

	<link rel="stylesheet" type="text/css" href="{{url('public')}}/css/owl.carousel.min.css" />
</head>
<body>

@include('common.header')

<?php
//pr($blog->toArray());

$keyword = (request()->has('keyword'))?request()->keyword:'';

$storage = Storage::disk('public');

$blog_date = CustomHelper::DateFormat($blog->blog_date, 'M d, Y');

if(empty($blog_date)){
	$blog_date = CustomHelper::DateFormat($blog->created_at, 'M d, Y');
}

$blog_title = $blog->title;
$blog_content = $blog->content;

$blog_images = (isset($blog->Images))?$blog->Images:'';
?>

<div class="blog_wrap">
<section class="fullwidth innerpage blog_single">	
	<div class="container">

		<div class="row">
			<div class="col-sm-8">

				<?php  
				if(!empty($blog)){
				?>
				<div class="blog_left">
					<div class="heading">{{$blog_title}}</div>
					<ul class="posted_by">
						<li><strong>By: <span>Slumberjill</span></strong></li>
						<li>{{$blog_date}}</li>
					</ul>

					<?php
					if(!empty($blog_images) && count($blog_images)){
						foreach($blog_images as $bimg){
							if(!empty($bimg->image) && $storage->exists('blogs/'.$bimg->image)){
								?>
								<div class="images">
								<img src="{{url('public/storage/blogs/'.$bimg->image)}}" alt="{{$blog_title}}">
								</div>
								<?php
								break;
							}
						}
					}
					?>

					<p><?php echo $blog->content; ?></p>
					<div class="sharethis-inline-share-buttons"></div>

					
				</div>

				<?php } ?>


			</div>
			<div class="col-sm-4">
				<div class="blog_right">
					<div class="suscribe_box">
						<h4>Subscribe Now</h4>
						<p>Get the Latest Updates From slumberjill Blog</p>
						@include('common._subscribe_form')

						<?php 
						if(!empty($recent_blogs) && count($recent_blogs) > 0){
						?>
						<div class="realted_blog">
							<div class="head">Popular Posts</div>

							<?php
							foreach ($recent_blogs as $recent_blog){

								$recImage = $recent_blog->Images
							?>
							<a class="realted_blog_box" href="{{url('blogs/'.$recent_blog->slug)}}">

								<?php
								if(!empty($recImage) && count($recImage)){
									foreach($recImage as $img){
										if(!empty($img->image) && $storage->exists('blogs/'.$img->image)){

											$backgroundImage = url('public/storage/blogs/thumb/'.$img->image);

											?>
											<div class="blogs_images" style="background-image: url('<?php echo $backgroundImage; ?>');">
												<img src="{{url('public')}}/images/img-blank.png" alt="Slumber Jill" /> 
											</div>
											<?php
											break;
										}
									}
								}
								?>
								<div class="title">
									{{$recent_blog->title}} 
								</div>
							</a>
							<?php 
						}?>
							
						</div>
						<?php } ?>
					</div>
				</div>
			</div>
		</div>
	
		 
	</div>
</section>
</div>
 
@include('common.footer')

<script type='text/javascript' src='//platform-api.sharethis.com/js/sharethis.js#property=5d3026b85432b600120d59e6&product=inline-share-buttons' async='async'></script>
</body>
</html>