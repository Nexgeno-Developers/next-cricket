<div id="content-container"> 
    <div id="page-title">
        <h1 class="page-header text-overflow"></h1>
    </div>
    <div class="tab-base">
        <div class="panel">
            <div class="tab-base tab-stacked-left">
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a data-toggle="tab" href="#demo-stk-lft-tab-1"><?php echo translate('terms_&_condition');?></a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#demo-stk-lft-tab-2"><?php echo translate('privacy_policy');?></a>
                    </li>					<li>                        <a data-toggle="tab" href="#demo-stk-lft-tab-3"><?php echo translate('about_us');?></a>                    </li>
                </ul>
                <div class="tab-content bg_grey">
					<!--UPLOAD : terms and condition---------->
                    <div id="demo-stk-lft-tab-1" class="tab-pane fade active in">
                        <div class="panel">
                            <?php 
                                $terms_conditions =  $this->db->get_where('general_settings',array('type' => 'terms_conditions'))->row()->value;
                            ?>
                            <div class="panel-heading">
                                <h3 class="panel-title"><?php echo translate('terms_&_condition');?></h3>
                            </div>
							<?php
                                echo form_open(base_url() . 'index.php/admin/general_settings/terms/', array(
                                    'class' => 'form-horizontal',
                                    'method' => 'post',
                                    'id' => '',
                                    'enctype' => 'multipart/form-data'
                                ));
                            ?>
                                <div class="panel-body">
                                    <textarea class="summernotes" data-height='700' data-name='terms' ><?php echo $terms_conditions; ?></textarea>
                                    <!--===================================================-->
                                    <!-- End Summernote -->
                                </div>
                                <div class="panel-footer text-right">
                                    <span class="btn btn-success btn-labeled fa fa-check submitter"  data-ing='<?php echo translate('saving'); ?>' data-msg='<?php echo translate('settings_updated!'); ?>'>
                                        <?php echo translate('save');?>
                                    </span>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!--UPLOAD : privecy policy---------->
                    <div id="demo-stk-lft-tab-2" class="tab-pane fade">
                    	<div class="panel">
                            <?php
								$privacy_policy		=  $this->db->get_where('general_settings',array('type' => 'privacy_policy'))->row()->value;
                            ?>
                            <div class="panel-heading">
                                <h3 class="panel-title"><?php echo translate('privacy_policy');?></h3>
                            </div>
							<?php
                                echo form_open(base_url() . 'index.php/admin/general_settings/privacy_policy/', array(
                                    'class' => 'form-horizontal',
                                    'method' => 'post',
                                    'id' => '',
                                    'enctype' => 'multipart/form-data'
                                ));
                            ?>
                                <div class="panel-body">
                                    <textarea class="summernotes" data-height='700' data-name='privacy_policy' ><?php echo $privacy_policy; ?></textarea>
                                    <!--===================================================-->
                                    <!-- End Summernote -->
                                </div>
                                <div class="panel-footer text-right">
                                    <span class="btn btn-success btn-labeled fa fa-check submitter"  data-ing='<?php echo translate('saving'); ?>' data-msg='<?php echo translate('settings_updated!'); ?>'>
                                        <?php echo translate('save');?>
                                    </span>
                                </div>
                            </form>                        
                        </div>
                    </div>					<!--UPLOAD : About Us---------->                    <div id="demo-stk-lft-tab-3" class="tab-pane fade">                    	<div class="panel">                            <?php								$about_us		=  $this->db->get_where('general_settings',array('type' => 'about_us'))->row()->value;                            ?>                            <div class="panel-heading">                                <h3 class="panel-title"><?php echo translate('about_us');?></h3>                            </div>							<?php                                echo form_open(base_url() . 'index.php/admin/general_settings/about_us/', array(                                    'class' => 'form-horizontal',                                    'method' => 'post',                                    'id' => '',                                    'enctype' => 'multipart/form-data'                                ));                            ?>                                <div class="panel-body">                                    <textarea class="summernotes" data-height='700' data-name='about_us' ><?php echo $about_us; ?></textarea>                                    <!--===================================================-->                                    <!-- End Summernote -->                                </div>                                <div class="panel-footer text-right">                                    <span class="btn btn-success btn-labeled fa fa-check submitter"  data-ing='<?php echo translate('saving'); ?>' data-msg='<?php echo translate('settings_updated!'); ?>'>                                        <?php echo translate('save');?>                                    </span>                                </div>                            </form>                                                </div>                    </div>											
                </div>
            </div>
        </div>
    </div>
</div>
<div style="display:none;" id="site"></div>
<!-- for logo settings -->
<script>
    function load_logos(){
        ajax_load('<?php echo base_url(); ?>index.php/admin/logo_settings/show_all','list','');
    }
$(document).ready(function() {
        $('.summernotes').each(function() {
            var now = $(this);
            var h = now.data('height');
            var n = now.data('name');
            now.closest('div').append('<input type="hidden" class="val" name="'+n+'">');
            now.summernote({
                height: h,
                onChange: function() {
                    now.closest('div').find('.val').val(now.code());
                }
            });
			now.closest('div').find('.val').val(now.code());
			now.focus();
        });
        load_logos();
		
	});
$(document).ready(function() {
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			
			reader.onload = function (e) {
				$('#wrap').hide('fast');
				$('#blah').attr('src', e.target.result);
				$('#wrap').show('fast');
			}
			
			reader.readAsDataURL(input.files[0]);
		}
	}

	$("#imgInp").change(function(){
		readURL(this);
	});
	function readURL1(input1) {
		if (input1.files && input1.files[0]) {
			var reader1 = new FileReader();
			
			reader1.onload = function (e) {
				$('#wrap').hide('fast');
				$('#blah1').attr('src', e.target.result);
				$('#wrap').show('fast');
			}
			
			reader1.readAsDataURL(input1.files[0]);
		}
	}

	$("#imgInp1").change(function(){
		readURL1(this);
	});
});
    var base_url = '<?php echo base_url(); ?>'
    var user_type = 'admin';
    var module = 'logo_settings';
    var list_cont_func = 'show_all';
    var dlt_cont_func = 'delete_logo';

$(document).ready(function() {
	$('.demo-chosen-select').chosen();
	$('.demo-cs-multiselect').chosen({width:'100%'});
});

$(".range-def").on('slide', function(){
	var vals    = $("#nowslide").val();
	$(this).closest(".form-group").find(".range-def-val").html(vals);
	$(this).closest(".form-group").find("input").val(vals);
});

function sets(now){
	$(".range-def").each(function(){
		var min = $(this).data('min');
		var max = $(this).data('max');
		var start = $(this).data('start');
		$(this).noUiSlider({
			start: Number(start) ,
			range: {
				'min': Number(min),
				'max': Number(max)
			}
		}, true);
		if(now == 'first'){
			$(this).noUiSlider({
				start: 500 ,
				connect : 'lower',
				range: {
					'min': 0 ,
					'max': 10
				}
			},true).Link('lower').to($("#nowslide"));
			$(this).closest(".form-group").find(".range-def-val").html(start);
			$(this).closest(".form-group").find("input").val(start);
		} else if(now == 'later'){
			var than = $(this).closest(".form-group").find(".range-def-val").html();
			
			if(than !== 'undefined'){
				$(this).noUiSlider({
					start: than,
					connect : 'lower',
					range: {
						'min': min ,
						'max': max
					}
				},true).Link('lower').to($("#nowslide"));
			} 
			$(this).closest(".form-group").find(".range-def-val").html(than);
			$(this).closest(".form-group").find("input").val(than);
		}
	});
}

$(document).ready(function() {
	sets('later');
	$("form").submit(function(e){
		return false;
	});

});

</script>
<script src="<?php echo base_url(); ?>template/back/plugins/bootstrap-tagsinput/bootstrap-tagsinput.min.js">
</script>

<script>		
$('.delete-div-wrap .aad').on('click', function() {
	var id = $(this).closest('.delete-div-wrap').find('iframe').data('id');
});	
</script>

<style>
.img-fixed{
	width: 100px;	
}
.tr-bg{
background-image: url(http://www.mikechambers.com/files/html5/canvas/exportWithBackgroundColor/images/transparent_graphic.png)	
}

.cc-selector input{
    margin:0;padding:0;
    -webkit-appearance:none;
       -moz-appearance:none;
            appearance:none;
}
 
.cc-selector input:active +.drinkcard-cc
{
	opacity: 1;
	border:4px solid #169D4B;
}
.cc-selector input:checked +.drinkcard-cc{
	-webkit-filter: none;
	-moz-filter: none;
	filter: none;
	border:4px solid black;
}
.drinkcard-cc{
	cursor:pointer;
	background-size:contain;
	background-repeat:no-repeat;
	display:inline-block;
	-webkit-transition: all 100ms ease-in;
	-moz-transition: all 100ms ease-in;
	transition: all 100ms ease-in;
	-webkit-filter:opacity(.5);
	-moz-filter:opacity(.5);
	filter:opacity(.5);
	transition: all .6s ease-in-out;
	border:4px solid transparent;
	border-radius:5px !important;
}
.drinkcard-cc:hover{
	-webkit-filter:opacity(1);
	-moz-filter: opacity(1);
	filter:opacity(1);
	transition: all .6s ease-in-out;
	border:4px solid #8400C5;
			
}
</style>

