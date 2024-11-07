
	<?php

	echo form_open(base_url() . 'index.php/admin/teams/add_sold_player/', array(
		'class' => 'form-horizontal',
		'method' => 'post',
		'id' => 'add_sold_player',
		'enctype' => 'multipart/form-data'
	));
	?>
		<input type="hidden" name="team_id" value="<?= $team_id; ?>" >
		<div class="panel-body">
			<div class="form-group">
				<div class="form-group" style="font-size: 16px;"><br>
					<label class="col-sm-4 control-label" for="demo-hor-1">Players</label>
					<div class="col-sm-6" style=" z-index: 999999999;">
						<select class="selectpicker" name="player" data-live-search="true">
							<option value="">Select Player</option>
							<?php foreach($all_players as $ap): ?>
							<option value="<?= $ap['players_id']; ?>"><?= $ap['players_name']; ?></option>
							<?php endforeach; ?>
						</select>
					</div>
				</div>
			</div>
		</div>
	</form>

<script>
$('.selectpicker').selectpicker();
</script>