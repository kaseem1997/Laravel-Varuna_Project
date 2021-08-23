@component('admin.layouts.main')

@slot('title')
Admin - Manage Customers - {{ config('app.name') }}
@endslot


<?php
$back_url = (request()->has('back_url'))?request('back_url'):'';
?>
<div class="row">
	<div class="col-md-12">
		<div class="titlehead">
			<h1 class="pull-left">Orders View </h1> 

			<?php
			if(!empty($back_url)){
				?>
				<a href="{{ url($back_url) }}" class="btn btn-sm btn-success pull-right">Back</a>
				<?php
			}
			?>
		</div>
	</div>
</div>


@include('snippets.errors')
@include('snippets.flash')



<?php
if(!empty($order) && $order->count() > 0){

	//pr($order->toArray());

	$orderStatusDetails = $order->orderStatusDetails;

	$orderStatus = (isset($orderStatusDetails->name))?$orderStatusDetails->name:'';

	$added_on = CustomHelper::DateFormat($order->created_at, 'd F y');

	$orderItems = $order->orderItems;

	$billingCityName = '';
	$billingStateName = '';
	$billingCountryName = '';


	$billingCity = $order->billingCity;
	$billingState = $order->billingState;
	$billingCountry = $order->billingCountry;

	if(isset($billingCity->name) && !empty($billingCity->name)){
		$billingCityName = $billingCity->name;
	}
	if(isset($billingState->name) && !empty($billingState->name)){
		$billingStateName = $billingState->name;
	}
	if(isset($billingCountry->name) && !empty($billingCountry->name)){
		$billingCountryName = $billingCountry->name;
	}


	$shippingCityName = '';
	$shippingStateName = '';
	$shippingCountryName = '';


	$shippingCity = $order->shippingCity;
	$shippingState = $order->shippingState;
	$shippingCountry = $order->shippingCountry;


	if(isset($shippingCity->name) && !empty($shippingCity->name)){
		$shippingCityName = $shippingCity->name;
	}
	if(isset($shippingState->name) && !empty($shippingState->name)){
		$shippingStateName = $shippingState->name;
	}
	if(isset($shippingCountry->name) && !empty($shippingCountry->name)){
		$shippingCountryName = $shippingCountry->name;
	}

	$orderStatusArr = config('custom.order_status_arr');

	$billingAddrArr = CustomHelper::formatOrderAddress($order, $isBilling=true, $isPhone=true, $isEmail=true);
	$shippingAddrArr = CustomHelper::formatOrderAddress($order, $isBilling=false, $isPhone=true, $isEmail=true);

	//pr($shippingAddrArr);

	?>
	<div class="table-responsive ordership">
		<div class="orderheading">
			<div class="col-sm-6 col-md-3 ">
				<label>Order Id :</label> {{$order->id}}
			</div>
			<div class="col-sm-6 col-md-3 ">
				<label>Added on:</label> {{$added_on}}
			</div>
			<div class="col-sm-6 col-md-3 ">
				<label>Order Status:</label> {{$orderStatus}}</div>
				<div class="col-sm-6 col-md-3">
					<label>Payment Status:</label> {{ucfirst($order->payment_status)}}  
				</div>
			</div>

			<div class="row"> 
				<div class="col-md-6 form-group addressfilds">
					<h4><strong>Billing Address</strong></h4>

					<?php echo '<p>'.implode('</p><p>', $billingAddrArr).'</p>'; ?>

					<?php
					/*
					<p><span>Name :</span> {{$order->billing_name}}</p>
					<p><span>Email :</span>  {{$order->billing_email}}</p>
					<p><span>Phone :</span> {{$order->billing_phone}}</p> 
					<p><span>Address :</span>  {{$order->billing_address}}, {{$order->billing_locality}}, {{$billingCityName}}</p> 
					<p><span>Pin Code :</span> {{$order->billing_pincode}}</p>
					<p><span>State :</span> {{$billingStateName}}</p> 
					<p><span>Country :</span> {{$billingCountryName}}</p>
					*/
					?> 
				</div>


				<div class="col-md-6 form-group addressfilds">
					<h4><strong>Shipping Address</strong></h4>

					<?php echo '<p>'.implode('</p><p>', $shippingAddrArr).'</p>'; ?>
					
					<?php
					/*
					<p><span>Name :</span> {{$order->shipping_name}}</p> 
					<p><span>Email :</span> {{$order->shipping_email}}</p> 
					<p><span>Phone :</span> {{$order->shipping_phone}}</p> 
					<p><span>Address :</span> {{$order->shipping_address}}, {{$order->shipping_locality}}, {{$shippingCityName}}</p> 
					<p><span>Pin Code :</span> {{$order->shipping_pincode}}</p> 
					<p><span>State :</span> {{$shippingStateName}} </p>
					<p><span>Country :</span> {{$shippingCountryName}} </p>
					*/
					?>                       
				</div>


			</div>

			<?php
			if(!empty($orderItems) && count($orderItems) > 0){
				?>
				<table class="table table-striped">
					<tr>
						<th>Product</th>
						<th>Price</th>
						<th>Sale Price</th>
						<th>Quantity</th>
						<th>Total (Rs)</th>
					</tr>

					<?php

					$storage = Storage::disk('public');

					$img_path = 'products/';
					$thumb_path = $img_path.'thumb/';

					foreach($orderItems as $item){

						//pr($item->toArray());

						$product_id = $item->product_id;

						$product = $item->productDetail;

						$defaultImage = $product->defaultImage;
						$productImages = $product->productImages;

						$imgUrl = '';

						if(!empty($defaultImage) && count($defaultImage) > 0){
							if(!empty($defaultImage->image) && $storage->exists($thumb_path.$defaultImage->image) ){
								$imgUrl = url('public/storage/'.$thumb_path.$defaultImage->image);
							}
						}

						if(empty($imgUrl)){
							if(!empty($productImages) && count($productImages) > 0){
								$productImg = $productImages[0];
								if(!empty($productImg->image) && $storage->exists($thumb_path.$productImg->image) ){
									$imgUrl = url('public/storage/'.$thumb_path.$productImg->image);
								}
							}
						}

						?>

						<tr>

							<td>{{$item->product_name}} <br>

								<?php 
								if(!empty($imgUrl)){ 
									?>
									<img src="{{ url($imgUrl) }}" style="width: 75px; height:  75;"> <br>
									<?php
								}
								?>


							</td>
							<td>{{$item->price}}</td>
							<td>{{$item->item_price}}</td>
							<td>{{$item->qty}}</td>
							<td>{{$item->item_price*$item->qty}}</td>
						</tr>
						<?php
					}
					?>



					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td><b>Sub Total</b></td>
						<td>{{$order->sub_total}}</td>
					</tr>

					<?php
					if($order->discount > 0){
						?>

						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td><b>Discount</b></td>
							<td>{{$order->discount}}</td>
						</tr>

						<?php
					}
					?>

					<?php
					if($order->coupon_discount > 0){
						?>

						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td><b>Coupon Discount</b></td>
							<td>-{{$order->coupon_discount}}</td>
						</tr>

						<?php
					}
					?>

					<?php
					if($order->tax > 0){
						?>

						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td><b>Tax</b></td>
							<td>{{$order->tax}}</td>
						</tr>

						<?php
					}
					?>

					<?php
					if($order->shipping_charge > 0){
						?>

						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td><b>Shipping Charge</b></td>
							<td>{{$order->shipping_charge}}</td>
						</tr>
						<?php
					}
					?>

					<?php
					if($order->used_wallet_amount > 0){
						?>

						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td><b>Used Wallet Amount</b></td>
							<td>{{$order->used_wallet_amount}}</td>
						</tr>

						<?php
						if($order->total > $order->used_wallet_amount){
							?>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td><b>Online Payment</b></td>
								<td>{{$order->total - $order->used_wallet_amount}}</td>
							</tr>
							<?php
						}
						?>

						

						<?php
					}
					?>

					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td><b>Total</b></td>
						<td>{{$order->total}}</td>
					</tr>


				</table>
				<?php
			}
			?>                
		</div>
		<?php
	}
	?>


	<div class="row">
		<div class="col-md-12">
			<h3>Change Order Status </h3>
		</div>
	</div>



	<form method="POST" action="" accept-charset="UTF-8"  role="form">
		{{ csrf_field() }}

		<div class="row">

			<table class="table table-striped">
				<tr>
					<th>Payent Status</th>
					<th>Order Status</th>
					<th>Comment *</th>
				</tr>

				<tr>
					<td>
						<select class="form-control" name="payment_status">
							<option value="">Please Select</option>
							<option value="pending" <?php if($order->payment_status == 'pending') { echo 'selected'; } ?> >Pending</option>
							<option value="receieved" <?php if($order->payment_status == 'receieved') { echo 'selected'; } ?> >Recieved</option>

						</select>
					</td>
					
					<td> <select class="form-control" name="order_status">

						<?php
						if(!empty($orderStatusArr) && count($orderStatusArr) > 0){
							foreach($orderStatusArr as $osKey=>$osVal){

								$selected = '';
								if($order->order_status == $osKey){
									$selected = 'selected';
								}
								?>
								<option value="{{$osKey}}" {{$selected}} >{{$osVal}}</option>

								<?php
							}
						}
						?>

					</select></td>

					<td class="{{ $errors->has('comment') ? ' has-error' : '' }}">
						<textarea class="form-control" name="comment"></textarea>
						@include('snippets.errors_first', ['param' => 'comment'])
					</td>


				</th>
			</tr>
			<tr>
				<td>
					<input type="submit" name="change_order_status" value="Save" class="btn btn-sm btn-success" >
				</td>
			</tr>

		</table>

	</div>

</form>

<div class="row">
	<div class="col-md-12">
		<h3>Order History </h3>

		<?php
		if(!empty($orderHistory) && $orderHistory->count() >0 ){			

			?>

			<table class="table table-striped">
				<tr>
					<th>Order Status</th>
					<th>Comment</th>
					<th>Added On</th>
				</tr>

				<?php
				foreach($orderHistory as $oh){
					$added_on = CustomHelper::DateFormat($oh->created_at, 'd F y');
					?> 
					<tr>
						<td>
							<?php
							if(isset($orderStatusArr[$oh->order_status])){
								echo $orderStatusArr[$oh->order_status];
							}
							?>

						</td>
						<td>{{$oh->comment}}</td>
						<td>{{ $added_on}}</td>

					</tr>


					<?php
				}
				?>
			</table>
			<?php
		}
		else echo 'No history found';
		?>

		</div>
	</div>





	@endcomponent