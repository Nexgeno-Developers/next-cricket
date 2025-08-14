<style>
	.error {
		color: red;
	}

	.soldout-section {
		color: #fff;
	}

	.timer_aution {
		font-size: 100px;
		color: #fb4e4e;
		text-align: center;
		position: relative;
		margin-left: 33%;
		margin-top: -150px;
	}

	.flex_boxex {
		display: flex;
		gap: 27px;
		margin-bottom: 30px;
	}

	.flex_boxex input#amount {
		padding: 10px 10px;
	}

	.flex_boxex button {
		padding: 0px 25px;
		font-size: 22px !important;
		text-transform: capitalize;
		font-weight: 700 !important;
	}

	.flex_boxex .form-group {
		margin-bottom: 0;
	}
</style>
<div id="content-container" class="container">
	<div id="page-title">
		<div class="col-md-6">
			<h2 class="page-header text-overflow"><label>Auction League :</label> <?= $this->crud_model->get_type_name_by_id('league', $cur_lid, 'league_name'); ?> </h2>
		</div>
		<div class="col-md-6">
			<div class="form-group" style="font-size: 16px;"><br>
				<label class="col-sm-4 control-label" for="demo-hor-1" style="font-size: 20px; color:#fff">Select Category</label>
				<div class="col-sm-6" style=" z-index: 999999999;">
					<?php echo $this->crud_model->select_html('category', 'category_id', 'category_name', 'edit', 'form-control cat required', $this->session->userdata('cat_id'), NULL, NULL, 'category_wise_player'); ?>
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
					$row = $this->db->get_where('players', array('players_id' => $bidding_data['player_id']))->row_array();
					?>
					<?php if (!empty($row['players_id'])) : ?>
						<div class="item ">
							<div class="col-md-12">
								<div class="col-md-4">
									<span class="playerimg">
										<?php if ($teams_id) { ?>
											<img src="<?php echo base_url(); ?>uploads/sold-ribbon.png" id='soldout' />
											<?php } else {
											$category = json_decode($this->crud_model->get_type_name_by_id('league', $this->session->userdata('league_id'), 'category'));
											if (!empty($row['category_id']) && !empty($category)) {
												$count_arr = array_count_values($category);
												$count_curr_category = $count_arr[$row['category_id']];
												if (in_array($row['category_id'], $category) &&  $count_curr_category > 1) {
											?>
													<img src="<?php echo base_url(); ?>uploads/unsold-ribbon.png" id='unsoldout' />
										<?php }
											}
										} ?>
									</span>
									<div class="player-img">
										<?php
										if (file_exists('uploads/players_image/' . $row['image']) && !empty($row['image'])) {
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
								<h3><label class="player_name" style="word-wrap: break-word;"><?= $row['players_name']; ?>&nbsp;<?php if ($row['nickname']) echo '(' . $row['nickname'] . ')'; ?></label></h3>
								<div class="col-md-4">
									<div class="auc-desc" style="background: #e95c0c;">
										<p><label>Unique Id : </label> <span class="uniq_id"><?= $row['uniq_id']; ?></span> </p>
										<p><label>Category : </label> <span class="player_cat"><?= $this->crud_model->get_type_name_by_id('category', $row['category_id'], 'category_name'); ?></span></p>
										<p><label>Player Type : </label><span class="player_type"><?= $row['type']; ?></span> </p>
									</div>
								</div>
								<div class="col-md-4">
									<div class="auc-desc" style="background: #f5b317;">
										<p><label>Style : </label> <span class="player_style"><?= $row['style']; ?></span></p>
										<p><label>Age: </label> <span class="player_age"><?= date_diff(date_create($row['dob']), date_create(date("Y-m-d")))->format('%y'); ?></span></p>
										<p><label>Base Price: </label><span class="player_bsprice"><?= $this->crud_model->get_type_name_by_id('category', $row['category_id'], 'base_price'); ?></span> </p>
									</div>
								</div>

								<div class="col-md-12 text-center">
									<div class="timer timer_aution" id="timer">03:00</div>
								</div>
								<br>
								<div class="col-md-12 text-center mt-2">
									<div id="flash-msg" style="display:none; padding: 10px; background: #4caf50; color: white; border-radius: 5px; margin-bottom: 10px;"></div>
								</div>
							</div>

						</div>
						<div style="clear:both;"></div>
						<hr>
						<div class="soldout-section" style="display:<?php if (isset($teams_id)) {
																		echo 'block';
																	} else {
																		echo 'none';
																	} ?>">
							<div class="row">
								<div class="col-md-12">
									<div class="col-md-4 pur_team"><?php if ($teams_id) {
																		echo '<label>Purchase Team :&nbsp; </label><span>' . $teams_id . '</span>';
																	} ?></div>
									<div class="col-md-4 teamlogo" style="text-align: center;">
										<?php if (!empty($logo)) { ?>
											<img src="<?php echo base_url(); ?>uploads/teams_image/<?php echo $logo; ?>" style="width:100px;" />
										<?php } ?>
									</div>
									<div class="col-md-4 pur_point" style="text-align: right;"><?php if ($sold_price) {
																									echo '<label>Purchase Points :&nbsp; </label><span>' . $sold_price . '</span>';
																								} ?></div>
								</div>
							</div>
						</div>

						<div class="sold-section" style="display:<?php if (empty($teams_id)) {
																		echo 'block';
																	} else {
																		echo 'none';
																	} ?>">
							<!-- <div class="timer" id="timer" style="font-size: 2rem; font-weight: bold; color: #fff;">02:00</div> -->
							<div class="col-md-4"></div>

							<?php
							$role_id = $this->crud_model->get_type_name_by_id('admin', $this->session->userdata('admin_id'), 'role');
							?>
							<?php
							if ($role_id != 1) { ?>

								<?php
								
									$player_count = $this->crud_model->get_player_count($bidding_data['session_id'], $this->session->userdata('team'));

									if($player_count){
								?>

								<div class="col-md-4">
									<?php
									echo form_open(base_url() . 'index.php/admin/bidding/bid/', array(
										'class' => 'form-horizontal',
										'method' => 'post',
										'id' => 'start_bidding',
										'enctype' => 'multipart/form-data'
									));
									?>

									<div class="flex_boxex">

										<div class="form-group">
											<input type="hidden" name="session_id" id="session_id" value="<?= $bidding_data['session_id'] ?>">
											<input type="hidden" name="team_id" id="team_id" value="<?= $this->session->userdata('team'); ?>">
											<input name="amount" id="amount" class="required" style="background: #000; color: #fff;" require>
										</div>

										<button type="submit" class="btn btn-purple"> bid </button>
									</div>


									</form>
								</div>

								<?php } else { ?>
									<div class="d-flex justify-content-center">
										<div class="alert alert-warning text-center" style="max-width: 500px;">
											Your team player limit has been reached for this league.
										</div>
									</div>
								<?php } ?>

							<?php } else { ?>
								<div class="col-md-4">
									<div class="flex_boxex">
										<button type="submit" onclick="win_Check()" class="btn btn-danger"> Stop Bidding </button>
									</div>
								</div>

							<?php } ?>
						</div>

						<table class="table aution-table">
							<thead>
								<tr>
									<th>Sr No.</th>
									<th>Owner ID</th>
									<th>Team ID</th>
									<th>Amount</th>
									<!-- <th>Is Winner</th> -->
									<th>Bid Time</th>
								</tr>
							</thead>
							<tbody id="bid_data">
								<?php
								$i = 1;
								foreach ($bid_data as $data) {
									$owner_name = $this->db->select('name')->where('admin_id', $data['owner_id'])->get('admin')->row_array();
									$teams_name = $this->db->select('teams_name')->where('teams_id', $data['team_id'])->get('teams')->row_array();
								?>
									<tr>
										<td style="color:white;"><?= $i++; ?></td>
										<td style="color:white;"><?= $owner_name['name']; ?></td>
										<td style="color:white;"><?= $teams_name['teams_name']; ?></td>
										<td style="color:white;"><?= $data['amount']; ?></td>
										<!-- <td><?= $data['is_winner']; ?></td> -->
										<td style="color:white;"><?= $data['bid_time']; ?></td>
									</tr>
								<?php } ?>
							</tbody>
						</table>

				</div>


			<?php else : ?>
				<div> 
					<center>
						<h1><span style="color:aliceblue">No Players Left</span></h1>
					</center>
				</div>
			<?php endif; ?>

			</div>
			<?php /*
				<span class="prevPlayer glyphicon glyphicon-chevron-left btn btn-primary" data_curr_id="<?= $unsold_curr_players_id; ?>" data_prev_id="" style="display:none;"></span>
				<span class="nextPlayer glyphicon glyphicon-chevron-right btn btn-primary" data_curr_id="<?= $unsold_curr_players_id; ?>" data_next_id="<?= $unsold_next_players_id; ?>" style="display:<?php if(empty($unsold_next_players_id)){ echo 'none'; } ?>"></span>
                */ ?>
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
	$(function() {
		$("#unsold").click(function() {
			$('#myModal').modal('show');
			setTimeout(function() {
				$('#myModal').modal('hide');
			}, 2000);
		});
	});
</script>
<script>
	var base_url = '<?php echo base_url(); ?>';
	var user_type = 'admin';
	var module = 'auction';
	var list_cont_func = 'list';
	var dlt_cont_func = 'delete';

	function category_wise_player(val) {
		$.ajax({
			type: "GET",
			url: base_url + 'index.php/' + user_type + '/' + module + '/set_cat_sess',
			data: {
				category: val
			},
			beforeSend: function() {
				$('.loading').show(); // change submit button text
			},
			success: function(data) {
				$('.loading').hide();
				if (data) {
					window.location.reload();
				}
			}
		});
	}

	/*Previous NEXT Player Load */
	$('body').on('click', '.nextPlayer,.prevPlayer', function() {
		var here = $(this);
		var data_curr_id = here.attr('data_curr_id');
		var data_next_id = here.attr('data_next_id');
		var data_prev_id = here.attr('data_prev_id');
		var formData;
		formData = {};
		formData.data_curr_id = data_curr_id;
		formData.data_next_id = data_next_id;
		formData.data_prev_id = data_prev_id;
		$.ajax({
			type: "GET",
			url: base_url + 'index.php/' + user_type + '/' + module + '/next_prev',
			data: formData,
			datatype: 'JSON',
			cache: false,
			beforeSend: function() {
				$('.loading').show(); // change submit button text
			},
			success: function(data) {
				$('.loading').hide();
				var data = JSON.parse(data);
				if (data.show_next_player == 'show_next_player') {
					if (data.next_players_id == 'last_player_id') {
						/* Set Next Player */
						$('.nextPlayer').hide();
						$('.nextPlayer').attr('data_curr_id', '');
						$('.nextPlayer').attr('data_next_id', '');
						/* Set Previous Player */
						$('.prevPlayer').show();
						$('.prevPlayer').attr('data_curr_id', data.curr_players_id);
						$('.prevPlayer').attr('data_prev_id', data.prev_players_id);
					} else {
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
				if (data.show_prev_player == 'show_prev_player') {
					if (data.prev_players_id == 'first_player_id') {
						/* Set Previous Player */
						$('.prevPlayer').hide();

						$('.prevPlayer').attr('data_curr_id', '');
						$('.prevPlayer').attr('data_prev_id', '');
						/* Set Next Player */
						$('.nextPlayer').show();
						$('.nextPlayer').attr('data_curr_id', data.curr_players_id);
						$('.nextPlayer').attr('data_next_id', data.next_players_id);
					} else {
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

				if (data.curr_player_details.teams_id) {
					$('.playerimg').html('<img  src="' + base_url + 'uploads/sold-ribbon.png" id="soldout" />');
					$('.sold-section').hide();
					$('.pur_team').html('<label>Purchase Team :&nbsp; </label><span>' + data.curr_player_details.teams_id + '</span>');
					$('.pur_point').html('<label>Purchase Points :&nbsp; </label><span>' + data.curr_player_details.sold_price + '</span>');
					$('.teamlogo').html('<img  src="' + base_url + 'uploads/teams_image/' + data.curr_player_details.logo + '" style="width: 100px;" />');
					$('.soldout-section').show();
				} else {
					if (data.curr_player_details.unsold == 'unsold') {
						$('.playerimg').html('<img src="' + base_url + 'uploads/unsold-ribbon.png" id="unsoldout" />');
					} else {
						$('.playerimg').html('');
					}
					$('.soldout-section').hide();
					$('.sold-section').show();

					/* for sold form */
					$('#category_id').val(data.curr_player_details.category_id);
					$('#players_id').val(data.curr_player_details.players_id);
				}

				/* for current player */
				$('.auction-profile').attr('src', base_url + 'uploads/players_image/' + data.curr_player_details.image);
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

	$('#fol').on('click', '#soldplayer', function() {
		var here = $(this); // alert div for show alert message
		here.html('Working...');
		var form = here.closest('form');
		$(form).validate({
			rules: {
				sold_price: {
					required: true
				},
				teams_id: {
					required: true
				}
			}
		});
		if ((form).valid()) {
			$.ajax({
				type: "POST",
				url: base_url + 'index.php/' + user_type + '/' + module + '/do_sold',
				data: form.serialize(), // serialize form data 
				datatype: 'JSON',
				cache: false,
				success: function(data) {
					var data = JSON.parse(data);
					if (data.sold == 'success') {
						$('.sold-section').hide();
						$('.playerimg').html('<img  src="' + base_url + 'uploads/sold-ribbon.png" id="soldout" />');
						$('.pur_team').html('<label>Purchase Team :&nbsp; </label><span>' + data.teams_id + '</span>');
						$('.pur_point').html('<label>Purchase Points :&nbsp; </label><span>' + data.sold_price + '</span>');
						$('.teamlogo').html('<img  src="' + base_url + 'uploads/teams_image/' + data.logo + '" style="width: 100px;" />');
						$('.soldout-section').show();
						$('[name="sold_price"]').val('');
						$('[name="teams_id"]').prop('selectedIndex', 0);

					}
				}
			});
		}

	});
	/*ajax end here*/
	$.ajaxSetup({
		headers: {
			<?php echo $this->security->get_csrf_token_name(); ?>: '<?php echo $this->security->get_csrf_hash(); ?>'
		}
	});


	$(document).ready(function() {
		const past_amount = JSON.parse(localStorage.getItem('past_amount')) || [];
		function addAmount(amount) {
			past_amount.push(amount);
			localStorage.setItem('past_amount', JSON.stringify(past_amount));
		}
		$('#start_bidding').submit(function(event) {
			event.preventDefault(); // Prevent the form from submitting normally

			let $form = $(this);
			let $submitBtn = $form.find(':submit');

			// Disable the submit button to prevent double-click
			$submitBtn.prop('disabled', true).text('Please wait...');
			var amount = $('#amount').val().trim();

			if (amount !== '' && !past_amount.includes(amount)) {
				$.ajax({
					url: $(this).attr('action'), // The action URL from the form
					type: $(this).attr('method'), // The method type from the form
					data: $(this).serialize(), // Serialize form data
					dataType: 'json', // Expect a JSON response
					success: function(response) {
						// Clear any previous alerts
						$('#scroll-top').next('#floating-top-right').remove();


						// Check if the response status is success or error
						if (response.status === 'success') {

							addAmount(amount);

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
												<p class="alert-message">${response.message}</p>
											</div>
										</div>
									</div>
								</div>
							</div>`;
							$('#scroll-top').after(successAlert);

							$submitBtn.prop('disabled', false).text('Bid');

							// Close button click event
							$('.alert-success .close').click(function() {
								$(this).closest('#floating-top-right').remove();
							});

							// setTimeout(function() {
							// 	location.reload();
							// }, 3000);

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
												<p class="alert-message">${response.message}</p>
											</div>
										</div>
									</div>
								</div>
							</div>`;
							$('#scroll-top').after(errorAlert);

							$submitBtn.prop('disabled', false).text('Bid');

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
											<p class="alert-message">${response.message}</p>
										</div>
									</div>
								</div>
							</div>
						</div>`;
						$('#scroll-top').after(errorAlert);

						$submitBtn.prop('disabled', false).text('Bid');

						// Close button click event
						$('.alert-danger .close').click(function() {
							$(this).closest('#floating-top-right').remove();
						});
					}
				});
			
			} else {

				// Re-enable the button
				$submitBtn.prop('disabled', false).text('Bid');

				var errorAlert = `
					<div id="floating-top-right" class="floating-container">
						<div class="alert-wrap in animated fadeIn">
							<div class="alert alert-danger" role="alert">
								<button class="close" type="button"><i class="fa fa-times-circle"></i></button>
								<div class="media">
									<div class="media-left">
										<span class="icon-wrap icon-wrap-xs icon-circle alert-icon">
											<i class="fa fa-minus"></i>
										</span>
									</div>
									<div class="media-body">
										<h4 class="alert-title"></h4>
										<p class="alert-message">It's an old bid (${amount}), please bid a new amount.</p>
									</div>
								</div>
							</div>
						</div>
					</div>`;

				$('#scroll-top').after(errorAlert);

				// Close button event
				$('#floating-top-right .close').click(function() {
					$(this).closest('#floating-top-right').remove();
				});

			}
		});
	});


	function win_Check() {
		var base__url = '<?php echo base_url(); ?>';
		var bid_id = '<?php echo $bidding_data['session_id'] ?>';
		localStorage.removeItem('past_amount');
		$.ajax({
			url: base__url + 'index.php/admin/bidding/bid-win/' + bid_id, // The action URL from the form
			type: $(this).attr('method'), // The method type from the form
			data: $(this).serialize(), // Serialize form data
			dataType: 'json', // Expect a JSON response
			success: function(response) {
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

					// setTimeout(function() {
					// 	window.location.href = base__url + 'index.php/admin/bidding';
					// }, 3000);
					setTimeout(function() {
						window.location.href = base__url + 'index.php/admin/bidding/bidding-winner/' + bid_id;
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
											<p class="alert-message">${response.message}</p>
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

					// setTimeout(function() {
					// 	window.location.href = base__url + 'index.php/admin/bidding';
					// }, 3000);

					setTimeout(function() {
						window.location.href = base__url + 'index.php/admin/bidding/bidding-winner/' + bid_id;
					}, 3000);

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
	}

	function showFlashMessage(message, background = '#4caf50') {
		const flashDiv = document.getElementById("flash-msg");
		flashDiv.innerText = message;
		flashDiv.style.background = background;
		flashDiv.style.display = "block";

		setTimeout(() => {
			flashDiv.style.display = "none";
		}, 5000); // Hide after 5 seconds
	}


	// Function to start the timer
	function startTimer(startTime, durationInMinutes) {
		const startTimeMs = new Date(startTime).getTime();
		const durationMs = durationInMinutes * 60 * 1000; // Convert minutes to milliseconds
		console.log("durationMs:", durationMs);
		const endTimeMs = startTimeMs + durationMs;

		function updateTimer() {
			const now = new Date().getTime();
			const remainingMs = endTimeMs - now;

			if (remainingMs <= 0) {
				console.log("Time is up!");
				document.getElementById("timer").innerHTML = "00:00";
				clearInterval(timerInterval);
				// alert("Time is up!");  
				win_Check();
			} else {
				const remainingMinutes = Math.floor(remainingMs / 60000);
				const remainingSeconds = Math.floor((remainingMs % 60000) / 1000);
				document.getElementById("timer").innerHTML =
					(remainingMinutes < 10 ? "0" : "") + remainingMinutes + ":" +
					(remainingSeconds < 10 ? "0" : "") + remainingSeconds;

				// Show flash message when time is about to expire
				if (remainingMs <= 10000) {
					showFlashMessage("Hurry up! Only 10 seconds left.", "#f44336");
				}
			}
		}

		// Update the timer every second
		const timerInterval = setInterval(updateTimer, 1000);
		updateTimer(); // Initial call to display immediately
	}

	// Define the start time and duration
	const startTime = "<?php echo $bidding_data['start_time'] ?>"; // Replace with your start time
	const durationInMinutes = 3; // 3-minute countdown

	// Start the timer
	startTimer(startTime, durationInMinutes);


	function checkAndFetchBiddingData() {
		const biddingDiv = document.getElementById("bid_data");
		var base__url = '<?php echo base_url(); ?>';
		var bid_id = '<?php echo $bidding_data['session_id'] ?>';

		if (window.location.href.includes("/bidding/start/")) {
			setInterval(() => {
				fetch(base__url + 'index.php/admin/bidding/bid-data/' + bid_id)
					.then(response => response.json())
					.then(data => {
						if (data.status === 'success') {
							let rows = '';
							let i = 1;
							data.bid_data.forEach(bid => {
								rows += `
									<tr>
										<td style="color:white;">${i++}</td>
										<td style="color:white;">${bid.owner_name}</td>
										<td style="color:white;">${bid.team_name}</td>
										<td style="color:white;">${bid.amount}</td>
										<td style="color:white;">${bid.bid_time}</td>
									</tr>
								`;
							});
							biddingDiv.innerHTML = rows;
						} else if (data.status === 'closed') {
							window.location.href = base__url + 'index.php/admin/bidding/bidding-winner/' + bid_id;
						}
					})
					.catch(error => {
						console.error('AJAX error:', error);
					});
			}, 3000);
		}
	}

	document.addEventListener("DOMContentLoaded", checkAndFetchBiddingData);
</script>

<?php if ($this->session->flashdata('flash_msg')): 
    $flash = $this->session->flashdata('flash_msg');
?>
<script>
    document.addEventListener("DOMContentLoaded", function() {
        showFlashMessage("<?= addslashes($flash['text']) ?>", "<?= $flash['color'] ?>");
    });
</script>
<?php endif; ?>