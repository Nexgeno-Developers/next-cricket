<div class="panel-body" id="demo_s">

	<table id="demo-table" class="table table-striped" data-pagination="true" data-show-refresh="true" data-search="true" data-toolbar="#toolbar">
		<thead>
			<tr>
				<th>No</th>
				<th>League Name</th>
				<th>Player Name</th>
				<th>Start Time</th>
				<th>End Time</th>
                <th>Status</th>
				<th>Options</th>
			</tr>
		</thead>
		<tbody >
			<?php $i = 1; ?>
			<?php foreach($bid_sessions as $row){
					$owner_name = $this->db->select('league_name')->where('league_id', $row['league_id'])->get('league')->row_array();
					$teams_name = $this->db->select('players_name')->where('players_id', $row['player_id'])->get('players')->row_array();
				?>
			<tr>
				<td><?= $i++; ?></td>
				<td><?= $owner_name['league_name']; ?></td>
				<td><?= $teams_name['players_name']; ?></td>
				<td><?= $row['start_time']; ?></td>
				<td><?= $row['end_time']; ?></td>
                <td><?= $row['status']; ?></td>
				<td class="text-right">

					<?php if($row['status'] == 'active'){ ?>

						<a href="<?php echo base_url(); ?>index.php/admin/bidding/start/<?php echo $row['session_id']; ?>">go to auction</button>

					<?php } else { ?>

						<a class="btn btn-success btn-xs btn-labeled fa fa-wrench" data-toggle="tooltip" 
						onclick="ajax_modal('edit','<?= translate('all_bidding_list'); ?>','<?= translate('done!'); ?>','sponsor_edit','<?php echo $row['session_id']; ?>')" data-original-title="Edit" data-container="body">View</a>

					<?php } ?>

					
				</td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>
