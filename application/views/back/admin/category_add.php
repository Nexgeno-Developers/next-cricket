<div>
	<?php
	echo form_open(base_url() . 'index.php/admin/category/do_add/', array(
		'class' => 'form-horizontal',
		'method' => 'post',
		'id' => 'category_add',
		'enctype' => 'multipart/form-data'
	));
	?>
		<div class="panel-body">
			<div class="form-group">
				<label class="col-sm-4 control-label" for="demo-hor-1"><?php echo translate('category_name');?></label>
				<div class="col-sm-6">
					<input type="text" name="category_name" id="demo-hor-1" class="form-control required" placeholder="<?php echo translate('category_name');?>" >
				</div>								
			</div>
			<div class="form-group">
				<label class="col-sm-4 control-label" for="demo-hor-1">Base Price</label>
				<div class="col-sm-6">
					<input type="text" name="base_price" id="demo-hor-1" class="form-control required" placeholder="Base Price" >
				</div>								
			</div>
			<div class="form-group">
				<label class="col-sm-4 control-label" for="demo-hor-1">Description</label>
				<div class="col-sm-6">
					<input type="text" name="description" id="demo-hor-1" class="form-control required" placeholder="Description" >
				</div>								
			</div>
		</div>
	</form>
</div>

<script>
	$(document).ready(function() {
		$("form").submit(function(e){
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

</script>