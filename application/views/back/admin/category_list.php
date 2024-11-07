<div class="panel-body" id="demo_s">
	<div id="toolbar">
		<a class="btn btn-primary btn-labeled fa fa-plus-circle" onclick="ajax_modal('add','<?php echo translate('add_category'); ?>','<?php echo translate('successfully_added!'); ?>','category_add','')"><?php echo translate('create_category');?></a>
  </div>

	<table id="demo-table" class="table table-striped" data-pagination="true" data-show-refresh="true" data-search="true" data-toolbar="#toolbar">
		<thead>
			<tr>
				<th><?php echo translate('no');?></th>
				<th><?php echo translate('name');?></th>
				<th>Base Price</th>
				<th>Description</th>
				<th class="text-right"><?php echo translate('options');?></th>
			</tr>
		</thead>
		<tbody >
			<?php $i = 1; ?>
			<?php	foreach($all_categories as $row){ ?>
			<tr>
				<td><?= $i++; ?></td>
				<td><?= $row['category_name']; ?></td>
				<td><?= $row['base_price']; ?></td>
				<td><?= $row['description']; ?></td>
				<td class="text-right">
					<a class="btn btn-success btn-xs btn-labeled fa fa-wrench" data-toggle="tooltip" onclick="ajax_modal('edit','Edit Category','<?php echo translate('successfully_edited!'); ?>','category_edit','<?php echo $row['category_id']; ?>')" data-original-title="Edit" data-container="body"><?php echo translate('edit');?></a>
					
					<a onclick="delete_categories('<?php echo $row['category_id']; ?>','<?php echo translate('really_want_to_delete_this?'); ?>')" class="btn btn-danger btn-xs btn-labeled fa fa-trash" data-toggle="tooltip" data-original-title="Delete" data-container="body"><?php echo translate('delete');?></a>
				</td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>
