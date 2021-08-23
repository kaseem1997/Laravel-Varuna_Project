<?php
//pr($blog->toArray());

$keyword = (request()->has('keyword'))?request()->keyword:'';

$storage = Storage::disk('public');


$title = $case_study->title;
$description = $case_study->description;

$image = asset('public/assets/themes/theme-1/images/default-img.png');
if(!empty($case_study->image) && $storage->exists('case_studies/thumb/'.$case_study->image)){
	$image = url('public/storage/case_studies/thumb/'.$case_study->image);
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

