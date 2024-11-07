<div id="content-container" class="container">

		<div id="page-title">
			<div class="col-md-6">
			<h2 class="page-header text-overflow" ><label>Auction League :</label> <?= $this->crud_model->get_type_name_by_id('league',$cur_lid,'league_name'); ?> </h2>
			</div>
	<div class="col-md-6">
		<div class="form-group" style="font-size: 16px;"><br>
			<label class="col-sm-5 control-label" for="demo-hor-1">Select Category</label>
			<div class="col-sm-7"style=" z-index: 999999999;">
				<?php echo $this->crud_model->select_html('category', 'category_id', 'category_name', 'edit', 'form-control cat required', $this->session->userdata('cat_id'), NULL, NULL, 'category_wise_player'); ?>
			</div>
		</div>
	</div>
		
	</div>

	<div class="tab-base">
		<div class="panel">
			<div class="panel-body">
				<!-- Wrapper for slides -->
				<div class="" style="height: 500px;">
					<?php 
							$row = $this->db->get_where('players', array('players_id'=>$unsold_curr_players_id))->row_array(); 
						?>
						<div class="item ">
							<div class="col-md-12">
								<div class="col-md-4">
									<img  src="<?php echo base_url(); ?>uploads/sold-ribbon.png" id='soldout' />  
									<img src="<?php echo base_url(); ?>uploads/unsold-ribbon.png" id='unsoldout' />  
									<?php
									if(file_exists('uploads/players_image/'.$row['image']) && !empty($row['image'])){
									?>
									<img class="auction-profile" src="<?php echo base_url(); ?>uploads/players_image/<?php echo $row['image']; ?>" width="60%" id='blah' />  
									<?php
									} else {
									?>
									<img class="auction-profile" src="<?php echo base_url(); ?>uploads/default.jpg" width="60%" alt="" id='blah' />
									<?php
									}
									?> 
									<h3><label class="player_name" style="word-wrap: break-word;"><?= $row['players_name']; ?>&nbsp;<?php if($row['nickname']) echo '('.$row['nickname'].')'; ?></label></h3>
								</div>
								<div class="col-md-4">
									<div class="auc-desc" style="background: #e95c0c;">
										<p><label>Unique Id : </label> <span class="uniq_id"><?= $row['uniq_id']; ?></span> </p>
										<p><label>Category : </label> <span class="player_cat"><?= $this->crud_model->get_type_name_by_id('category',$row['category_id'],'category_name'); ?></span></p>
										<p><label>Player Type : </label><span class="player_type"><?= $row['type']; ?></span> </p>
									</div>
								</div>
								<div class="col-md-4">
									<div class="auc-desc" style="background: #e95c0c;">
										<p><label>Style : </label> <span class="player_style"><?= $row['style']; ?></span></p>
										<p><label>Age: </label> <span class="player_age"><?= date_diff(date_create($row['dob']), date_create(date("Y-m-d")))->format('%y'); ?></span></p>
										<p><label>Base Price: </label><span class="player_bsprice"><?= $this->crud_model->get_type_name_by_id('category',$row['category_id'],'base_price'); ?></span> </p>
									</div>
								</div>
								</div>
							</div>
							<hr>
							<div class="sold-section">
								<div class="col-md-12">
								<?php
									echo form_open(base_url() . 'index.php/admin/auction/sold_do_add/', array(
										'class' => 'form-horizontal',
										'method' => 'post',
										'id' => 'sold_player',
										'enctype' => 'multipart/form-data'
									));
									?>
										<div class="panel-body">
											<div class="form-group col-md-5">
												<input type="hidden" name="category_id" id="category_id" value="<?= $this->session->userdata('cat_id'); ?>">
												<input type="hidden" name="league_id" id="league_id" value="<?= $this->session->userdata('league_id'); ?>">
												<input type="hidden" name="players_id" id="players_id" value="<?= $row['players_id']; ?>">
												<label class="col-sm-4 control-label" for="demo-hor-1">Sold Price</label>
												<div class="col-sm-8">
													<input type="text" name="sold_price" id="demo-hor-1"	placeholder="Sold Price" class="form-control required" required>
												</div>
											</div>
											<div class="form-group col-md-5">
												<label class="col-sm-5 control-label" for="demo-hor-1">Sold On Team</label>
												<div class="col-sm-7">
													<?php echo $this->crud_model->select_html('teams','teams_id','teams_name','add','form-control required','',NULL,NULL,NULL); ?>
												</div>
											</div>
											<div class="form-group col-md-2">
												<div class="col-sm-4"></div>
												<div class="col-sm-6">
													<input type="button" name="soldplayer" id="soldplayer"	value="Click To Sold" class="btn btn-purple">
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
						<span class="prevPlayer btn btn-primary disabled" data_curr_id="<?= $unsold_next_players_id; ?>" data_prev_id="" style="pointer-events: none;">Previous</span>

						<span class="nextPlayer btn btn-primary <?php if(empty($unsold_next_players_id)){ echo 'disabled'; } ?>" data_curr_id="<?= $unsold_curr_players_id; ?>" data_next_id="<?= $unsold_next_players_id; ?>">Next</span>
				</div>
			</div>
		</div>
		
  </div>

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
		success: function(data){
			if(data){
				window.location.reload();
			}
		} 
	});
}

	/* NEXT Player Load */
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
		success: function(data){
			var data = JSON.parse(data);
			console.log(data);
			if(data.show_next_player=='show_next_player'){
				if(data.next_players_id=='last_player_id'){
					$('.nextPlayer').addClass("disabled");
					$(".nextPlayer").css("pointer-events", "none");
					$('.nextPlayer').attr('data_curr_id', '');
					$('.nextPlayer').attr('data_next_id', '');
				}else{
					$('.nextPlayer').removeClass("disabled");
					$(".nextPlayer").css("pointer-events", "auto");
					/* Set Next Player */
					$('.nextPlayer').attr('data_curr_id', data.curr_players_id);
					$('.nextPlayer').attr('data_next_id', data.next_players_id);
				}
			}
			if(data.show_prev_player=='show_prev_player'){
				
				if(data.prev_players_id=='first_player_id'){
					$('.prevPlayer').addClass("disabled");
					$(".prevPlayer").css("pointer-events", "none");
					/* Set Next Player */
					$('.prevPlayer').attr('data_curr_id', '');
					$('.prevPlayer').attr('data_prev_id', '');
					/* Set Next Player */
					$('.nextPlayer').attr('data_curr_id', data.curr_players_id);
					$('.nextPlayer').attr('data_next_id', data.next_players_id);
				}else{
					$('.prevPlayer').removeClass("disabled");
					$(".prevPlayer").css("pointer-events", "auto");
					/* Set Previous Player */
					$('.prevPlayer').attr('data_curr_id', data.curr_players_id);
					$('.prevPlayer').attr('data_prev_id', data.prev_players_id);
					/* Set Next Player */
					$('.nextPlayer').attr('data_curr_id', data.curr_players_id);
					$('.nextPlayer').attr('data_next_id', data.next_players_id);
				}
			}
			if(data.prev_players_id){
				$('.prevPlayer').removeClass("disabled",);
				$(".prevPlayer").css("pointer-events", "auto");
				$('.prevPlayer').attr('data_prev_id', data.prev_players_id);
				$('.prevPlayer').attr('data_curr_id', data.curr_players_id);
			}

			/* for sold form */
			$('.category_id').val(data.curr_player_details.category_id);
			$('.players_id').val(data.curr_player_details.players_id);
			
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
      sold_price: "required",
      teams_id: "required",
    },
    submitHandler: function(form) {
			$.ajax({
					type: "POST",
					url: base_url+'index.php/'+user_type+'/'+module+'/do_sold',
					data: form.serialize(), // serialize form data 
					datatype: 'JSON',
					cache: false,
					success: function(data){
						$('.sold-section').html('<center><img src="<?= base_url(); ?>uploads/sold-out-stamp.jpg" /></center>');
					} 
			});
    }
  });
});
/*ajax end here*/
$.ajaxSetup({
	headers: { <?php echo $this->security->get_csrf_token_name(); ?>: '<?php echo $this->security->get_csrf_hash(); ?>' }
});
</script>