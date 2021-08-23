
<div class="career-box-categories">
	<div class="career-title-c">Current Openings</div>
	<ul class="tabs careers-categories">
<?php
$storage = Storage::disk('public');

foreach ($careerCategories as $category){
	?>

	<li class="tab-link  current" data-tab="tab1">
		<a class="" href="{{url('careers?cat='.$category->slug)}}#detail">{{$category->name}}</a>
	</li>
	<?php
	}
	?>

</ul>
</div>
<!-- <div class="tab-content current" id="tab1">
	<div class="title">Project Manager</div>
	<div class="content">
		As the number of possible tests for even simple software components is practically infinite, all.
	</div>
</div>
<div class="tab-content" id="tab2">
	<div class="title">Manager</div>
	<div class="content">
		As the number of possible tests for even simple software components is practically infinite, all.
	</div>
</div> -->

<div class="career-box-categories-c">
<?php

if(!empty($carrerData) && count($carrerData) > 0){
	//pr($carrerData->toArray());
	foreach ($carrerData as $career){

		$title = (isset($career->title))?$career->title:'';
		$brief = (isset($career->brief))?$career->brief:'';
		$description = (isset($career->description))?$career->description:'';
		$location = (isset($career->location))?$career->location:'';
		$qualification = (isset($career->qualification))?$career->qualification:'';
		$no_of_vacancy = (isset($career->no_of_vacancy))?$career->no_of_vacancy:'';
		$aggregate_marks = (isset($career->aggregate_marks))?$career->aggregate_marks:'';
		$max_age = (isset($career->max_age))?$career->max_age:'';
		$age_on_date = (isset($career->age_on_date))?$career->age_on_date:'';
		$experience = (isset($career->experience))?$career->experience:'';
		$experience_on_date = (isset($career->experience_on_date))?$career->experience_on_date:'';
		$applicable_category = (isset($career->applicable_category))?$career->applicable_category:'';
		$opening_date = (isset($career->opening_date))?$career->opening_date:'';
		$closing_date = (isset($career->closing_date))?$career->closing_date:'';
		
		$age_on_date = CustomHelper::DateFormat($career->age_on_date, 'M d, Y');
		$experience_on_date = CustomHelper::DateFormat($career->experience_on_date, 'M d, Y');
		$opening_date = CustomHelper::DateFormat($career->opening_date, 'M d, Y');
		$closing_date = CustomHelper::DateFormat($career->closing_date, 'M d, Y');


		$applicable_category = explode(',', $applicable_category);
		//pr($applicable_category);

		$category_arr = config('custom.category_arr');
		$catName = [];

		if(!empty($applicable_category)){

			foreach ($applicable_category as $ac){
				$catName[] = $category_arr[$ac];
			}
		}
		//pr($catName);
		?>

		<div class="category-box-item" id="detail">
			<div class="title">{{$title}}</div>
			<div class="content">
				<?php echo $brief; ?>
			</div>
			<div class="">Applicable Category:- <?php echo implode(', ', $catName); ?></div>
			<div class="">Location:- {{$location}}</div>
			<div class="">Qualification:- {{$qualification}}</div>
			<div class="">No. of Vacancy:- {{$no_of_vacancy}}</div>
			<div class="">Marks:- {{$aggregate_marks}}</div>
			<div class="">Max Age:- {{$max_age}}</div>
			<div class="">Age:- {{$age_on_date}}</div>
			<div class="">Experience:- {{$experience}}</div>
			<div class="">Experience Date:- {{$experience_on_date}}</div>
			<div class="">Opening Date:- {{$opening_date}}</div>
			<div class="">Closing Date:- {{$closing_date}}</div>
		</div>
<?php
}
}
else{
	?>
	<div class="category-box-item" id="detail">
	<?php
	echo 'No Vacancy';
}
?>
</div>
</div>