<?php

	foreach($teams_data as $row){

?>
	<div class="tab-pane fade active in" id="edit">
		<?php
			echo form_open(base_url() . 'index.php/admin/teams/update/' . $row['teams_id'], array(
				'class' => 'form-horizontal',
				'method' => 'post',
				'id' => 'teams_edit',
				'enctype' => 'multipart/form-data'
			));
		?>
		<div class="panel-body">
				<div class="form-group">
					<label class="col-sm-4 control-label" for="demo-hor-1">Team Name</label>
					<div class="col-sm-6">
						<input type="text" name="teams_name" value="<?= $row['teams_name'];?>" id="demo-hor-1" class="form-control required" placeholder="Team Name" >
					</div>
				</div>
				<div class="form-group">
			<label class="col-sm-4 control-label" for="demo-hor-1">Team Profile</label>
			<div class="col-sm-6">
				<input type="file" name="logo" id="imgInp" class="form-control" placeholder="Team Profile" accept="image">
			</div>
		</div>
			<div class="form-group">
				<label class="col-sm-4 control-label" for="demo-hor-1">Virtual Point</label>
					<div class="col-sm-6">
						<input type="text" name="virtual_point" value="<?= $row['virtual_point'];?>" id="demo-hor-1"	placeholder="Virtual Point" class="form-control required">
					</div>
			</div>
			<div class="form-group">
				<label class="col-sm-4 control-label" for="demo-hor-1">League</label>
				<div class="col-sm-6">
					<select class="form-control" id="league" name="league">
					<option value="">Select League</option>
					<?php foreach($all_leagues as $row1){ ?>
						<option value="<?php echo $row1['league_id']; ?>" <?php if($row1['league_id']==$row['league']) echo 'Selected'; ?>><?php echo $row1['league_name']; ?></option>
					<?php } ?>
					</select>
				</div>
			</div>
		</div>
		</form>
	</div>

<?php
	}
?>
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