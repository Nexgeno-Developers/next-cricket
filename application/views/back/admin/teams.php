<div id="content-container" class="container">
	<div id="page-title">
		<h1 class="page-header text-overflow" >Manage Teams</h1>
		<a class="btn btn-mint btn-xs btn-labeled fa fa-location-arrow" target="_blank" href="<?php echo base_url(); ?>index.php/admin/teams/all_team_players">All Teams</a>
	</div>
	<div class="tab-base">
		<div class="panel">
			<div class="panel-body">
				<div class="tab-pane fade active in" id="list" style="border:1px solid #ebebeb; border-radius:4px;"></div>
			</div>
		</div>
  </div>
</div>

<script>
	var base_url = '<?php echo base_url(); ?>'
	var user_type = 'admin';
	var module = 'teams';
	var list_cont_func = 'list';
	var dlt_cont_func = 'delete';
	var dlt_cont_func2 = 'delete_player';
</script>

