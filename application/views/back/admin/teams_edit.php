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
				<!-- <label class="col-sm-4 control-label" for="demo-hor-1">Virtual Point</label> -->
					<div class="col-sm-6">
						<input type="hidden" name="virtual_point" value="<?= $row['virtual_point'];?>" id="demo-hor-1"	placeholder="Virtual Point" class="form-control required" readonly>
					</div>
			</div>
			<div class="form-group">
				<label class="col-sm-4 control-label" for="demo-hor-1">League</label>
				<div class="col-sm-6">
					<select class="form-control required" id="league" name="league" required>
					<option value="">Select League</option>
					<?php foreach($all_leagues as $row1){ ?>
						<option value="<?php echo $row1['league_id']; ?>" <?php if($row1['league_id']==$row['league']) echo 'Selected'; ?>><?php echo $row1['league_name']; ?></option>
					<?php } ?>
					</select>
				</div>
			</div>
			<div class="panel-body">
				<input type="hidden" name="owner" value="<?php echo isset($owner['admin_id']) ? $owner['admin_id'] : ''; ?>">
				<div class="form-group">
					<label class="col-sm-4 control-label" for="demo-hor-1">Owner Name</label>
						<div class="col-sm-6">
							<input type="text" name="owner_name" id="demo-hor-1"	placeholder="Owner Name" class="form-control
							" value="<?php echo isset($owner['name']) ? $owner['name'] : ''; ?>" required>
						</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label" for="demo-hor-1">Owner Email</label>
						<div class="col-sm-6">
							<input type="email" name="owner_email" id="demo-hor-1"	placeholder="Owner Email" class="form-control"
							value="<?php echo isset($owner['email']) ? $owner['email'] : ''; ?>" required readonly>
						</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label" for="demo-hor-1">Owner Phone</label>
						<div class="col-sm-6">
							<input type="text" name="owner_phone" id="demo-hor-1"	placeholder="Owner Phone" class="form-control" value="<?php echo isset($owner['phone']) ? $owner['phone'] : ''; ?>" required>
						</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label" for="demo-hor-1">Owner Password</label>
						<div class="col-sm-6">
							<input type="text" name="owner_password" id="demo-hor-1"	placeholder="Owner Password" class="form-control">
						</div>
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