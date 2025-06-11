<style>
.error {
    color: red;
}
.soldout-section {
    color: #fff;
}
</style>
<div id="content-container" class="container">
	<div id="page-title">
		<div class="col-md-12">
			<h2 class="page-header text-overflow" ><label>Auction League :</label> <?= $this->crud_model->get_type_name_by_id('league',$cur_lid,'league_name'); ?> </h2>
		</div>
		<div class="col-md-6">
			<div class="form-group" style="font-size: 16px;"><br>
				<label class="col-sm-4 control-label" for="demo-hor-1" style="font-size: 20px; color:#fff">Select Category</label>
				<div class="col-sm-6"style=" z-index: 999999999;">
					<?php echo $this->crud_model->select_html('category', 'category_id', 'category_name', 'edit', 'form-control cat required', $this->session->userdata('cat_id'), NULL, NULL, 'category_wise_player'); ?>
				</div>
			</div>
		</div>

		
		<div class="col-md-6">
			<div class="form-group" style="font-size: 16px;"><br>
				<label class="col-sm-4 control-label" for="demo-hor-1" style="font-size: 20px; color:#fff">Player Type</label>
				<div class="col-sm-6"style=" z-index: 999999999;">
				<select class="form-control required" id="profile_type" name="profile_type">
					<option value="All">All</option>
					<option value="Men" <?php if ($this->session->userdata('profile_type') == 'Men') echo 'selected'; ?>>Men</option>
					<option value="Women" <?php if ($this->session->userdata('profile_type') == 'Women') echo 'selected'; ?>>Women</option>
					<option value="Senior Citizen" <?php if ($this->session->userdata('profile_type') == 'Senior Citizen') echo 'selected'; ?>>Senior Citizen</option>
					<option value="Kids" <?php if ($this->session->userdata('profile_type') == 'Kids') echo 'selected'; ?>>Kids</option>
				</select>
				</div>
			</div>
		</div>
	</div>

	<div class="tab-base">
		<div class="panel">
			<div class="panel-body">
				<!-- Wrapper for slides -->
				<div class="">
					<?php 
						//$row = $this->db->get_where('players', array('players_id'=>$unsold_curr_players_id))->row_array();

						if ($this->session->userdata('profile_type')) {
							$row = $this->db->where('profile_type', $this->session->userdata('profile_type'))
							->get_where('players', array('players_id' => $unsold_curr_players_id))
							->row_array();
						} else {
							$row = $this->db->get_where('players', array('players_id' => $unsold_curr_players_id))->row_array();

							// var_dump($row);
						}

					?>
					<?php if(!empty($row['players_id'])) : ?>
					<div class="item ">
						<div class="col-md-12">
							<div class="col-md-4">
								<span class="playerimg">
								<?php if($teams_id){ ?>
									<img  src="<?php echo base_url(); ?>uploads/sold-ribbon.png" id='soldout' /> 
								<?php }else{
									$category = json_decode($this->crud_model->get_type_name_by_id('league', $this->session->userdata('league_id'), 'category'));
									if(!empty($row['category_id']) && !empty($category)){
										$count_arr = array_count_values($category);
										$count_curr_category = $count_arr[$row['category_id']];
										if(in_array($row['category_id'],$category) &&  $count_curr_category > 1){
									?>
										<img src="<?php echo base_url(); ?>uploads/unsold-ribbon.png" id='unsoldout' />
									<?php }
									}
								} ?>
								</span>
								<div class="player-img">
								<?php
								if(file_exists('uploads/players_image/'.$row['image']) && !empty($row['image'])){
								?>
								<img class="auction-profile" src="<?php echo base_url(); ?>uploads/players_image/<?php echo $row['image']; ?>" width="100%" id='blah' />  
								<?php
								} else {
								?>
								<img class="auction-profile" src="<?php echo base_url(); ?>uploads/default.jpg" width="60%" alt="" id='blah' />
								<?php
								}
								?> 
								</div>
								
							</div>
							<h3><label class="player_name" style="word-wrap: break-word;"><?= $row['players_name']; ?>&nbsp;<?php if($row['nickname']) echo '('.$row['nickname'].')'; ?></label></h3>
							<div class="col-md-4">
								<div class="auc-desc" style="background: #e95c0c;">
									<p><label>Unique Id : </label> <span class="uniq_id"><?= $row['uniq_id']; ?></span> </p>
									<p><label>Category : </label> <span class="player_cat"><?= $this->crud_model->get_type_name_by_id('category',$row['category_id'],'category_name'); ?></span></p>
									<p><label>Player Type : </label><span class="player_type"><?= $row['type']; ?></span> </p>
								</div>
							</div>
							<div class="col-md-4">
								<div class="auc-desc" style="background: #f5b317;">
									<p><label>Style : </label> <span class="player_style"><?= $row['style']; ?></span></p>
									<p><label>Age: </label> <span class="player_age"><?= date_diff(date_create($row['dob']), date_create(date("Y-m-d")))->format('%y'); ?></span></p>
									<p><label>Base Price: </label><span class="player_bsprice"><?= $this->crud_model->get_type_name_by_id('category',$row['category_id'],'base_price'); ?></span> </p>
								</div>
							</div>
							</div>
						</div><div style="clear:both;"></div>
						<hr>
						<div class="soldout-section" style="display:<?php if(isset($teams_id)){echo 'block';}else{ echo 'none'; } ?>">
							<div class="row">
								<div class="col-md-12">
									<div class="col-md-4 pur_team"><?php if($teams_id){ echo '<label>Purchase Team :&nbsp; </label><span>'.$teams_id.'</span>'; } ?></div>
									<div class="col-md-4 teamlogo" style="text-align: center;">
										<?php if(!empty($logo)){ ?>
										<img src="<?php echo base_url(); ?>uploads/teams_image/<?php echo $logo; ?>" style="width:100px;" />
										<?php } ?>
									</div>
									<div class="col-md-4 pur_point" style="text-align: right;"><?php if($sold_price){echo '<label>Purchase Points :&nbsp; </label><span>'.$sold_price.'</span>';} ?></div>
								</div>
							</div>
						</div>
						
						<div class="sold-section" style="display:<?php if(empty($teams_id)){echo 'block';}else{ echo 'none'; } ?>">
							
							<div class="col-md-4"></div>

							<div class="col-md-4">
									<?php
									echo form_open(base_url() . 'index.php/admin/auction/sold_do_add/', array(
										'class' => 'form-horizontal',
										'method' => 'post',
										'id' => 'sold_player',
										'enctype' => 'multipart/form-data'
									));
									?>
									<div class="form-group">
										<input type="hidden" name="category_id" id="category_id" value="<?= $this->session->userdata('cat_id'); ?>">
										<input type="hidden" name="league_id" id="league_id" value="<?= $this->session->userdata('league_id'); ?>">
										<input type="hidden" name="players_id" id="players_id" value="<?= $row['players_id']; ?>">
										<label class="col-sm-5 control-label" for="demo-hor-1">Sold Price</label>
										<div class="col-sm-7">
											<input type="text" name="sold_price" id="demo-hor-1"	placeholder="Sold Price" class="form-control required" required>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-5 control-label" for="demo-hor-1">Sold On Team</label>
										<div class="col-sm-7">
											<?php echo $this->crud_model->select_html('teams','teams_id','teams_name','add','form-control required','',NULL,NULL,NULL); ?>
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-5"></div>
										<div class="col-sm-12">
										<div class="col-sm-6">
											<input type="button" name="soldplayer" id="soldplayer"	value="Click To Sold" class="btn btn-purple">
										</div>
										<div class="col-sm-6">
											<input type="button" name="unsold" id="unsold"	value="Unsold" class="btn btn-purple">
										</div>
										</div>
									</div>
								</form>
							</div>



							<div class="col-md-4">
									<?php
									echo form_open(base_url() . 'index.php/admin/bidding/start_bidding/', array(
										'class' => 'form-horizontal',
										'method' => 'post',
										'id' => 'start_bidding',
										'enctype' => 'multipart/form-data'
									));
									?>
									<div class="form-group">
										<input type="hidden" name="league_id" id="league_id" value="<?= $this->session->userdata('league_id'); ?>">
										<input type="hidden" name="players_id" id="players_id_bid" value="<?= $row['players_id']; ?>">
									</div>
									<div class="col-sm-6">
										<button type="submit" class="btn btn-purple"> Start </button>
									</div>
								</form>
							</div>



						</div>
						<?php else : ?>
							<div>
								<center><h1><span style="color:aliceblue">No Players Left</span></h1></center>
							</div>
						<?php endif; ?>
						
				</div>
				<span class="prevPlayer glyphicon glyphicon-chevron-left btn btn-primary" data_curr_id="<?= $unsold_curr_players_id; ?>" data_prev_id="" style="display:none;"></span>
				<span class="nextPlayer glyphicon glyphicon-chevron-right btn btn-primary" data_curr_id="<?= $unsold_curr_players_id; ?>" data_next_id="<?= $unsold_next_players_id; ?>" style="display:<?php if(empty($unsold_next_players_id)){ echo 'none'; } ?>"></span>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <!--<div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>-->
        <div class="modal-body">
          <p>Unsold</p>
        </div>
        <!--<div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>-->
      </div>
      
    </div>
  </div>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
<script>
$(function () {
$("#unsold").click(function(){
$('#myModal').modal('show');
setTimeout(function() {$('#myModal').modal('hide');}, 2000);
});
});
</script>
<script>
	var base_url = '<?php echo base_url(); ?>';
	var user_type = 'admin';
	var module = 'auction';
	var list_cont_func = 'list';
	var dlt_cont_func = 'delete';
	
function category_wise_player(val){ 
	$.ajax({
		type: "GET",
		url: base_url+'index.php/'+user_type+'/'+module+'/set_cat_sess',
		data: { category : val },
		beforeSend: function() {
			$('.loading').show(); // change submit button text
		},
		success: function(data){
			$('.loading').hide();
			if(data){
				window.location.reload();
			}
		} 
	});
}

	/*Previous NEXT Player Load */
$('body').on('click','.nextPlayer,.prevPlayer', function(){ 
	var here = $(this);
	var data_curr_id =here.attr('data_curr_id');
	var data_next_id =here.attr('data_next_id');
	var data_prev_id =here.attr('data_prev_id');
	var formData;
	formData = {};
	formData.data_curr_id = data_curr_id;
	formData.data_next_id = data_next_id;
	formData.data_prev_id = data_prev_id;
	$.ajax({
		type: "GET",
		url: base_url+'index.php/'+user_type+'/'+module+'/next_prev',
		data: formData,
		datatype: 'JSON',
		cache: false,
		beforeSend: function() {
			$('.loading').show(); // change submit button text
		},
		success: function(data){
			$('.loading').hide();
			var data = JSON.parse(data);
			if(data.show_next_player=='show_next_player'){
				if(data.next_players_id=='last_player_id'){
					/* Set Next Player */
					$('.nextPlayer').hide();
					$('.nextPlayer').attr('data_curr_id', '');
					$('.nextPlayer').attr('data_next_id', '');
					/* Set Previous Player */
					$('.prevPlayer').show();
					$('.prevPlayer').attr('data_curr_id', data.curr_players_id);
					$('.prevPlayer').attr('data_prev_id', data.prev_players_id);
				}else{
					/* Set Next Player */
					$('.nextPlayer').show();
					$('.nextPlayer').attr('data_curr_id', data.curr_players_id);
					$('.nextPlayer').attr('data_next_id', data.next_players_id);
					/* Set Previous Player */
					$('.prevPlayer').show();
					$('.prevPlayer').attr('data_curr_id', data.curr_players_id);
					$('.prevPlayer').attr('data_prev_id', data.prev_players_id);
				}
			}
			if(data.show_prev_player=='show_prev_player'){
				if(data.prev_players_id=='first_player_id'){
					/* Set Previous Player */
					$('.prevPlayer').hide();

					$('.prevPlayer').attr('data_curr_id', '');
					$('.prevPlayer').attr('data_prev_id', '');
					/* Set Next Player */
					$('.nextPlayer').show();
					$('.nextPlayer').attr('data_curr_id', data.curr_players_id);
					$('.nextPlayer').attr('data_next_id', data.next_players_id);
				}else{
					/* Set Previous Player */
					$('.prevPlayer').show();
					$('.prevPlayer').attr('data_curr_id', data.curr_players_id);
					$('.prevPlayer').attr('data_prev_id', data.prev_players_id);
					/* Set Next Player */
					$('.nextPlayer').show();
					$('.nextPlayer').attr('data_curr_id', data.curr_players_id);
					$('.nextPlayer').attr('data_next_id', data.next_players_id);
				}
			}

			if(data.curr_player_details.teams_id){
				$('.playerimg').html('<img  src="'+base_url+'uploads/sold-ribbon.png" id="soldout" />');
				$('.sold-section').hide();
				$('.pur_team').html('<label>Purchase Team :&nbsp; </label><span>'+data.curr_player_details.teams_id+'</span>');
				$('.pur_point').html('<label>Purchase Points :&nbsp; </label><span>'+data.curr_player_details.sold_price+'</span>');
				$('.teamlogo').html('<img  src="'+base_url+'uploads/teams_image/'+data.curr_player_details.logo+'" style="width: 100px;" />');
				$('.soldout-section').show();
			}else{
				if(data.curr_player_details.unsold=='unsold'){	
					$('.playerimg').html('<img src="'+base_url+'uploads/unsold-ribbon.png" id="unsoldout" />');
				}else{
					$('.playerimg').html('');
				}
				$('.soldout-section').hide();
				$('.sold-section').show();
			
				/* for sold form */
				$('#category_id').val(data.curr_player_details.category_id);
				$('#players_id').val(data.curr_player_details.players_id);
				$('#players_id_bid').val(data.curr_player_details.players_id);
			}
			
			/* for current player */
			$('.auction-profile').attr('src', base_url+'uploads/players_image/'+data.curr_player_details.image);
			$('.uniq_id').html(data.curr_player_details.uniq_id);
			$('.player_name').html(data.curr_player_details.players_name);
			$('.player_cat').html(data.curr_player_details.category_name);
			$('.player_type').html(data.curr_player_details.type);
			$('.player_style').html(data.curr_player_details.style);
			$('.player_age').html(data.curr_player_details.dob);
			$('.player_bsprice').html(data.curr_player_details.base_price);
			$('.player_id').val(data.curr_player_details.players_id);
		} 
	});
});

$('#fol').on('click','#soldplayer', function(){ 
	var here = $(this); // alert div for show alert message
	here.html('Working...');
	var form = here.closest('form');
	$(form).validate({
		rules: {
			sold_price: { required:true },
			teams_id: { required:true }
		}
		});
    if((form).valid()){
			$.ajax({
				type: "POST",
				url: base_url+'index.php/'+user_type+'/'+module+'/do_sold',
				data: form.serialize(), // serialize form data 
				datatype: 'JSON',
				cache: false,
				success: function(data){
					var data = JSON.parse(data);
					if(data.sold=='success'){
						$('.sold-section').hide();
						$('.playerimg').html('<img  src="'+base_url+'uploads/sold-ribbon.png" id="soldout" />');
						$('.pur_team').html('<label>Purchase Team :&nbsp; </label><span>'+data.teams_id+'</span>');
						$('.pur_point').html('<label>Purchase Points :&nbsp; </label><span>'+data.sold_price+'</span>');
						$('.teamlogo').html('<img  src="'+base_url+'uploads/teams_image/'+data.logo+'" style="width: 100px;" />');
						$('.soldout-section').show();
						$('[name="sold_price"]').val('');
						$('[name="teams_id"]').prop('selectedIndex',0);
						
					}
				} 
			});
	  }

});
/*ajax end here*/
$.ajaxSetup({
	headers: { <?php echo $this->security->get_csrf_token_name(); ?>: '<?php echo $this->security->get_csrf_hash(); ?>' }
});


$(document).ready(function() {
	var base__url = '<?php echo base_url(); ?>';
    $(document).on('submit', '#start_bidding', function(e) {
        event.preventDefault(); // Prevent the form from submitting normally

		console.log('working hero');

		$.ajax({
			url: $(this).attr('action'), // The action URL from the form
			type: $(this).attr('method'), // The method type from the form
			data: $(this).serialize(), // Serialize form data
			dataType: 'json', // Expect a JSON response
			success: function(response) {

				console.log(response);

				// Clear any previous alerts
				$('#scroll-top').next('#floating-top-right').remove();


				// Check if the response status is success or error
				if (response.status === 'success') {
					// Success alert
					var successAlert = `
						<div id="floating-top-right" class="floating-container">
							<div class="alert-wrap in animated fadeIn">
								<div class="alert alert-success" role="alert">
									<button class="close" type="button"><i class="fa fa-times-circle"></i></button>
									<div class="media">
										<div class="media-left">
											<span class="icon-wrap icon-wrap-xs icon-circle alert-icon"><i class="fa fa-check"></i></span>
										</div>
										<div class="media-body">
											<h4 class="alert-title"></h4>
											<p class="alert-message">Successfully Edited!</p>
										</div>
									</div>
								</div>
							</div>
						</div>`;
					$('#scroll-top').after(successAlert);

					// Close button click event
					$('.alert-success .close').click(function() {
						$(this).closest('#floating-top-right').remove();
					});

					setTimeout(function() {
						window.location.href = base__url + 'index.php/admin/bidding/start/' + response.bid_id;
					}, 3000);

				} else {
					// Error alert
					var errorAlert = `
						<div id="floating-top-right" class="floating-container">
							<div class="alert-wrap in animated fadeIn">
								<div class="alert alert-danger" role="alert">
									<button class="close" type="button"><i class="fa fa-times-circle"></i></button>
									<div class="media">
										<div class="media-left">
											<span class="icon-wrap icon-wrap-xs icon-circle alert-icon"><i class="fa fa-minus"></i></span>
										</div>
										<div class="media-body">
											<h4 class="alert-title"></h4>
											<p class="alert-message">Cancelled</p>
										</div>
									</div>
								</div>
							</div>
						</div>`;
					$('#scroll-top').after(errorAlert);

					// Close button click event
					$('.alert-danger .close').click(function() {
						$(this).closest('#floating-top-right').remove();
					});

				}


			},
			error: function(xhr, status, error) {
				// Clear any previous alerts
				$('#scroll-top').next('#floating-top-right').remove();

				// Error alert
				var errorAlert = `
					<div id="floating-top-right" class="floating-container">
						<div class="alert-wrap in animated fadeIn">
							<div class="alert alert-danger" role="alert">
								<button class="close" type="button"><i class="fa fa-times-circle"></i></button>
								<div class="media">
									<div class="media-left">
										<span class="icon-wrap icon-wrap-xs icon-circle alert-icon"><i class="fa fa-minus"></i></span>
									</div>
									<div class="media-body">
										<h4 class="alert-title"></h4>
										<p class="alert-message">Cancelled</p>
									</div>
								</div>
							</div>
						</div>
					</div>`;
				$('#scroll-top').after(errorAlert);

				// Close button click event
				$('.alert-danger .close').click(function() {
					$(this).closest('#floating-top-right').remove();
				});
			}
		});
    });
});

$(document).ready(function () {
    $('#profile_type').on('change', function () {
        var selectedValue = $(this).val();
        
        if (selectedValue) {
            $.ajax({
				url: base_url+'index.php/'+user_type+'/'+module+'/set_profile_type_sess',
                type: 'GET',
                data: { profile_type: selectedValue },
                success: function (response) {
                    if (response == 1) {
                        location.reload(); 
                    } else {
						var errorAlert = `
							<div id="floating-top-right" class="floating-container">
								<div class="alert-wrap in animated fadeIn">
									<div class="alert alert-danger" role="alert">
										<button class="close" type="button"><i class="fa fa-times-circle"></i></button>
										<div class="media">
											<div class="media-left">
												<span class="icon-wrap icon-wrap-xs icon-circle alert-icon"><i class="fa fa-minus"></i></span>
											</div>
											<div class="media-body">
												<h4 class="alert-title"></h4>
												<p class="alert-message">Please Try Again</p>
											</div>
										</div>
									</div>
								</div>
							</div>`;
						$('#scroll-top').after(errorAlert);

						// Close button click event
						$('.alert-danger .close').click(function() {
							$(this).closest('#floating-top-right').remove();
						});
                    }
                },
                error: function () {
					var errorAlert = `
						<div id="floating-top-right" class="floating-container">
							<div class="alert-wrap in animated fadeIn">
								<div class="alert alert-danger" role="alert">
									<button class="close" type="button"><i class="fa fa-times-circle"></i></button>
									<div class="media">
										<div class="media-left">
											<span class="icon-wrap icon-wrap-xs icon-circle alert-icon"><i class="fa fa-minus"></i></span>
										</div>
										<div class="media-body">
											<h4 class="alert-title"></h4>
											<p class="alert-message">Something Went Wrong</p>
										</div>
									</div>
								</div>
							</div>
						</div>`;
					$('#scroll-top').after(errorAlert);

					// Close button click event
					$('.alert-danger .close').click(function() {
						$(this).closest('#floating-top-right').remove();
					});
                }
            });
        }
    });
});

</script>