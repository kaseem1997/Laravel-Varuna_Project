<?php

$storage = Storage::disk('public');

$keyword = (request()->has('keyword'))?request()->keyword:'';
$cat = (request()->has('category'))?request()->category:'';
//pr($sectors);

if(!empty($case_studies) && count($case_studies) > 0){
?>
<ul>

			<?php 
			foreach ($case_studies as $case_study){
				//prd($blog->toArray);
			?>
			<li>
				<div class="sectorbox">
					<?php
							$backgroundImage = '';
							if(!empty($case_study->image) && $storage->exists('case_studies/thumb/'.$case_study->image)){

								$backgroundImage = url('public/storage/case_studies/thumb/'.$case_study->image);
								}
								?>
					<div class="blogimg" style="background: url('<?php echo $backgroundImage; ?>') center center no-repeat; background-size:cover;">
						<img src="{{asset('public/assets/themes/theme-1/images/blankblog.png')}}" alt="img" />
					</div>

					<div class="selectcont">
						<a href="{{url('case-studies/'.$case_study->slug)}}" class="heading2">{{$case_study->title}}</a>  
					</div> 
			 
			 </div>
			</li>
		<?php } ?>
		</ul>
	</div>
	<?php
}
?>


