
<?php 
$storage = Storage::disk('public');

if(!empty($events) && count($events) > 0)
{
?>
<div class="table-lp-tender">
    <table class="table table-bordered table-striped" cellspacing="0" cellpadding="0">
    <tr>
		<th>S.No</th>
		<th style="width:200px;">Tender Reference No</th>
		<th>Title/&nbsp;Description</th>
		<th style="width:120px;">Issue&nbsp; Date</th>
		<th style="width:125px;">&nbsp;Closing Date</th>
		<!-- <th style="width:50px;">Download </th> -->
	</tr>
<?php 

foreach ($events as $event) { 

	//$start_date = CustomHelper::DateFormat($event->start_date, ' d M Y');
	//$end_date = CustomHelper::DateFormat($event->end_date, 'd M Y');
	$start_date = isset($event->start_date)?$event->start_date:'';
	$end_date = isset($event->end_date)?$event->end_date:'';

	$pdfPath = 'javascript:void(0)';
	if(!empty($event->pdf) && $storage->exists('events/pdf/'.$event->pdf)){
		$pdfPath = asset('public/storage/events/pdf/'.$event->pdf);
	}
?>
	<tr>
		<td><div class="count"></div></td>
		<td>{{$event->title}} <br><br>
			<?php echo $event->brief; ?>
		</td>
		<td><?php echo $event->description; ?></td>
		<td>
			<?php 
			if(!empty($start_date)){  ?>
			<div class="date">{{$start_date}}</div>
		    <?php }
		    ?>
		</td>
		<td>
			<?php
    		if($end_date){ ?>
			<div class="date">{{$end_date}}</div>
    		<?php }?>
    	</td>
		<!-- <td class="text-center">
			<a href="{{$pdfPath}}" target="_blank"><i class="pdf-icon"></i></a>
		</td> -->
	</tr>
<?php 
}
?>
</table>
</div>
<?php 
}
?>





<?php
/*
$storage = Storage::disk('public');

$keyword = (request()->has('keyword'))?request()->keyword:'';
$cat = (request()->has('category'))?request()->category:'';


		if(!empty($blogCategories) && count($blogCategories) > 0){
		foreach ($blogCategories as $category){
		
			$blogs = $category->Blogs;
	        //prd($blogs->toArray());

		?>



<?php
//prd($blogs);
?>
		<div class="blog_rows">
		<div class="strip_head">
			{{$category->name}}
		</div>
		<ul class="blog_list">

			<?php 
			foreach ($blogs as $blog){

				//prd($blog->toArray);
				$blog_date = CustomHelper::DateFormat($blog->blog_date, 'M d, Y');

				$blog_images = (isset($blog->Images))?$blog->Images:'';
			?>
			<li>
				<a href="{{url('blogs/'.$blog->slug)}}" class="blog_box">

					<?php
					if(!empty($blog_images) && count($blog_images)){
						foreach($blog_images as $bimg){
							if(!empty($bimg->image) && $storage->exists('blogs/thumb/'.$bimg->image)){

								$backgroundImage = url('public/storage/blogs/thumb/'.$bimg->image);
								?>
								<div class="images" style="background: url('<?php echo $backgroundImage; ?>');">
									<img src="{{url('public')}}/images/blog-blank.png" alt="Slumber Jill" /> 

									<div class="content">
										<span>{{$blog->title}}</span> 
									</div>
									<?php
									break; ?>
								</div>
								<?php }
							}
						}
						?>
					
				</a>
			</li>
			<?php } ?>
		</ul>
		<?php 
		if(empty($cat)){
		?>
		<div class="view_all">
			<a href="{{ url('blogs?category='.$category->slug) }}">View All</a>
		</div>
		<?php } ?>

	</div>
	<?php } 
}
*/?>


