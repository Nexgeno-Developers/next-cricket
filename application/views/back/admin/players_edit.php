<?php
foreach($players_data as $row){
?>
	<div class="tab-pane fade active in" id="edit">
		<?php
		echo form_open(base_url() . 'index.php/admin/players/update/' . $row['players_id'], array(
			'class' => 'form-horizontal',
			'method' => 'post',
			'id' => 'players_edit',
			'enctype' => 'multipart/form-data'
		));
		?>
			<div class="panel-body">
											 
			
				<div class="form-group">
					<label class="col-sm-4 control-label" for="demo-hor-1">Player Name</label>
					<div class="col-sm-6">
						<input type="text" name="players_name" value="<?= $row['players_name'];?>" id="demo-hor-1" class="form-control required" placeholder="Player Name" >
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label" for="demo-hor-1">Player Profile</label>
					<div class="col-sm-6">
						<input type="file" name="image" id="image" class="form-control" placeholder="Player Profile" >
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label" for="demo-hor-1">Profile Type</label>
					<div class="col-sm-6">
						<select class="form-control required" id="profile_type" name="profile_type">
							<option value="">Select Profile Type</option>
							<option value="Men" <?php if($row['profile_type']=='Men') echo 'Selected'; ?>>Men</option>
							<option value="Women" <?php if($row['profile_type']=='Women') echo 'Selected'; ?>>Women</option>
							<option value="Senior Citizen" <?php if($row['profile_type']=='Senior Citizen') echo 'Selected'; ?>>Senior Citizen</option>
							<option value="Kids" <?php if($row['profile_type']=='Kids') echo 'Selected'; ?>>Kids</option>
						</select>
					</div>
				</div>                      
				<div class="form-group">
					<label class="col-sm-4 control-label" for="demo-hor-1">Type</label>
					<div class="col-sm-6">
					<select class="form-control" id="type" name="type">
						<option value="">Select Type</option>
						<option value="Batsman" <?php if($row['type']=='Batsman') echo 'Selected'; ?>>Batsman</option>
						<option value="Bowler" <?php if($row['type']=='Bowler') echo 'Selected'; ?>>Bowler</option>
						<option value="All Rounder" <?php if($row['type']=='All Rounder') echo 'Selected'; ?>>All Rounder</option>
					</select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label" for="demo-hor-1">Style</label>
					<div class="col-sm-6">
						<select class="form-control" id="style" name="style">
						<option value="">Select Style</option>
						<option value="Left Hand Batsman" <?php if($row['style']=='Left Hand Batsman') echo 'Selected'; ?>>Left Hand Batsman</option>
						<option value="Right Hand Batsman" <?php if($row['style']=='Right Hand Batsman') echo 'Selected'; ?>>Right Hand Batsman</option>
						<option value="Left Hand Bowler" <?php if($row['style']=='Left Hand Bowler') echo 'Selected'; ?>>Left Hand Bowler</option>
						<option value="Right Hand Bowler" <?php if($row['style']=='Right Hand Bowler') echo 'Selected'; ?>>Right Hand Bowler</option>
					</select>
					</div>
				</div>
			<div class="form-group">
				<label class="col-sm-4 control-label" for="demo-hor-1">DOB</label>
				<div class="col-sm-6">
					<input type="date" class="form-control required" id="dob" name="dob" value="<?= $row['dob'];?>" placeholder="Date of Birth">
				</div>
			</div>
				<div class="form-group">
				<label class="col-sm-4 control-label" for="demo-hor-1">Category</label>
				<div class="col-sm-6">
					<select class="form-control" id="category" name="category">
					<option value="">Select Category</option>
					<?php foreach($all_categories as $row1){ ?>
						<option value="<?php echo $row1['category_id']; ?>" <?php if($row1['category_id']==$row['category_id']) echo 'Selected'; ?>><?php echo $row1['category_name']; ?></option>
					<?php } ?>
					</select>
				</div>
			</div>
			<div class="form-group">
			<label class="col-sm-4 control-label" for="demo-hor-1">Nick Name</label>
			<div class="col-sm-6">
				<input type="text" name="nick_name" id="nick_name" value="<?= $row['nickname'];?>" class="form-control" placeholder="Nick Name">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-4 control-label" for="demo-hor-1">Last Played League</label>
			<div class="col-sm-6">
				<input type="text" name="last_played_league" id="last_played_league" value="<?= $row['last_played_league'];?>" class="form-control required" placeholder="Last Played League">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-4 control-label" for="demo-hor-1">Address</label>
			<div class="col-sm-6">
			 <textarea class="form-control required" rows="5" name="address" id="address"  placeholder="Address"><?= $row['address'];?></textarea>
				
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-4 control-label" for="demo-hor-1">City</label>
			<div class="col-sm-6">
				<input type="text" name="city" id="city" class="form-control required" value="<?= $row['city'];?>" placeholder="City">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-4 control-label" for="demo-hor-1">Email</label>
			<div class="col-sm-6">
				<input type="email" name="email" id="email" class="form-control required" value="<?= $row['email'];?>" placeholder="Player Email">
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
	
	$("#image").change(function() {
		readURL(this);
	});
</script>