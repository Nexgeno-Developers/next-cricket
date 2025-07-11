<div>
	<?php echo form_open(base_url() . 'index.php/admin/players/do_add/',array(
	'class'=> 'form-horizontal', 
	'method'=> 'post', 
	'id'=> 'players_add', 
	'enctype'=> 'multipart/form-data'
	));
?>
	<div class="panel-body">
		<div class="form-group">
			<label class="col-sm-4 control-label" for="demo-hor-1">Players Name</label>
			<div class="col-sm-6">
				<input type="text" name="players_name" id="players_name" class="form-control required" placeholder="Player Name">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-4 control-label" for="demo-hor-1">Player Profile</label>
			<div class="col-sm-6">
				<input type="file" name="image" id="image" class="form-control required" placeholder="Player Profile" accept="image">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-4 control-label" for="demo-hor-1">Profile Type</label>
			<div class="col-sm-6">
				<select class="form-control required" id="profile_type" name="profile_type">
					<option value="">Select Profile Type</option>
					<option value="Men">Men</option>
					<option value="Women">Women</option>
					<option value="Senior Citizen">Senior Citizen</option>
					<option value="Kids">Kids</option>
				</select>
			</div>
		</div>		
		<div class="form-group">
			<label class="col-sm-4 control-label" for="demo-hor-1">Type</label>
			<div class="col-sm-6">
				<select class="form-control required" id="type" name="type">
					<option value="">Select Type</option>
					<option value="Batsman">Batsman</option>
					<option value="Bowler">Bowler</option>
					<option value="Wicket Keeper - Batsman">Wicket Keeper - Batsman</option>
					<option value="All Rounder">All Rounder</option>
				</select>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-4 control-label" for="demo-hor-1">Style</label>
			<div class="col-sm-6">
				<select class="form-control required" id="style" name="style">
					<option value="">Select Style</option>
					<option value="Left Hand Batsman">Left Hand Batsman</option>
					<option value="Right Hand Batsman">Right Hand Batsman</option>
					<option value="Left Hand spin Bowler">Left Hand Spin Bowler</option>
					<option value="Right Hand spin Bowler">Right Hand Spin Bowler</option>
					<option value="Left Hand Fast Bowler">Left Hand Fast Bowler</option>
					<option value="Right Hand Fast Bowler">Right Hand Fast Bowler</option>
				</select>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-4 control-label" for="demo-hor-1">DOB</label>
			<div class="col-sm-6">
				<input type="date" class="form-control required" id="dob" name="dob" placeholder="Date of Birth">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-4 control-label" for="demo-hor-1">Category</label>
			<div class="col-sm-6">
				<select class="form-control required" id="category" name="category">
					<option value="">Select Category</option>
					<?php foreach($all_categories as $row) {
	?>
					<option value="<?php echo $row['category_id']; ?>">
						<?php echo $row['category_name'];
	?>
					</option>
					<?php
}

?>
				</select>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-4 control-label" for="demo-hor-1">Nick Name</label>
			<div class="col-sm-6">
				<input type="text" name="nick_name" id="nick_name" class="form-control" placeholder="Nick Name">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-4 control-label" for="demo-hor-1">Last Played League</label>
			<div class="col-sm-6">
				<input type="text" name="last_played_league" id="last_played_league" class="form-control required" placeholder="Last Played League">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-4 control-label" for="demo-hor-1">Address</label>
			<div class="col-sm-6">
			 <textarea class="form-control required" rows="5" name="address" id="address" placeholder="Address"></textarea>
				
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-4 control-label" for="demo-hor-1">City</label>
			<div class="col-sm-6">
				<input type="text" name="city" id="city" class="form-control required" placeholder="City">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-4 control-label" for="demo-hor-1">Email</label>
			<div class="col-sm-6">
				<input type="email" name="email" id="email" class="form-control required" placeholder="Player Email">
			</div>
		</div>
	</div>
	</form>
</div>
<script>
	$(document).ready(function () {
			$("form").submit(function (e) {
				event.preventDefault();
			});
		}

	);

	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function (e) {
				$('#wrap').hide('fast');
				$('#blah').attr('src',
					e.target.result);
				$('#wrap').show('fast');
			}
			reader.readAsDataURL(input.files[0]);
		}
	}

	$("#image").change(function () {
			readURL(this);
		}

	);
</script>
<script>
	$(function () {
			$('.datepicker').datepicker();
		}

	);
</script>