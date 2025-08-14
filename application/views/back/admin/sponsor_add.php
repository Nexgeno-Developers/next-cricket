<div>
	<?php

	echo form_open(base_url() . 'index.php/admin/sponsor/do_add/', array(
		'class' => 'form-horizontal',
		'method' => 'post',
		'id' => 'teams_add',
		'enctype' => 'multipart/form-data'
	));
	?>

	<div class="panel-body">
		<div class="form-group">
			<label class="col-sm-4 control-label" for="demo-hor-1">Sponsor Name</label>
			<div class="col-sm-6">
				<input type="text" name="name" id="demo-hor-1" placeholder="Sponsor Name" class="form-control required">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-4 control-label" for="demo-hor-1">Sponsor Logo</label>
			<div class="col-sm-6">
				<input type="file" name="logo" id="imgInp" class="form-control required" placeholder="Sponsor Logo" accept="image">
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-4 control-label" for="demo-hor-1">Sponsor Description</label>
			<div class="col-sm-6">
				<textarea name="promotion_text" class="form-control"></textarea>
			</div>
		</div>
	</div>

	<div class="panel-body">
		<div class="form-group">
			<label class="col-sm-4 control-label" for="demo-hor-1">Sponsor website url</label>
			<div class="col-sm-6">
				<input type="url" name="website_url" id="demo-hor-1" placeholder="Sponsor Website Url" class="form-control">
			</div>
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-4 control-label" for="demo-hor-1">Type</label>
		<div class="col-sm-6">
			<select class="form-control required" id="league" name="sponsor_type" required>
				<option value="">Select type</option>
				<option value="premium">Premium</option>
				<option value="gold">Gold</option>
			</select>
		</div>

	</div>

</div>
</div>

</form>
</div>

<script>
	$(document).ready(function() {
		$("form").submit(function(e) {
			event.preventDefault();
		});
	});

	function readURL(input) {

		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#wrap').hide('fast');
				$('#blah').attr('src', e.target.result);
				$('#wrap').show('fast');
			}
			reader.readAsDataURL(input.files[0]);
		}

	}

	$("#imgInp").change(function() {
		readURL(this);
	});
</script>