<?php
//prd($newsData->toArray());

if(!empty($newsData) && count($newsData) > 0){
?>

<ul class="list2">
<?php
$storage = Storage::disk('public');

foreach ($newsData as $news){ 

	$blog_date = CustomHelper::DateFormat($news->blog_date, 'M d, Y');

	$news_images = (isset($news->Images))?$news->Images:'';
	$category = (isset($news->Category))?$news->Category:'';
?>	
<li>
	<div class="newsbox">
		<?php /*
		$image = asset('public/assets/themes/theme-1/images/default-img.png');
		if(!empty($news_images) && count($news_images)){
			foreach($news_images as $bimg){


				if(!empty($bimg->image) && $storage->exists('blogs/thumb/'.$bimg->image)){

					$image = url('public/storage/blogs/thumb/'.$bimg->image);
					break;
				}
			}
		}?>
	 
		<div class="imgsec" style="background:#ccc url(<?php echo $image; ?>) center center no-repeat;">
				<img src="public/assets/themes/theme-1/images/blankimg.png" alt="{{$news->title}}" /> 
		</div> */?>
		<div class="contents">
			<?php
			if(!empty($blog_date)){ ?>
			<div class="date-box"><i class="date-icon"></i> 
			<?php echo $blog_date; ?>
			</div>
			<?php } ?>
			<div class="title">{{$news->title}}</div>
			<!-- <div class="category"><a href="#">{{$category->name}}</a></div> -->
			<?php
			if(!empty($news->content)){
			?>
			<div class="content">
				<?php 
				echo CustomHelper::wordsLimit($news->content, $limit = 100, $isStripTags=false, $allowTags=''); ?>
			</div>
			<?php } ?>
			<!-- <div class="read-more">Read More <i class="arrow-icon"></i></div> -->
		</div>
	</div>
	</a>
</li>
<?php
}
?>

</ul>
<?php 
}
?>

