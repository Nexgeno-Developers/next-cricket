
<div class="col-md-12">
	<div class="col-md-4">
		<div class="row">
			<img style="width: auto; height: 200px; max-width:80%" src="<?= base_url(); ?>uploads/teams_image/<?= $team['logo']; ?>" />
			<div class="team-name"><?= $team['teams_name']; ?></div>
		</div>
	</div>
	<div class="col-md-8">
		<div class="row">
			<div class="col-md-12" style="font-size: 20px; padding-right:  0;">
				<div class="row">
					<div class="col-md-6">
						<div class="well pointss" style="background-color: #369;">Virtual Points <br> <?= $team['virtual_point']; ?></div>
					</div>
					<div class="col-md-6">
						<div class="well pointss" style="background-color: #16a765;;">Points Spent <br> <?= $spentamt ? $spentamt : 0 ; ?></div>
					</div>
					<div class="col-md-6">
						<?php $rem_pts = $team['virtual_point'] - $spentamt; ?>
						<div class="well pointss" style="background-color: #e9b330;;">Points Remaining <br> <?= ($rem_pts > 0) ? $rem_pts : 0; ?></div>
					</div>
					<div class="col-md-6">
						<div class="well pointss" style="background-color: #a479e2;;">Exceeded By <br> <?= ($excd_points > 0) ? $excd_points : 0; ?></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="col-md-12">
	<table id="demo-table" class="table table-striped team-player">
		<thead>
			<tr>
				<th></th>
				<th>Unique Id</th>
				<th>Name</th>
				<th>Category</th>
				<th>Base Points</th>
				<th>Purchase Points</th>
			</tr>
		</thead>
		<tbody>
			<?php foreach($all_player as $ap){ ?>
			<tr>
				<td><img height="50" width="auto" src="<?= base_url(); ?>uploads/players_image/<?= $ap['image']; ?>" /></td>
				<td><?= $ap['uniq_id']; ?></td>
				<td><?= $ap['players_name']; ?></td>
				<td><?= $this->crud_model->get_type_name_by_id('category',$ap['category_id'],'category_name'); ?></td>
				<td><?= $this->crud_model->get_type_name_by_id('category',$ap['category_id'],'base_price'); ?></td>
				<td><?= $ap['sold_price']; ?></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>
								
								