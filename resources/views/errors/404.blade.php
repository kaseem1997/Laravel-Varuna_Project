<?php
$themeName = CustomHelper::getThemeName();
?>

@component('themes.'.$themeName.'.layouts.main')
@slot('title')
Be right back.
@endslot	
<style type="text/css">
.page404 { padding: 80px 0;}
.page404 h1{font-weight: 700; font-size: 100px;text-shadow: 1px 2px 3px #ffca05;}
.page404 p {font-size: 18px;}
.page404 p small {font-size: 18px;}
.page404 .socialbtn {color: #1c2c5e;font-weight: 700;background: #ffca05;padding: 10px 18px;display: inline-block; border-radius: 34px; margin-top: 15px;}
</style>	
<section class="fullwidth innerpage page404 text-center">
	<div class="container"> 
		<h1  class="title404">404</h1>
		<p>Oops, Sorry We Can't Find That Page!</p>
		<p><small>Either something went wrong or the page dosen’t exist anymore.</small></p>
		<a class="socialbtn" href="{{url('/')}}">Go Home</a>
	</div>
</section>
@endcomponent
