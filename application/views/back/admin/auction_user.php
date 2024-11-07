<div id="content-container" class="container">
	<div class="">
		<div id="page-title">
			<h2 class="page-header text-overflow" ><label>Auction League :</label> <?= $this->crud_model->get_type_name_by_id('league',$cur_lid,'league_name'); ?> </h2>
		</div>
	</div>
	<div class="tab-base" >
		<div class="panel">
			<div class="panel-body">
					<div class="item">
						<div class="col-md-12 row">
							<div class="col-md-4">
								<div class="player-img">
									<span class="player_profile"></span>
									<span class="playerimg"></span>
								</div>
								<h3><label class="player_name" style="word-wrap: break-word;"></label></h3>
							</div>
							<div class="col-md-4">
								<div class="auc-desc" style="background: #e95c0c;">
									<input type="hidden" class="player_id" value="" />
									<p><label>Unique Id :&nbsp;</label><span class="uniq_id"></span></p>
									<p><label>Category :&nbsp; </label><span class="player_cat"></span></p>
									<p><label>Player Type :&nbsp; </label><span class="player_type"></span> </p>
								</div>
							</div>
							<div class="col-md-4" >
								<div class="auc-desc" style="background:#f5b317;">
									<p><label>Style :&nbsp; </label><span class="player_style"></span> </p>
									<p><label>Age :&nbsp; </label><span class="player_age"></span> </p>
									<p><label>Base Price :&nbsp; </label><span class="player_bsprice"></span> </p>
								</div>
							</div>
						</div><div style="clear:both;"></div>
						<hr>
						<div class="sold-section">
							<div class="row">
								<div class="col-md-12">
									<div class="col-md-4 pur_team"></div>
									<div class="col-md-4 teamlogo" style="text-align: center;"></div>
									<div class="col-md-4 pur_point" style="text-align: right;"></div>
								</div>
							</div>
						</div>
					</div>
			</div>
		</div>
  </div>
</div>
<script>
var base_url = '<?= base_url(); ?>';
setInterval(function(){ 
	var setpid = $('.player_id').val();
	$.ajax({
			type: 'POST',
			url: '<?php echo base_url(); ?>index.php/admin/cur_auc_player',
			data: {
				<?php echo $this->security->get_csrf_token_name(); ?>: '<?php echo $this->security->get_csrf_hash(); ?>'
			},
			async:false,
			dataType: 'JSON',
			success: function(playerdata) {
				if(playerdata.teams_id !== "" && $('.player_id').val() == playerdata.players_id){
					$('.playerimg').html('<img  src="<?php echo base_url(); ?>uploads/sold-ribbon.png" id="soldout" />');
					$('.teamlogo').html('<img  src="<?php echo base_url(); ?>uploads/teams_image/'+playerdata.logo+'" style="width:100px;" />');
					$('.pur_team').html('<label>Purchase Team :&nbsp; </label><span>'+playerdata.teams_id+'</span>');
					$('.pur_point').html('<label>Purchase Points :&nbsp; </label><span>'+playerdata.sold_price+'</span>');
				}else{
					if(playerdata.unsold=='unsold'){	
						$('.playerimg').html('<img src="<?php echo base_url(); ?>uploads/unsold-ribbon.png" id="unsoldout" />');
					}else{
						$('.playerimg').html('');
					}
					$('.teamlogo').html('');
					$('.pur_team').html('');
					$('.pur_point').html('');
				}
				if(setpid != playerdata.players_id){
					$('.player_profile').html('<img class="auction-profile" src="'+base_url+'uploads/players_image/'+playerdata.image+'" width="60%" id="blah" />');
					/* $('.auction-profile').attr('src', base_url+'uploads/players_image/'+playerdata.image); */
					$('.uniq_id').html(playerdata.uniq_id);
					$('.player_name').html(playerdata.players_name);
					$('.player_cat').html(playerdata.category_id);
					$('.player_type').html(playerdata.type);
					$('.player_style').html(playerdata.style);
					$('.player_age').html(playerdata.dob);
					$('.player_bsprice').html(playerdata.players_id);
					$('.player_id').val(playerdata.players_id);
				}
			}
	});
	
}, 1000);
</script>



























