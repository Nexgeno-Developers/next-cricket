<?php
foreach ($league_data as $row) {
?>
	<div class="tab-pane fade active in" id="edit">
		<?php
		echo form_open(base_url() . 'index.php/admin/league/update/' . $row['league_id'], array(
			'class' => 'form-horizontal',
			'method' => 'post',
			'id' => 'league_edit',
			'enctype' => 'multipart/form-data'
		));
		?>
		<div class="panel-body">
			<div class="form-group">
				<label class="col-sm-4 control-label" for="demo-hor-1">League Name</label>
				<div class="col-sm-6">
					<input type="text" name="league_name" value="<?php echo $row['league_name']; ?>" id="demo-hor-1" class="form-control required" placeholder="League Name" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-4 control-label" for="demo-hor-1"> Description </label>
				<div class="col-sm-6">
					<textarea type="text" name="description" id="demo-hor-1" class="form-control required" placeholder="Description"><?php echo $row['description']; ?></textarea>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-4 control-label" for="demo-hor-1">
					No of Player in a Team
				</label>
				<div class="col-sm-6">
					<input type="text" name="no_of_players" id="demo-hor-1" value="<?php echo $row['player']; ?>"
						class="form-control required" placeholder="No of Players">
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
</script>