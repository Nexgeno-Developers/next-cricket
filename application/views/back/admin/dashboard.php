<link rel="stylesheet" href="<?php echo base_url(); ?>template/back/amcharts/style.css" type="text/css">
<script src="<?php echo base_url(); ?>template/back/amcharts/amcharts.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>template/back/amcharts/serial.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>template/back/plugins/morris-js/morris.min.js"></script>
<script src="<?php echo base_url(); ?>template/back/plugins/gauge-js/gauge.min.js"></script>

<div id="content-container" class="container">	
	<div id="page-title">
		<h1 class="page-header text-overflow"><?php echo translate('dashboard');?></h1>
	</div>
	<div id="page-content">
		<div class="row" <?php if($this->crud_model->get_type_name_by_id('general_settings','68','value') == 'ok'){}else{ ?>style="display:none;"<?php } ?> >

			<div class="col-md-6 col-lg-6">
				<div class="panel panel-bordered panel-black">
					<div class="panel-heading">
						<h3 class="panel-title">Current League</h3>
					</div>
					<div class="panel-body">
						<div class="text-center">
							<!--<canvas id="gauge3" height="70" class="canvas-responsive"></canvas>-->
							<p class="h4">
								<span id="gauge3-txt" class="label label-black"><?= $this->crud_model->get_type_name_by_id('league',$cur_league['league_id'],'league_name'); ?></span>
							</p>
						</div>
					</div>
				</div>
			</div>		    
		    
			<div class="col-md-6 col-lg-6">
				<div class="panel panel-bordered panel-purple">
					<div class="panel-heading">
						<h3 class="panel-title">Total No of Teams</h3>
					</div>
					<div class="panel-body">
						<div class="text-center">
							<!--<canvas id="gauge1" height="70" class="canvas-responsive"></canvas>-->
							<p class="h4">
								<span id="gauge1-txt" class="label label-purple"><?= $all_teams; ?></span>
							</p>
						</div>
					</div>
				</div>
			</div>
            
			<div class="col-md-4 col-lg-4">
				<div class="panel panel-bordered panel-success">
					<div class="panel-heading">
						<h3 class="panel-title">Total No of Players</h3>
					</div>
					<div class="panel-body">
						<div class="text-center">
							<!--<canvas id="gauge2" height="70" class="canvas-responsive"></canvas>-->
							<p class="h4">
								<span id="gauge2-txt" class="label label-success"><?= $all_players; ?></span>
							</p>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-4 col-lg-4">
				<div class="panel panel-bordered panel-warning">
					<div class="panel-heading">
						<h3 class="panel-title">Total No of Sold Players</h3>
					</div>
					<div class="panel-body">
						<div class="text-center">
							<!--<canvas id="gauge2" height="70" class="canvas-responsive"></canvas>-->
							<p class="h4">
								<span id="gauge2-txt" class="label label-warning"><?= $all_sold_players; ?></span>
							</p>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-4 col-lg-4">
				<div class="panel panel-bordered panel-danger">
					<div class="panel-heading">
						<h3 class="panel-title">Total No of Unsold Players</h3>
					</div>
					<div class="panel-body">
						<div class="text-center">
							<!--<canvas id="gauge2" height="70" class="canvas-responsive"></canvas>-->
							<p class="h4">
								<span id="gauge2-txt" class="label label-danger" style="background:#e9573f;"><?= $all_unsold_players; ?></span>
							</p>
						</div>
					</div>
				</div>
			</div>			
			
		</div>

		
	</div>
</div>


<script src="<?php echo base_url(); ?>template/back/js/custom/dashboard.js"></script>
<style>
	  #actions {
		list-style: none;
		padding: 0;
	  }
	  #inline-actions {
		padding-top: 10px;
	  }
	  .item {
		margin-left: 20px;
	  }
	  .label {
			font-size: 40px;
	  }
		#page-content {
    padding: 20px 0px 0 !important;
		}
</style>