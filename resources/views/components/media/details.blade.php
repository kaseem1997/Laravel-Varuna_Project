<?php
//pr($blog->toArray());

$keyword = (request()->has('keyword'))?request()->keyword:'';

$storage = Storage::disk('public');


$title = $media->title;
$description = $media->description;

$image = asset('public/assets/themes/theme-1/images/default-img.png');
if(!empty($media->image) && $storage->exists('media/thumb/'.$media->image)){
	$image = url('public/storage/media/thumb/'.$media->image);
}

?>

<h2>{{$title}}</h2>
<div class="dtbg">
<img src="<?php echo $image;?>" alt="{{$title}}">
	
</div>
<div class="content">
	<?php
	echo $description;
	?>

</div>

