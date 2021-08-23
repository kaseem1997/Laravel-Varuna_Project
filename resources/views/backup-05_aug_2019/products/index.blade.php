<!DOCTYPE html>
<html>
<head>  

@include('common.head')

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="{{url('public/css/owl.carousel.min.css')}}" />
</head>
<body>

@include('common.header')


<?php
$storage = Storage::disk('public');

$priceFrom = (isset($priceFrom) && is_numeric($priceFrom))?$priceFrom:0;
$priceTo = (isset($priceTo) && is_numeric($priceTo))?$priceTo:1000;

$breadcrumbArr = [];

$breadcrumbStr = '';
$categoryBreadcrumb = '';

if(!empty($p2Category) && count($p2Category) > 0){
  //$breadcrumbArr['p2cat'] = (object)$p2Category->only(['name', 'slug']);
  //pr($p2Category->parent);
  $categoryBreadcrumb = CustomHelper::CategoryBreadcrumbFrontend($p2Category, '/', '', false);
}
elseif(!empty($parentCategory) && count($parentCategory) > 0){
  //$breadcrumbArr['pcat'] = (object)$parentCategory->only(['name', 'slug']);

  $categoryBreadcrumb = CustomHelper::CategoryBreadcrumbFrontend($parentCategory, '/', '', false);
}
/*if(!empty($p2Category) && count($p2Category) > 0){
  //$breadcrumbArr['p2cat'] = (object)$p2Category->only(['name', 'slug']);
  //pr($p2Category->parent);
  $categoryBreadcrumb = CustomHelper::CategoryBreadcrumbFrontend($p2Category, '/', '', false);
}*/

//pr($categoryBreadcrumb);

/*if(!empty($breadcrumbArr) && count($breadcrumbArr)){
  $lastBreadcrumb = last($breadcrumbArr);

  //pr($lastBreadcrumb);

  foreach($breadcrumbArr as $bKey=>$bVal){
    if($lastBreadcrumb->slug != $bVal->slug){
      $breadcrumbStr .= '<a href="'.url('products?'.$bKey.'='.$bVal->slug).'">'.$bVal->name.'</a>';
    }
    else{
      $breadcrumbStr .= $bVal->name;
    }
  }


}*/

//echo $breadcrumbStr;
?>


<section class="breadcrumbs fullwidth">
  <div class="container"> 
    <a href="{{url('')}}">Home</a>
    <?php
    if(!empty($categoryBreadcrumb)){
      echo $categoryBreadcrumb;
    }
    /*if(isset($parentCategory->name) && !empty($parentCategory->name) ){
      ?>
      {{$parentCategory->name}}
      <?php
    }
    if(isset($p2Category->name) && !empty($p2Category->name) ){
      ?>
      {{$p2Category->name}}
      <?php
    }*/
    ?>
  </div>
</section>

<section class="fullwidth innerlist">
  <div class="container">    
  
    @include('common.left_nav')
    
    <?php
    if(!empty($products) && count($products) > 0) {
      ?>
    <div class="rightcontent">
      <div class="main_inner_box">
		<div class="shortlist fullwidth">
			<div class="founditem"><span id="itemCount">{{$totalCount}}</span> Item(s) Found</div>
			<div class="gridlist"><span class="threelist"><small></small><small></small><small></small></span> <span class="fivelist"><small></small><small></small><small></small><small></small><small></small></span></div>

      <?php
      /*if(isset($keyword) && !empty($keyword)){
        ?>
        <div class="founditem">{{count($products)}} Item(s) Found</div>
        <?php
      }*/
      ?>

      <?php
      $products_sort_by_arr = config('custom.products_sort_by_arr');
      ?>
			
			<select class="shortby listShortBy">
				<option>Sort by :</option>
        <?php
        if(!empty($products_sort_by_arr) && count($products_sort_by_arr) > 0){
          foreach($products_sort_by_arr as $psaKey=>$psa){
            $selected = '';
            if($psaKey == $sort_by){
              $selected = 'selected';
            }
            ?>
            <option value="{{$psaKey}}" {{$selected}} >{{$psa}}</option>
            <?php
          }
        }
        ?>
								
			</select>
			</div>
		
    <ul class="listpro">

      <?php
      //pr($products->toArray());
      ?>
      
      @include('products._list')
       
    </ul>
    </div>

     
    <?php
  }
  else{
    ?>
	  
	  <div class="rightcontent">

      <div class="main_inner_box">
	  	<p><strong>No Product Found.</strong></p>
    </div>
	  </div>
   
  <?php
}
  ?>

</div>
  </div>
</section>



@include('common.footer')

<script type="text/javascript" src="{{url('public')}}/js/owl.carousel.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 

<script> 
	
$('.catlist > ul > li.active ul').show();
$( ".catlist > ul > li > span" ).click(function() {
	if ($( this ).parent().hasClass('active')){
    $('.catlist > ul > li').removeClass('active');
		$(this).next().hide();	
		
  } else {
    $(this).parent().addClass('active');
	  $(this).next().show();
  }
  	//$('.catlist > ul > li.active ul').slideToggle();	
});	

/*$(".topmenu > ul > li > a").each(function(){ 
	if($(window).width() < 1023)
    {		
		$(this).after( '<span class="plusicon"></span>' );		 
    }

});
  */
	
 $('.filterItem').click(function(){
        $("#filterForm").submit();
    });
	
$( ".topmenu > ul > li > a" ).click(function(e) {
    e.stopPropagation();
    if($(window).width() < 1023)
    {		
		$(this).next().fadeToggle();		 
    }
  });
	
$( ".filtermobile" ).click(function(e) {
    e.stopPropagation();
    if($(window).width() < 767)
    {
      if($('.sideinner').length)
      {
        $('.sideinner').fadeToggle();
      }
    }
  });
	
	
$( ".fivelist" ).click(function(e) {
    e.stopPropagation();
    if($(window).width() > 1199)
    {
		$('.threelist').removeClass('active');
		$(this).addClass('active');
      $('.listpro').addClass('fivelist');
    }
  });	
	
$( ".threelist" ).click(function(e) {
    e.stopPropagation();
    if($(window).width() > 1199)
    {
		$('.fivelist').removeClass('active');
		$(this).addClass('active');
      $('.listpro').removeClass('fivelist');
    }
  });


$(document).on("change", ".listShortBy", function(){
  var sortByVal = $(this).val();

  if(sortByVal && sortByVal != ""){
    $("form[name=filterForm]").find("input[name=sort_by]").val(sortByVal);
    $("form[name=filterForm]").submit();
  }
});


$(document).on("click", ".viewMore", function(){
  $(this).siblings(".moreItem").slideToggle();
  $(this).toggleClass("shownMore");

  if($(this).hasClass("shownMore")){
    $(this).text("- LESS");
  }
  else{
    $(this).text("+ MORE");
  }
});

var priceFrom = parseInt("{{$priceFrom}}");
var priceTo = parseInt("{{$priceTo}}");
	

  $( "#slider-range" ).slider({
      range: true,
      min: 0,
      max: 5000,
      values: [ priceFrom, priceTo ],
      slide: function( event, ui ) {
        $( "#amount" ).val( ui.values[ 0 ] + " - " + ui.values[ 1 ] );
      },
      change: function( event, ui ){
        $("#filterForm").find("input[name=price_range]").val(ui.values);
        $("#filterForm").submit();
      }
    });
    $( "#amount" ).val( $( "#slider-range" ).slider( "values", 0 ) +
      " - " + $( "#slider-range" ).slider( "values", 1 ) );

    

var isLoadMore = true;

     
    $(window).scroll(function () {

      var totalCount = parseInt($("input[name=total_count]").val());
      var viewCount = parseInt($("input[name=view_count]").val());


      var footerHeight = parseInt($(".footerBox").height());

      if(viewCount < totalCount){
        
        if ( isLoadMore && parseInt($(window).height() + $(window).scrollTop() + footerHeight ) >= parseInt($(document).height()) ) {

          isLoadMore = false;
          loadMore();
        }
      }
    });


$(document).on("click", ".loadMoreBtn", function(){
  var currSel = $(this);
  loadMore(currSel);
});

function loadMore(){

  var loadMoreForm = $("form[name=loadMoreForm]");
  var filterForm = $("form[name=filterForm]");

  var _token = '{{ csrf_token() }}';

  $.ajax({
    url: "{{ url('products/load_more') }}",
    type: "POST",
    data: loadMoreForm.serialize() + "&" + filterForm.serialize(),
    dataType:"JSON",
    headers:{'X-CSRF-TOKEN': _token},
    cache: false,
    beforeSend:function(){

    },
    success: function(resp){
      if(resp.success){
        isLoadMore = true;
        if(resp.list){
          $(".loadMoreBox").remove();
          $(".listpro").append(resp.list);

          /*if(resp.viewCount){
            $("#itemCount").text(resp.viewCount);
          }*/
        }
      }

    }
  });
}

</script>

</body>
</html>