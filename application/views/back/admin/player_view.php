<style>
.table-striped>tbody>tr:nth-child(even) {
    color: #404040;
}
#content-container {
    padding-bottom: 0px;
}
</style>
<?php 
	foreach($player_data as $row){ 
?>
    <div id="content-container" style="padding-top:0px !important;">
			<div class="text-center pad-all">
				<div class="pad-ver">
					<img <?php if(file_exists('uploads/players_image/'.$row['image_thumb'])){ ?>
										src="<?php echo base_url(); ?>uploads/players_image/<?= $row['image_thumb']; ?>"
								<?php } else { ?>
										src="<?php echo base_url(); ?>uploads/players_image/default.jpg"
								<?php } ?>
								class="img-md img-border img-circle" alt="Profile Picture" style="width: 90px;height: 90px; !important">
				</div>
			</div>
			<div class="row">
        <div class="col-sm-12">
					<div class="panel-body">
						<table class="table table-striped" style="border-radius:3px;">
							<tr>
								<th class="custom_td">Unique Id</th>
								<td class="custom_td"><?php echo $row['uniq_id']; ?></td>
							</tr>
							<tr>
								<th class="custom_td">Player Name</th>
								<td class="custom_td"><?php echo $row['players_name']; ?></td>
							</tr>
							<tr>
								<th class="custom_td">Nick Name</th>
								<td class="custom_td"><?php echo $row['nickname']; ?></td>
							</tr>
							<tr>
								<th class="custom_td">Category</th>
								<td class="custom_td"><?php echo $row['category_id']; ?></td>
							</tr>
							<tr>
								<th class="custom_td">Age</th>
								<td class="custom_td"><?php echo date_diff(date_create($row['dob']), date_create(date("Y-m-d")))->format('%y'); ?></td>
							</tr>
							<tr>
								<th class="custom_td">Type</th>
								<td class="custom_td"><?php echo $row['type']; ?></td>
							</tr>
							<tr>
								<th class="custom_td">Style</th>
								<td class="custom_td"><?php echo $row['style']; ?></td>
							</tr>
							<tr>
								<th class="custom_td">Last Played League</th>
								<td class="custom_td"><?php echo $row['last_played_league']; ?></td>
							</tr>
							<tr>
								<th class="custom_td"><?php echo translate('address');?></th>
								<td class="custom_td"><?php echo $row['address']; ?></td>
							</tr>                    
							<tr>
								<th class="custom_td">City</th>
								<td class="custom_td"><?php echo $row['city']?></td>
							</tr>
							<tr>
								<th class="custom_td"><?php echo translate('email');?></th>
								<td class="custom_td"><?php echo $row['email']?></td>
							</tr>
							<tr>
								<th class="custom_td"><?php echo translate('creation_date');?></th>
								<td class="custom_td"><?php echo date('Y-m-d', strtotime($row['created']));?></td>
							</tr>
						</table>
					</div>
				</div>
			</div>					
    </div>					
<?php 

	}

?>

            

<style>

.custom_td{

border-left: 1px solid #ddd;

border-right: 1px solid #ddd;

border-bottom: 1px solid #ddd;

}

</style>

<script>

$(document).ready(function(e) {

    $('.modal-footer').find('.btn-purple').hide();

});

</script>