<div class="panel-body" id="demo_s">
	<div id="toolbar">
		<a class="btn btn-primary btn-labeled fa fa-plus-circle" onclick="ajax_modal('add','Add League','<?php echo translate('successfully_added!'); ?>','league_add','')"> Create League</a>
  </div>

	<table id="demo-table" class="table table-striped" data-pagination="true" data-show-refresh="true" data-show-toggle="false" data-show-columns="false" data-search="true" data-toolbar="#toolbar">
		<thead>
			<tr>
				<th><?php echo translate('no');?></th>
				<th><?php echo translate('name');?></th>
				<th>Description</th>
				<th class="text-right"><?php echo translate('options');?></th>
			</tr>
		</thead>
		<tbody >
			<?php
			$i = 0;
			foreach($all_league as $row){
				$i++;
			?>
			<tr>
				<td><?php echo $i; ?></td>
				<td><?php echo $row['league_name']; ?></td>
				<td><?php echo $row['description']; ?></td>
				<td class="text-right">
					<a href="<?= base_url(); ?>index.php/admin/auction/set_league/<?= $row['league_id']; ?>" class="btn btn-success btn-xs btn-labeled fa fa-money" data-toggle="tooltip" data-original-title="Edit" data-container="body">Start Auction</a>
					
					<a class="btn btn-success btn-xs btn-labeled fa fa-wrench" data-toggle="tooltip" 
						onclick="ajax_modal('edit','Edit League','<?php echo translate('successfully_edited!'); ?>','league_edit','<?php echo $row['league_id']; ?>')" data-original-title="Edit" data-container="body"><?php echo translate('edit');?></a>
					
					<a onclick="delete_confirm('<?php echo $row['league_id']; ?>','<?php echo translate('really_want_to_delete_this?'); ?>')" class="btn btn-danger btn-xs btn-labeled fa fa-trash" data-toggle="tooltip" data-original-title="Delete" data-container="body"> <?php echo translate('delete');?></a>
				</td>
			</tr>
			<?php
			}
			?>
		</tbody>
	</table>
</div>
