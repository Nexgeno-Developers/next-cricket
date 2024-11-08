
	<div class="tab-pane fade active in" id="edit">
		<?php
			echo form_open(base_url() . 'index.php/admin/sponsor/update/' . $sponsor['id'], array(
				'class' => 'form-horizontal',
				'method' => 'post',
				'id' => 'sponsor_edit',
				'enctype' => 'multipart/form-data'
			));
		?>
		<div class="panel-body">
			<div class="form-group">
				<label class="col-sm-4 control-label" for="demo-hor-1">Sponsor Name</label>
				<div class="col-sm-6">
					<input type="text" name="name" id="demo-hor-1" placeholder="Sponsor Name" class="form-control" value="<?php echo $sponsor['name']; ?>" required>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-4 control-label" for="imgInp">Sponsor Logo</label>
				<div class="col-sm-6">
					<input type="file" name="logo" id="imgInp" class="form-control" placeholder="Sponsor Logo" accept="image/*">
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-4 control-label" for="demo-hor-1">Sponsor Description</label>
				<div class="col-sm-6">
					<textarea name="promotion_text" class="form-control"><?php echo $sponsor['promotion_text']; ?></textarea>
				</div>
			</div>
		</div>

		<div class="panel-body">
			<div class="form-group">
				<label class="col-sm-4 control-label" for="demo-hor-1">Sponsor Website URL</label>
				<div class="col-sm-6">
					<input type="url" name="website_url" id="demo-hor-1" placeholder="Sponsor Website URL" class="form-control" value="<?php echo $sponsor['website_url']; ?>">
				</div>
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-4 control-label" for="league">Type</label>
			<div class="col-sm-6">
				<select class="form-control" id="league" name="sponsor_type" required>
					<option value="">Select type</option>
					<option value="premium" <?php if ($sponsor['type'] == 'premium') echo 'selected'; ?>>Premium</option>
					<option value="gold" <?php if ($sponsor['type'] == 'gold') echo 'selected'; ?>>Gold</option>
				</select>
			</div>
		</div>

		</form>
	</div>

<script>
	$(document).ready(function() {
		$("form").submit(function(e) {
			return false;
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