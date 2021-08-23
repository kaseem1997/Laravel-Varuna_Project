<?php
$params = [];

$orderBy = ['blog_date'=>'desc'];
$params['orderBy'] = $orderBy;
$params['featured'] = true;

$newsData = CustomHelper::getBlogs($id='', $type='news', $limit='6', $params);
//prd($newsData->toArray());
if(!empty($newsData) && count($newsData) > 0){
	foreach ($newsData as $news){

		$news_date = CustomHelper::DateFormat($news->blog_date, 'M d Y');

		$news_images = (isset($news->Images))?$news->Images:'';

		$category = (isset($news->Category))?$news->Category:'';

		//prd($category->toArray());
?>
<li class="newsbox">
	<?php
	$backgroundImage = asset('public/assets/themes/theme-1/images/default-img.png');

	if(!empty($news_images) && count($news_images)){
		foreach($news_images as $bimg){
			if(!empty($bimg->image) && $storage->exists('blogs/thumb/'.$bimg->image)){
				$backgroundImage = asset('public/storage/blogs/thumb/'.$bimg->image);
				 }
			}
		}
		?>
		<?php /* <div class="imgsec" style="background:#ccc url(<?php echo $backgroundImage; ?>) center center no-repeat;">
			<img src="<?php echo asset('public/assets/themes/theme-1/images/news_blankimg.png'); ?>" alt="{{$news->title}}" />
		</div> */?>
		<div class="project-box-wrapper">
			<?php
			if(!empty($news_date)){ ?>
			<div class="date-box"><i class="date-icon"></i> 
			<?php echo $news_date; ?>
			</div>
			<?php } ?>
			
			<div class="title">{{$news->title}}</div>
			<?php
			if(!empty($news->content)){
			?>
			<div class="content">
				<?php 
				echo CustomHelper::wordsLimit($news->content, $limit = 300, $isStripTags=false, $allowTags=''); ?>
			</div>
			<?php } ?>
		</div>
</li>

<?php } 
}?>