<div class="panel-body" id="demo_s">

	<?php if($this->session->userdata('role') != 3){ ?>
	<div id="toolbar">
		<a class="btn btn-primary btn-labeled fa fa-plus-circle" onclick="ajax_modal('add','Add Sponsor','<?php echo translate('successfully_added!'); ?>','teams_add','')">Create Sponsor</a>
  </div>
  <?php } ?>
	<table id="demo-table" class="table table-striped" data-pagination="true" data-show-refresh="true" data-search="true" data-toolbar="#toolbar">
		<thead>
			<tr>
				<th>No</th>
				<th>Logo</th>
				<th>Sponsors Name</th>
				<th>Sponsors Description</th>
				<th>Type</th>
				<th>Options</th>
			</tr>
		</thead>
		<tbody >
			<?php $i = 1; ?>
			<?php foreach($sponsors as $row){?>
			<tr>
				<td><?= $i++; ?></td>
				<td><?php	if(file_exists('uploads/sponsors_image/'.$row['logo']) && !empty($row['logo'])){	?>
				<img class="img-md" src="<?php echo base_url(); ?>uploads/sponsors_image/<?php echo $row['logo']; ?>" /> <?php
				} else {	?>
					<img class="img-md" src="<?php echo base_url(); ?>uploads/default.jpg" /><?php
				}	?> </td>
				<td><?= $row['name']; ?></td>
				<td><?= $row['promotion_text']; ?></td>
				<td><?= $row['type']; ?></td>
				<td class="text-right">
					<?php if($this->session->userdata('role') != 3){ ?>
					<a class="btn btn-success btn-xs btn-labeled fa fa-wrench" data-toggle="tooltip" 
						onclick="ajax_modal('edit','<?= translate('edit_sponsor'); ?>','<?= translate('successfully_edited!'); ?>','sponsor_edit','<?php echo $row['id']; ?>')" data-original-title="Edit" data-container="body">Edit</a>
						
					<a onclick="delete_confirm('<?= $row['id']; ?>','<?= translate('really_want_to_delete_this?'); ?>')" class="btn btn-danger btn-xs btn-labeled fa fa-trash" data-toggle="tooltip" data-original-title="Delete" data-container="body">Delete</a>
					<?php } ?>
				</td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>
