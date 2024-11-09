<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title><?php echo 'SOL PRIMER LEAGUES';?></title>

	<!--STYLESHEET-->
	<!--=================================================-->

	<!--Roboto Font [ OPTIONAL ]-->		<!--Bootstrap datepicker [ REQUIRED ]-->

	<!--Bootstrap Stylesheet [ REQUIRED ]-->
	<link href="<?php echo base_url(); ?>template/back/css/bootstrap.min.css" rel="stylesheet">

	<!--Activeit Stylesheet [ REQUIRED ]-->
	<link href="<?php echo base_url(); ?>template/back/css/activeit.min.css" rel="stylesheet">

	<!--Font Awesome [ OPTIONAL ]-->
	<link href="<?php echo base_url(); ?>template/back/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<!--Font Roboto Condensed-->
	<link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet">

	<!--Animate.css [ OPTIONAL ]-->
	<link href="<?php echo base_url(); ?>template/back/plugins/animate-css/animate.min.css" rel="stylesheet">

	<!--Morris.js [ OPTIONAL ]-->
	<link href="<?php echo base_url(); ?>template/back/plugins/morris-js/morris.min.css" rel="stylesheet">

	<!--Switchery [ OPTIONAL ]-->
	<link href="<?php echo base_url(); ?>template/back/plugins/switchery/switchery.min.css" rel="stylesheet">

	<!--Bootstrap Table [ OPTIONAL ]-->
	<link href="<?php echo base_url(); ?>template/back/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">

	<!--Bootstrap Select [ OPTIONAL ]-->
	<link href="<?php echo base_url(); ?>template/back/plugins/bootstrap-select/bootstrap-select.min.css" rel="stylesheet">

	<!--Bootstrap Tags Input [ OPTIONAL ]-->
	<link href="<?php echo base_url(); ?>template/back/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css" rel="stylesheet">

	<!--Chosen [ OPTIONAL ]-->
	<link href="<?php echo base_url(); ?>template/back/plugins/chosen/chosen.min.css" rel="stylesheet">

	<!--Bootstrap Timepicker [ OPTIONAL ]-->
	<link href="<?php echo base_url(); ?>template/back/plugins/Bootstrap-timepicker/bootstrap-timepicker.min.css" rel="stylesheet">

	<!--Bootstrap Validator [ OPTIONAL ]-->
	<link href="<?php echo base_url(); ?>template/back/plugins/Bootstrap-validator/bootstrapValidator.min.css" rel="stylesheet">

	<!--Demo script [ DEMONSTRATION ]-->
	<link href="<?php echo base_url(); ?>template/back/css/demo/activeit-demo.min.css" rel="stylesheet">
	
    <!--Countdown [ REQUIRED ]-->
	<link href="<?php echo base_url(); ?>template/back/css/countdown.css" rel="stylesheet">

	<!--SCRIPT-->
	<!--=================================================-->
	<!--jQuery [ REQUIRED ]-->
	<script src="<?php echo base_url(); ?>template/back/js/jquery-2.1.1.min.js"></script>
		<!--BootstrapJS [ RECOMMENDED ]-->
	<script src="<?php echo base_url(); ?>template/back/js/bootstrap.min.js"></script>

 
	<!--Page Load Progress Bar [ OPTIONAL ]-->
 
	<?php $ext =  $this->db->get_where('ui_settings',array('type' => 'fav_ext'))->row()->value;?>
	<link rel="shortcut icon" href="/uploads/favicon.ico">
	<script>
	<?php
		$volume = $this->crud_model->get_type_name_by_id('general_settings','46','value');
		if($this->crud_model->get_type_name_by_id('general_settings','45','value') == 'ok'){
			?>
			function sound(type){
					/* document.getElementById(type).volume = <?php if($volume == '10'){ echo 1 ; }else{echo '0.'.round($volume); } ?>;
					document.getElementById(type).play(); */
			}
			<?php 
		} 
		?>
	</script>
</head>
