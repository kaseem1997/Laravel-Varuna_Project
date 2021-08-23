
<div id="capabilityEnquiry">
<div class="sccMsg"></div>

@include('snippets.front.flash')

<form method="POST" name="capabilityEnquiryForm" id="healthEnquiryForm" action="" accept-charset="UTF-8" role="form" enctype="multipart/form-data"
>
	{{ csrf_field() }}

	<div class="form-row">
		<div class="form-group col-md-6 col-sm-6 col-md-6 col-12 col-lg-5 col-xl-6">
			<input type="text" name="first_name" class="form-control firstName" id="firstName" placeholder="First Name*" value="{{old('first_name')}}">
			@include('snippets.errors_first', ['param' => 'first_name'])
		</div>

		<div class="form-group col-md-6 col-sm-6 col-md-6 col-12 col-lg-5 col-xl-6">
			<input type="text" name="last_name" class="form-control lastName" id="lastName" placeholder="Last Name*">
			@include('snippets.errors_first', ['param' => 'last_name'])
		</div>
	</div>
	<div class="form-row">
		<div class="form-group col-md-6 col-sm-6 col-md-6 col-12 col-lg-5 col-xl-6">
			<input type="email" name="email" class="form-control yourEmail" id="yourEmail" placeholder="Email*" value="{{ old('email') }}">
			@include('snippets.errors_first', ['param' => 'email'])
		</div>

		<div class="form-group col-md-4">
			<input type="text" name="phone" class="form-control yourPhone" id="yourPhone" placeholder="Phone*" value="{{ old('phone') }}">
			@include('snippets.errors_first', ['param' => 'phone'])
		</div>

		<div class="form-group col-md-2">
			<input type="text" name="zip" class="form-control yourZip" id="yourZip"  placeholder="Zip*" value="{{ old('zip') }}">

			@include('snippets.errors_first', ['param' => 'zip'])
		</div>
	</div>

	<div class="form-row">
		<div class="form-group col-md-6 col-sm-6 col-md-6 col-12 col-lg-5 col-xl-6">
			<input type="text" name="company" class="form-control companyName" id="companyName" placeholder="Company*" value="{{ old('company') }}">
			@include('snippets.errors_first', ['param' => 'company'])
		</div>
		<div class="form-group col-md-6 col-sm-6 col-md-6 col-12 col-lg-5 col-xl-6">
			<input type="text" name="title" class="form-control yourTitle" id="yourTitle" placeholder="Title*" value="{{ old('title') }}">
			@include('snippets.errors_first', ['param' => 'title'])
		</div>
	</div>

	<div class="form-row">
		<div class="form-group col-md-6">
			<h5>What is your company’s annual sales revenue?</h5>
			<div class="form-check">
				<input class="form-check-input" type="radio" name="annual_sales" id="Undertwocrores" value="Under ₹2 crores">
				<label class="form-check-label lableCustom" for="Under two crores">
					Under ₹2 crores
				</label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="radio" name="annual_sales" id="exampleRadios2" value="₹2 crores - ₹9.9 crores">
				<label class="form-check-label lableCustom" for="exampleRadios2">
					₹2 crores - ₹9.9 crores
				</label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="radio" name="annual_sales" id="exampleRadios2" value="₹10 crores - ₹49.9 crores">
				<label class="form-check-label lableCustom" for="exampleRadios2">
					₹10 crores - ₹49.9 crores
				</label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="radio" name="annual_sales" id="exampleRadios2" value="₹50 crore - ₹499.9 crores">
				<label class="form-check-label lableCustom" for="exampleRadios2">
					₹50 crore - ₹499.9 crores
				</label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="radio" name="annual_sales" id="exampleRadios2" value="₹500 crores or more">
				<label class="form-check-label lableCustom" for="exampleRadios2">
					₹500 crores or more
				</label>
			</div>
		</div><!-- form-group col-md-6 end -->
		<div class="form-group col-md-6">
			<h5>Questions or comments*</h5>
			<textarea class="form-control" name="comment" id="commentsArea" rows="5" placeholder="Enter comments"></textarea>
			@include('snippets.errors_first', ['param' => 'comment'])
		</div><!-- form-group col-md-6 -->
	</div><!--- <div class="form-row"> -->

		<div class="form-row">
			<div class="form-group col-md-6">
				<p>All fields marked with an asterisk (*) are required.</p>
			</div>
			<div class="form-group col-md-6">
				<button type="submit" class="btn btn-primary btncustom capabityBtn">Submit</button>
			</div>
		</div>
	</form>