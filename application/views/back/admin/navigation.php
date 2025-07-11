<style>
/* To Dropdown navbar dropdown on hover */
.navbar-nav > li:hover > .dropdown-menu {
    display: block;
}
.dropdown-submenu {
    position: relative;
}

.dropdown-submenu>.dropdown-menu {
    top: 0;
    left: -100%;
    margin-top: -6px;
    margin-left: -1px;
    -webkit-border-radius: 0 6px 6px 6px;
    -moz-border-radius: 0 6px 6px;
    border-radius: 0 6px 6px 6px;
}

.dropdown-submenu:hover>.dropdown-menu {
    display: block;
}


.dropdown-submenu:hover>a:after {
    border-left-color: #fff;
}

.dropdown-submenu.pull-left {
    float: none;
}

.dropdown-submenu.pull-left>.dropdown-menu {
    left: -100%;
    margin-left: 10px;
    -webkit-border-radius: 6px 0 6px 6px;
    -moz-border-radius: 6px 0 6px 6px;
    border-radius: 6px 0 6px 6px;
}
.navbar-nav:not(.sm-collapsible) ul a.has-submenu {
    padding-right: 20px !important;
}
a.dropdown-toggle i {
    padding-left: 4px;
    padding-top: 5px;
}

</style>
<link href="https://vadikom.github.io/smartmenus/src/addons/bootstrap/jquery.smartmenus.bootstrap.css" rel="stylesheet">
<!-- Navbar --> 
<!-- SmartMenus jQuery plugin -->
<script type="text/javascript" src="https://vadikom.github.io/smartmenus/src/jquery.smartmenus.js"></script> 
<!-- SmartMenus jQuery Bootstrap Addon -->
<script type="text/javascript" src="https://vadikom.github.io/smartmenus/src/addons/bootstrap/jquery.smartmenus.bootstrap.js"></script>
<div class="container">
	<div class="navbar " role="navigation">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<?php $title = $this->crud_model->get_type_name_by_id('general_settings','1','value'); ?>
			<center>
			<a href="<?php echo base_url(); ?>" class="navbar-brand" style="padding-left: 5px;">
				<?php if(file_exists('uploads/ucb-logo3.png')): ?>
				<img src="<?php echo base_url(); ?>uploads/ucb-logo3.png" alt="<?= $title; ?>" class="brand-icon" >
				<?php endif; ?>
				<!-- <div class="brand-title"><span class="brand-text" ><?= $title; ?></span></div> -->
			</a>
			</center>
		</div>
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
			<?php if($this->crud_model->get_type_name_by_id('admin',$this->session->userdata('admin_id'),'role')==1){ ?>
				<li <?php if($page_name=="dashboard"){?> class="active-link" <?php } ?>>
					<a href="<?php echo base_url(); ?>index.php/admin/">
						<i class="fa fa-tachometer"></i><span class="menu-title"> Dashboard</span>
					</a>
				</li>                    
				<li <?php if($page_name=="category"){?> class="active-link" <?php } ?> >
					<a href="<?php echo base_url(); ?>index.php/admin/category">
						<i class="fa fa-sitemap"></i> Category
					</a>
				</li>	
				<li <?php if($page_name=="players"){?> class="active-link" <?php } ?> >
					<a href="<?php echo base_url(); ?>index.php/admin/players">
						<i class="fa fa-male"></i> Players
					</a>
				</li>
				<li <?php if($page_name=="teams"){?> class="active-link" <?php } ?> >
					<a href="<?php echo base_url(); ?>index.php/admin/teams">
						<i class="fa fa-users"></i> Teams
					</a>
				</li>	 
				<li <?php if($page_name=="league"){?> class="active-link" <?php } ?> >
					<a href="<?php echo base_url(); ?>index.php/admin/league">
						<i class="fa fa-calendar-o"></i> League
					</a>
				</li>
				<li <?php if($page_name=="sponsor"){?> class="active-link" <?php } ?> >
					<a href="<?php echo base_url(); ?>index.php/admin/sponsor">
						<i class="fa fa-users"></i> Sponsor
					</a>
				</li>
	
				<?php } ?>
				
				<?php /* user menu */ ?>
				<?php if($this->crud_model->get_type_name_by_id('admin',$this->session->userdata('admin_id'),'role')==2){ ?>
				<li <?php if($page_name=="auction"){?> class="active-link" <?php } ?> >
					<a href="<?php echo base_url(); ?>index.php/admin/auction" target="_blank">
						<i class="fa fa-calendar-o"></i>  Auction
					</a>
				</li>	
				<li <?php if($page_name=="team_player"){?> class="active-link" <?php } ?> >
					<a href="<?php echo base_url(); ?>index.php/admin/team_player" target="_blank">
						<i class="fa fa-male"></i> Team Players
					</a>
				</li>	
				<?php } ?>

				<?php if($this->crud_model->get_type_name_by_id('admin',$this->session->userdata('admin_id'),'role')==3){ ?>
				<li <?php if($page_name=="dashboard"){?> class="active-link" <?php } ?> style="border-top:1px solid rgba(69, 74, 84, 0.7);">
					<a href="<?php echo base_url(); ?>index.php/admin/">
						<i class="fa fa-tachometer"></i><span class="menu-title"> Dashboard</span>
					</a>
				</li>
				<li <?php if($page_name=="teams"){?> class="active-link" <?php } ?> >
					<a href="<?php echo base_url(); ?>index.php/admin/teams">
						<i class="fa fa-users"></i> Teams
					</a>
				</li>	 
				<?php } ?>

				<li <?php if($page_name=="bidding"){?> class="active-link" <?php } ?> >
					<a href="<?php echo base_url(); ?>index.php/admin/bidding">
						<i class="fa fa-calendar-o"></i> Bidding List
					</a>
				</li>

				<li <?php if($page_name=="manage_admin"){?> class="active-link" <?php } ?> >
					<a href="<?php echo base_url(); ?>index.php/admin/manage_admin/">
						<i class="fa fa-lock"></i><span class="menu-title"> Profile</span>
					</a>
				</li>
				<?php 
				$role_id = $this->crud_model->get_type_name_by_id('admin', $this->session->userdata('admin_id'), 'role');
				?>
				<?php 
				if($role_id == 1){ ?>
					<li <?php if($page_name == "site_settings"){ ?> class="active-link" <?php } ?> >
						<a href="<?php echo base_url(); ?>index.php/admin/site_settings/">
							<i class="fa fa-cog"></i><span class="menu-title"> Settings</span>
						</a>
					</li>
				<?php } ?>
				<?php 
				if($role_id == 3){ ?>
					<li <?php if($page_name == "auction_rule"){ ?> class="active-link" <?php } ?> >
						<a href="<?php echo base_url(); ?>index.php/admin/auction_rule/">
							<i class="fa fa-gavel"></i><span class="menu-title"> Auction Rule</span>
						</a>
					</li>
				<?php } ?>
				<li style="display:block;">
					<a href="<?php echo base_url(); ?>index.php/<?php echo $this->session->userdata('title'); ?>/logout/" >
						<i class="fa fa-sign-out fa-fw"></i> <?php echo translate('logout');?>
					</a>
				</li>
			</ul>  
		</div><!--/.nav-collapse -->
	</div>
</div>
<style>
.activate_bar{
border-left: 3px solid #1ACFFC;	
transition: all .6s ease-in-out;
}
.activate_bar:hover{
border-bottom: 3px solid #1ACFFC;
transition: all .6s ease-in-out;
background:#1ACFFC !important;
color:#000 !important;	
}
ul ul ul li a{
	padding-left:10px !important;
}
ul ul ul li a:hover{
	background:#2f343b !important;
}
</style>