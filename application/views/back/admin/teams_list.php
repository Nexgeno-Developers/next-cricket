<div class="panel-body" id="demo_s">

    <?php if($this->session->userdata('role') != 3){ ?>
    <div id="toolbar">
        <a class="btn btn-primary btn-labeled fa fa-plus-circle"
            onclick="ajax_modal('add','Add Team','<?php echo translate('successfully_added!'); ?>','teams_add','')">Create
            Team</a>
    </div>
    <?php } ?>
    <table id="demo-table" class="table table-striped" data-pagination="true" data-show-refresh="true"
        data-search="true" data-toolbar="#toolbar">
        <thead>
            <tr>
                <th>No</th>
                <th>Logo</th>
                <th>Team Name</th>
                <th>Owner Name</th>
                <th>Owner Email</th>
                <th>owner Phone</th>
                <th>Virtual Point</th>
                <th>Remaining Points</th>
                <th>League</th>
                <th>Options</th>
            </tr>
        </thead>
        <tbody>
            <?php $i = 1; ?>
            <?php foreach($all_teams as $row){ 
				
				$owner_data = $this->db->select('name, email, phone')->from('admin')->where('admin_id', $row['owner_id'])->get()->row();
	
				?>
            <tr>
                <td><?= $i++; ?></td>
                <td><?php	if(file_exists('uploads/teams_image/'.$row['logo_thumb']) && !empty($row['logo_thumb'])){	?>
                    <img class="img-md"
                        src="<?php echo base_url(); ?>uploads/teams_image/<?php echo $row['logo_thumb']; ?>" /> <?php
				} else {	?>
                    <img class="img-md" src="<?php echo base_url(); ?>uploads/default.jpg" /><?php
				}	?>
                </td>
                <td><?= $row['teams_name']; ?></td>
                <td><?= isset($owner_data->name) ? $owner_data->name : '-'; ?></td>
                <td><?= isset($owner_data->email) ? $owner_data->email : '-'; ?></td>
                <td><?= isset($owner_data->phone) ? $owner_data->phone : '-'; ?></td>
                <td><?= $row['virtual_point']; ?></td>
                <td>
                    <?php 
				    $total_solds = $this->db->select('sold_price')->where('teams_id', $row['teams_id'])->get('soldplayers')->result();
				    $t =0;
				    foreach($total_solds as $sold)
				    {
				        $t += $sold->sold_price;
				    }
				    echo $row['virtual_point'] - $t;
				    ?>
                </td>
                <td><?= $this->crud_model->get_type_name_by_id('league',$row['league'],'league_name'); ?></td>

                <td class="text-right">
                    <a class="btn btn-mint btn-xs btn-labeled fa fa-location-arrow" href="javascript:void(0)"
                        onclick="ajax_set_full('team_list', '<?= translate('title')?>', '<?= translate('successfully_edited!'); ?>', 'team_players_list', '<?= $row['teams_id']; ?>')"
                        data-original-title="Edit" data-container="body">View</a>

                    <a class="btn btn-success btn-xs btn-labeled fa fa-wrench" data-toggle="tooltip"
                        onclick="ajax_modal('booster','<?= translate('boster'); ?>','<?= translate('successfully_update!'); ?>','boster','<?php echo $row['teams_id']; ?>')"
                        data-original-title="Edit" data-container="body">Booster</a>

                    <?php if($this->session->userdata('role') != 3){ ?>
                    <a class="btn btn-success btn-xs btn-labeled fa fa-wrench" data-toggle="tooltip"
                        onclick="ajax_modal('edit','<?= translate('edit_teams'); ?>','<?= translate('successfully_edited!'); ?>','teams_edit','<?php echo $row['teams_id']; ?>')"
                        data-original-title="Edit" data-container="body">Edit</a>

                    <a onclick="delete_confirm('<?= $row['teams_id']; ?>','<?= translate('really_want_to_delete_this?'); ?>')"
                        class="btn btn-danger btn-xs btn-labeled fa fa-trash" data-toggle="tooltip"
                        data-original-title="Delete" data-container="body">Delete</a>
                    <?php } ?>
                </td>
            </tr>
            <?php
			}
			?>
        </tbody>
    </table>
</div>