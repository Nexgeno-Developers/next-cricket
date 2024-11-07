<footer id="footer">
    <div class="show-fixed pull-right">
        <ul class="footer-list list-inline">
            <li>
                <p class="text-sm"><?php echo translate('SEO_proggres');?></p>
                <div class="progress progress-sm progress-light-base">
                    <div style="width: 80%" class="progress-bar progress-bar-danger"></div>
                </div>
            </li>
            <li>
                <p class="text-sm"><?php echo translate('online_tutorial');?></p>
                <div class="progress progress-sm progress-light-base">
                    <div style="width: 80%" class="progress-bar progress-bar-primary"></div>
                </div>
            </li>
            <li>
                <button class="btn btn-sm btn-dark btn-active-success"><?php echo translate('checkout');?></button>
            </li>
        </ul>
    </div>
	<!-- <div class="hide-fixed pull-right pad-rgt">Currently v<?php /* echo $this->db->get_where('general_settings',array('type'=>'version'))->row()->value;  */?></div> -->
	<?php if($this->uri->segment(1) == null){ ?>
	<div class="footer_logo"><a target="_blank" href="https://www.makent.in/"><img src="http://mak-cricket.webtesting.pw/uploads/user_image/logo.png"></a></div>
	<?php } ?>
	<p class="pad-lft">&#0169; <?php echo date('Y');?> <a style="color:#cf67be" target="_blank" href="https://www.nexgeno.in/">Nexgeno Technology Pvt Ltd 2023</a></p>
</footer>