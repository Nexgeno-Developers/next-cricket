<div class="col-md-12">
	<div class="panel-body">
		<div class="form-group">
			<label class="col-sm-4 control-label" for="demo-hor-1">Sold Price</label>
			<div class="col-sm-6">	₹ <?= $sold_price; ?></div>
		</div>
		<div class="form-group">
			<label class="col-sm-4 control-label" for="demo-hor-1">Sold Team Name</label>
			<div class="col-sm-6"><?php echo $this->crud_model->get_type_name_by_id('teams',$teams_id,'teams_name'); ?></div>
		</div>
		<div class="form-group">
			<div class="col-sm-4">Team Logo</div>
			<div class="col-sm-6"><img class="img-responsive" width="100" src="uploads/teams_image/<?php echo $this->crud_model->get_type_name_by_id('teams',$teams_id,'logo'); ?>" alt="User_Image" >	</div>
		</div>
	</div>
</div>