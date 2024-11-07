
<?php
	$system_name	 =  $this->db->get_where('general_settings',array('type' => 'system_name'))->row()->value;
	$system_title	 =  $this->db->get_where('general_settings',array('type' => 'system_title'))->row()->value;
?>
<?php include 'includes_top.php'; ?>
<style>
/* loading */
.loading{position: absolute;left: 0; top: 0; right: 0; bottom: 0;z-index: 2;background: rgba(255,255,255,0.7);}
.loading .content {
    position: absolute;
    transform: translateY(-50%);
     -webkit-transform: translateY(-50%);
     -ms-transform: translateY(-50%);
    top: 50%;
    left: 0;
    right: 0;
    text-align: center;
    color: #555;
}
</style>
<style>
 
 .brand-icon {
    width: 155px !important;
    height: auto;
    float: left;
    margin-left: 22px;
    margin-top: 5px;
}  

.player-img {
    height: auto;
    overflow: hidden;
    width: 70%;
}

/*#overlay {*/
  /*position: fixed; /* Sit on top of the page content */
  /*width: 100%; /* Full width (cover the whole page) */
  /*height: 100%; /* Full height (cover the whole page) */
/*  top: 0;*/
/*  left: 0;*/
/*  right: 0;*/
/*  bottom: 0;*/
  /*background-color: rgba(0,0,0,0.4); /* Black background with opacity */
  /*z-index: 1; /* Specify a stack order in case you're using a different order for other elements */
/*}*/

#container {
    position: relative;
    background-image: url("<?= base_url(); ?>uploads/golden-background.jpg");
    background-repeat: no-repeat;
    background-size: cover;
}
    
</style>
<body>
	<div id="container" class="effect mainnav-lg">
		<div id="overlay"></div>
		<!--NAVBAR-->
		<?php include 'header.php'; ?>
		<!--END NAVBAR-->
		<div class="loading" style="display: none;">
			<div class="content">
				<img src="<?php echo base_url().'uploads/loading.gif'; ?>"/>
			</div>
		</div>
		<div class="boxed" id="fol" style="position: relative; z-index:2">					<!--MAIN NAVIGATION-->						<?php include $this->session->userdata('title').'/navigation.php' ?>						<!--END MAIN NAVIGATION-->
			<!--CONTENT CONTAINER-->
			<div>
			<?php include $this->session->userdata('title').'/'.$page_name.'.php' ?>
			</div>
			<!--END CONTENT CONTAINER-->			
		</div>
		<!-- FOOTER -->
		<?php include 'footer.php'; ?>
		<?php include 'script_texts.php'; ?>
		<!-- END FOOTER -->
		<!-- SCROLL TOP BUTTON -->
		<button id="scroll-top" class="btn"><i class="fa fa-chevron-up"></i></button>
	</div>
	<!-- END OF CONTAINER -->
	
	<!-- SETTINGS - DEMO PURPOSE ONLY -->	
<?php include 'includes_bottom.php'; ?>

