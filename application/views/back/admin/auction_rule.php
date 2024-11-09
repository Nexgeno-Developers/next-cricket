<div id="content-container" class="container">
    <div id="page-title">
        <h1 class="page-header text-overflow">Auction Rule</h1>
    </div>
    <div class="tab-base">
        <div class="panel">
            <div class="panel-body">
                <div class="fade active in" id="list" style="border:1px solid #ebebeb; border-radius:4px;">
                    <div class="panel-body" id="demo_s">
                        <?php $about_us = $this->db->get_where('general_settings', array('type' => 'about_us'))->row()->value; ?>
                        <div><?php echo $about_us; ?></textarea></div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>