<div class="panel-body" id="demo_s">		
	<!--<div id="toolbar">
		<div class="pull-left" style="margin-left: 5px;">  
			<a class="btn btn-info btn-sm btn-labeled fa fa-file-text" onclick="ajax_modal('team_sold_player','Add Player','Player Added!', 'add_sold_player', '<?= $team_id; ?>' )" >Add Player</a>
		</div>
	</div>-->
	<table id="demo-table" class="table table-striped"  data-pagination="true" data-show-refresh="true" data-search="true">
		<thead>
			<tr>
				<th>S.No</th>
				<th>Unique Id</th>
				<th>Profile</th>
				<th>Name</th>
				<th>Type</th>
				<th>Style</th>
				<th>Age</th>
				<th>Category</th>
				<th>Sold Price</th>
				<th>Options</th>
			</tr>
		</thead>
		<tbody>
			<?php $i=1; ?>
			<?php foreach($all_player as $row){ ?>
			<tr>
				<td><?= $i++; ?></td>
				<td><?= $row['uniq_id']; ?></td>
				<td><img class="img-md" src="<?= base_url(); ?>uploads/players_image/<?= (file_exists('uploads/players_image/'.$row['image']) && !empty($row['image'])) ? $row['image'] : 'default.jpg'; ?>" /></td>
				<td><?= $row['players_name']; ?><?= $row['nickname'] ? '('.$row['nickname'].')' : ''; ?></td>
				<td><?= $row['type']; ?></td>
				<td><?= $row['style']; ?></td>
				<td><?= date_diff(date_create($row['dob']), date_create(date("Y-m-d")))->format('%y'); ?></td>
				<td><?= $this->crud_model->get_type_name_by_id('category', $row['category_id'], 'category_name') ; ?></td>
				<td><?= $row['sold_price']; ?></td>
				<td><a onclick="delete_confirm2('<?= $row['players_id']; ?>','<?= translate('really_want_to_delete_this?'); ?>')" class="btn btn-danger btn-xs btn-labeled fa fa-trash" data-toggle="tooltip" data-original-title="Delete" data-container="body">Delete</a></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>    
    
<script>
$(function () {
    $('#demo-table').bootstrapTable();
});
</script>