<style>
.item img {
    max-width: 60%;
}
tbody {
    color: #fff;
}
thead th {
    font-size: 20px;
}
table td {
    font-size: 14px;
}
</style>
<div id="content-container" class="container">
	<div class="page-content">
		<div class="panel">
			<div class="panel-body">
				<?php foreach($all_data as $team): /* var_dump($team); */?>
				<div class="col-md-3">
					<div class="item">
						<img height="100" width="auto" src="<?= base_url(); ?>uploads/teams_image/<?= $team['logo']; ?>" />
						<table>
							<thead>
								<tr>
									<th>Sr.</th>
									<th>Player Name</th>
								</tr>
							</thead>
							<tbody>
								<?php $i=1; foreach($team['players'] as $row): ?>
								<tr>
									<td><?= $i++; ?></td>
									<td><?= $row['players_name']; ?></td>
								</tr>
								<?php endforeach; ?>
							</tbody>
						</table>
					</div>
				</div>
				<?php endforeach; ?>
			</div>
		</div>
	</div>
</div>
<script>
	var base_url = '<?php echo base_url(); ?>'
	var user_type = 'admin';
	var module = 'teams';
	var list_cont_func = 'list';
	var dlt_cont_func = 'delete';
</script>