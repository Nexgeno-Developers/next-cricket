<div class="panel-body" id="demo_s">
	<div id="toolbar">
		<a class="btn btn-primary btn-labeled fa fa-plus-circle" onclick="ajax_modal('add','Add Player','<?php echo translate('successfully_added!'); ?>','players_add','')"><?php echo translate('create_players');?></a>
  </div>

	<table id="demo-table" class="table table-striped" data-pagination="true"  data-show-refresh="true" data-search="true" data-toolbar="#toolbar">
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
				<th>Options</th>
			</tr>
		</thead>
		<tbody >
			<?php $i = 1; ?>
			<?php foreach($all_players as $row){ ?>
			<tr>
				<td><?= $i++; ?></td>
				<td><?= $row['uniq_id']; ?></td>
				<td><?php	if(file_exists('uploads/players_image/'.$row['image_thumb']) && !empty($row['image_thumb'])){	?>
				<img class="img-md" src="<?php echo base_url(); ?>uploads/players_image/<?php echo $row['image_thumb']; ?>" /> <?php
				} else {	?>
					<img class="img-md" src="<?php echo base_url(); ?>uploads/default.jpg" /><?php
				}	?> </td>
				<td><?= $row['players_name']; ?><?php if(!empty($row['nickname'])){ echo '('.$row['nickname'].')'; } ?></td>
				<td><?= $row['type']; ?></td>
				<td><?= $row['style']; ?></td>
				<td><?= date_diff(date_create($row['dob']), date_create(date("Y-m-d")))->format('%y'); ?></td>
				<td><?= $this->crud_model->get_type_name_by_id('category', $row['category_id'], 'category_name') ; ?></td>
				<td class="text-right">
				<a class="btn btn-mint btn-xs btn-labeled fa fa-location-arrow" data-toggle="tooltip" 
                    onclick="ajax_modal('view','<?php echo translate('view_profile'); ?>','<?php echo translate('successfully_viewed!'); ?>','player_view','<?php echo $row['players_id']; ?>')" data-original-title="View" data-container="body">
                        <?php echo translate('profile');?>
                </a>
					<a class="btn btn-success btn-xs btn-labeled fa fa-wrench" data-toggle="tooltip" 
						onclick="ajax_modal('edit','<?= translate('edit_players'); ?>','<?= translate('successfully_edited!'); ?>','players_edit','<?php echo $row['players_id']; ?>')" data-original-title="Edit" data-container="body">Edit
					</a>
					<a onclick="delete_players('<?= $row['players_id']; ?>','players','<?= translate('really_want_to_delete_this?'); ?>')" class="btn btn-danger btn-xs btn-labeled fa fa-trash" data-toggle="tooltip" data-original-title="Delete" data-container="body">Delete
					</a>
				</td>
			</tr>
			<?php
			}
			?>
		</tbody>
	</table>
</div>
