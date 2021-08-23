<?php

$storage = Storage::disk('public');

$keyword = (request()->has('keyword'))?request()->keyword:'';
$cat = (request()->has('category'))?request()->category:'';
//pr($sectors);

if(!empty($media) && count($media) > 0){
?>
<ul>

			<?php 
			foreach ($media as $media){
				//prd($blog->toArray);
			?>
			<li>
				<div class="sectorbox">
					<?php
							$backgroundImage = '';
							if(!empty($media->image) && $storage->exists('media/thumb/'.$media->image)){

								$backgroundImage = url('public/storage/media/thumb/'.$media->image);
								}
								?>
					<div class="blogimg" style="background: url('<?php echo $backgroundImage; ?>') center center no-repeat; background-size:cover;">
						<img src="{{asset('public/assets/themes/theme-1/images/blankblog.png')}}" alt="img" />
					</div>

					<div class="selectcont">
						<a href="{{url('media/'.$media->slug)}}" class="heading2">{{$media->title}}</a>  
					</div> 
			 
			 </div>
			</li>
		<?php } ?>
		</ul>
	</div>
	<?php
}
?>


