<div class="row">
    <div class="col-md-12">
        <!--Panel heading-->
        <div class="tab-base horizontal-tab">
            <ul class="nav nav-tabs">
                <li>
                    <a data-toggle="tab" href="#tabb-2"><?php echo translate('home_banners'); ?></a>
                </li>
                <li class="active">
                    <a data-toggle="tab" href="#tabb-6"><?php echo translate('category_wise_products'); ?></a>
                </li>
            </ul>
            <!--Tabs Content-->                    
            <div class="tab-content">
                <div id="tabb-2" class="tab-pane fade">
                	<div class="row">
                    	<div class="col-md-12 form-horizontal">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                    <?php echo translate('after_slider'); ?>
                                </h3>
                            </div>
														<?php
															$home_banner =  $this->db->get_where('banner',array('place' => 'after_slider'))->result_array();
                                foreach($home_banner as $row){
                            ?>
                                <div class="col-md-3">
                                    <?php
                                        echo form_open(base_url() . 'index.php/admin/banner/set/'. $row['banner_id'], array(
                                            'class' => 'form-horizontal',
                                            'method' => 'post',
                                            'enctype' => 'multipart/form-data'
                                        ));
                                    ?>
                                        <div class="panel panel-bordered-grey">
                                            <div class="panel-body">
                                                <div class="form-group">
                                                    <div class="col-sm-12">
                                                        <img class="img-responsive img_show img-banner"
                                                            src="<?php echo $this->crud_model->file_view('banner',$row['banner_id'],'','','thumb','src','','',$row['image_ext']) ?>" style="width:300px; height:110px;" />
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-sm-12">
                                                        <span class="pull-left btn btn-default btn-file">
                                                            <?php echo translate('select_banner_image');?>
                                                            <input type="file" name="img" class="form-control imgInp" accept="image">
                                                        </span> 
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-sm-12">
                                                        <input id="ban_<?php echo $row['banner_id']; ?>" 
                                                            data-id="<?php echo $row['banner_id']; ?>" class='sw1' 
                                                                type="checkbox" name="status" 
                                                                    <?php if($row['status'] == 'ok'){ ?>checked<?php } ?>
                                                                        value="ok" />
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-sm-12">
                                                         <input type="text" name="link" value="<?php echo $row['link']; ?>" 
                                                            placeholder="<?php echo translate('link');?>" class="form-control" >
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel-footer text-right">
                                                <span class="btn btn-info btn-xs btn-labeled fa fa-check submitter enterer"  
                                                    data-ing='<?php echo translate('updating..');?>' 
                                                        data-msg='<?php echo translate('banner_updated!');?>'>
                                                        <?php echo translate('update');?>
                                                </span>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            <?php
                                }
                            ?>
                        </div>
                    </div>
                </div>
                <div id="tabb-6" class="tab-pane fade active in">
                	<div class="row">
                    	<div class="col-md-12 form-horizontal"><?php
												echo form_open(base_url() . 'index.php/admin/ui_settings/ui_home/home1_category/', array(
													'class' => 'form-horizontal',
													'method' => 'post',
													'id' => 'category_ptoduct',
													'enctype' => 'multipart/form-data'
												));
												$category = $this->db->get('category')->result_array(); ?>
                      <div id="home_category_selection_box"><?php																
												$home2_categories = json_decode($this->db->get_where('ui_settings',array('type'=>'home_categories'))->row()->value,true);
											foreach($home2_categories as $cdata){
												
													if($this->crud_model->if_publishable_category($cdata['category'])){	?>
														<div class="col-sm-12 element_box">
														<!-- 1st level-->
															<div class="form-group">
																<label class="col-sm-3 control-label" for="demo-hor-2"><?php echo translate('category');?></label>
																<div class="col-sm-9 category_select_div"><?php
																	$l = 0;
																	foreach($category as $cat){
																		$l++;
																		if($this->crud_model->if_publishable_category($cat['category_id'])){	?>
																		<?php if($cdata['category'] == $cat['category_id']){ ?>
																			<div class="col-sm-3 radio_checker category_btn cat_<?php echo $cat['category_id']; ?>" <?php /* onClick="get_cat('<?php echo $cat['category_id']; ?>',this)" */ ?> >
																				<span class="cat_text"><?php echo $cat['category_name']; ?></span>
																				<input type="checkbox" style="display:none;" class="radio_pat"
																				<?php if($cdata['category'] == $cat['category_id']){ ?>checked<?php } ?> value="<?php echo $cat['category_id']; ?>" name="category[]" />
																			</div><?php 
																			} 
																		}
																	}
																	$selection_eror = json_decode($this->db->get_where('ui_settings',array('type'=>'selection_error'))->row()->value,true);
																	
																	if(in_array($cdata['category'], $selection_eror))
																	{
																		echo '<span class="selection_error">Category Selection Error Found ! </span>';
																	}
																	?>
																</div>
															</div>
															<!-- 2nd level-->
															<div id="more_additional_options"><?php
																foreach($cdata['sub_category'] as  $row1){ ?>
																	<div class="paticular">
																			<div class="btn btn-danger pull-right rmo">
																				<i class="fa fa-times"></i>
																			</div>
																		
																			<div class="form-group sub">
																				<label class="col-sm-3 control-label" for="demo-hor-3"><?php echo translate('sub-categories_(max 4)');?></label>				
																				<div class="col-sm-3 sub_cat">
																				<input type="hidden" class="form-control sub_catSelect" name="sub_category[<?php echo $cdata['category']; ?>][]" value="<?php echo $row1; ?>"> 
																					<?php echo $this->crud_model->select_html('sub_category','sub_category1['.$cdata['category'].'][]','sub_category_name','edit','form-control sub_catSelect',$row1,'category',$cdata['category'],'get_sub_bysubcat','single','disabled'); ?>
																				</div>
																			</div>
																			<!-- 3rd level-->
																			<?php 
																			
																			if(isset($cdata['sscategory_arr']) && !empty($cdata['sscategory_arr'])){
																				$array_values =	array_shift($cdata['sscategory_arr']);
																				if(count($array_values)>0 && isset($array_values['sscategory_'.$row1])){
																					$arr_sscat = $array_values['sscategory_'.$row1];
																				}
																				if(isset($array_values['sscategory_'.$row1]) && isset($arr_sscat) && !empty($arr_sscat) && count($arr_sscat)>0){
																					if(isset($arr_sscat) && !empty($arr_sscat)){ $display = 'Block'; }else{	$display = 'none'; }
																					foreach($arr_sscat as $row2){
																							?>
																						<div class="form-group sub_by_subcat" style="display:<?php echo $display; ?>;">
																							<label class="col-sm-3 control-label" for="demo-hor-3">Sub Sub Category</label>
																							<div class="col-sm-3 sub_by_sub"> 
																								<input type="hidden" class="form-control" name="sscategory[<?php echo $row1; ?>][]" value="<?php echo $row2; ?>">
																								<?php  echo $this->crud_model->select_html('ssub_category','sscategory1['.$row1.'][]','ssub_category_name','edit','form-control',$row2,'sub_category',$row1,'get_sub_sub_by_subcat','single','disabled');  ?> 
																							</div>
																						</div>
																						<!-- 4th level-->
																						<?php
																						if(isset($cdata['ssscategory_arr']) && !empty($cdata['ssscategory_arr'])){
																							
																							$ssscategory_arr = $cdata['ssscategory_arr'];
																							$sss_key = array();
																							
																							foreach($ssscategory_arr as $x => $x_value) {
																								foreach($x_value as $y => $y_value) {
																									$sss_key[] = $y;
																								}
																							}
																							if(in_array('ssscategory_'.$row2,$sss_key)){	
																								
																								$array_values1 =	array_shift($cdata['ssscategory_arr']);
																								if(count($array_values1)>0 && isset($array_values1['ssscategory_'.$row2])){
																									$arr_ssscat = $array_values1['ssscategory_'.$row2];
																									
																								}
																								
																								if(isset($array_values1['ssscategory_'.$row2]) && isset($arr_ssscat) && !empty($arr_ssscat) && count($arr_ssscat)>0){
																									
																									if(isset($arr_ssscat) && !empty($arr_ssscat)){ $displaysss = 'Block';	}else{ $displaysss = 'none';}
																									foreach($arr_ssscat as $row3){
																										?>
																										<div class="form-group btm_border sub_by_ssub" style="<?php echo $displaysss; ?>;">
																											<label class="col-sm-3 control-label" for="demo-hor-3">Sub Sub Sub Category</label>
																											<div class="col-sm-3 sub_sub_sub_cat">
																												<input type="hidden" class="form-control" name="ssscategory[<?php echo $row2; ?>][]" value="<?php echo $row3; ?>">
																												<?php echo $this->crud_model->select_html('sssub_category','ssscategory1['.$row2.'][]','sssub_category_name','edit','form-control',$row3,'sub_sub_category',$row2,NULL,'single','disabled');  ?>
																											</div>
																										</div><?php 
																									}
																								}else{ ?>
																										<div class="form-group btm_border sub_by_ssub" style="display:none;">
																											<label class="col-sm-3 control-label" for="demo-hor-3">Sub Sub Sub Category</label>
																											<div class="col-sm-3 sub_sub_sub_cat">
																												
																											</div>
																										</div><?php 
																									
																								}
																							}else{ ?>
																								<div class="form-group btm_border sub_by_ssub" style="display:none;">
																									<label class="col-sm-3 control-label" for="demo-hor-3">Sub Sub Sub Category</label>
																									<div class="col-sm-3 sub_sub_sub_cat">
																										
																									</div>
																								</div><?php
																							}
																						}else{ ?>
																									<div class="form-group btm_border sub_by_ssub" style="display:none;">
																										<label class="col-sm-3 control-label" for="demo-hor-3">Sub Sub Sub Category</label>
																										<div class="col-sm-3 sub_sub_sub_cat">
																											
																										</div>
																									</div><?php 
																								
																							}
																							
																					}
																				}else{	?>
																						<div class="form-group sub_by_subcat" style="display:none;">
																							<label class="col-sm-3 control-label" for="demo-hor-3">Sub Sub Category</label>
																							<div class="col-sm-3 sub_by_sub"> 
																							</div>
																						</div><?php
																				}
																			}else{	?>
																						<div class="form-group sub_by_subcat" style="display:none;">
																							<label class="col-sm-3 control-label" for="demo-hor-3">Sub Sub Category</label>
																							<div class="col-sm-3 sub_by_sub"> 
																							</div>
																						</div>
																						<div class="form-group btm_border sub_by_ssub" style="display:none;">
																							<label class="col-sm-3 control-label" for="demo-hor-3">Sub Sub Sub Category</label>
																							<div class="col-sm-3 sub_sub_sub_cat">
																								
																							</div>
																						</div><?php
																				}	
																				
																				?>
																		<hr />
																	</div><?php 
																} ?>
															</div>
															<div class="row">
																<div class="col-sm-12 col-sm-offset-3">
																	<div class="btn btn-mint btn-labeled fa fa-plus-square" id="more_option_btn">
																		Add Sub Sub
																	</div>
																</div>
															</div>  
															<div class="row">
																<div class="col-sm-12">
																	<div class="btn btn-danger pull-right" onClick="rem_element_box(this)">
																		<i class="fa fa-times"></i>
																	</div>
																</div>
															</div>
													</div><?php
												}
											}	?>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="btn btn-mint btn-labeled fa fa-plus-square pull-left add_new" onClick="add_home_cat_box()">
                                            <?php echo translate('add_new');?>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group col-sm-12">
                                    <span class="btn btn-success btn-labeled fa fa-check submitter pull-right enterer" type= data-ing='<?php echo translate('updating'); ?>' data-msg='<?php echo translate('home_categories_updated!'); ?>'>
                                        <?php echo translate('update');?>
                                    </span>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
function check_category_slider(){
	if($('#set_slides').is(':checked')){
		$('.top_cat').show();
		$('.top_cat_update').show();
		$('.deal').show();
	}
	else{
		$('.top_cat').hide();
		$('.top_cat_update').hide();
		$('.deal').hide();
	}
}
$('#set_slides').on('change',function() {
	if($('#set_slides').is(':checked')){
		$('.top_cat').show('slow');
		$('.top_cat_update').show('slow');
		$('.deal').show('slow');
	}
	else{
		$('.top_cat').hide('slow');
		$('.top_cat_update').hide('slow');
		$('.deal').hide('slow');
	}
});
function check_cat_length(id,now) {
	var parent = $(now).closest(".form-group");
	if(parent.find("select option:selected").length > 9) {
		parent.find('.chosen-drop').hide();
	}
	else{
		parent.find('.chosen-drop').show();
	}
}
function sub_select_check(){
	$('.sub_cat').each(function(){
		var parent = $(this).closest('.sub');
		if(parent.find("select option:selected").length > 3) {
			parent.find('.chosen-drop').hide();
		}
		else{
			parent.find('.chosen-drop').show();
		}
	});
}
function top_cat_check(){
	if($('.top_cat').find("select option:selected").length > 9) {
		$('.top_cat').find('.chosen-drop').hide();
	}
	else{
		$('.top_cat').find('.chosen-drop').show();
	}
}
/* function createColorpickers() {

	$('.demo2').colorpicker({
		format: 'rgba'
	});
} */
function set_select(){
	$('.demo-chosen-select').chosen();
	$('.demo-cs-multiselect').chosen({width:'100%'});
}

function add_home_cat_box(){
	$('#home_category_selection_box').append(''
											+'	<div class="col-sm-12 element_box">'
											<!-- Main Category -->
											+'		<div class="form-group">'
											+'			<label class="col-sm-3 control-label" for="demo-hor-2"><?php echo translate('category');?></label>'
											+'			<div class="col-sm-9 category_select_div">'
											+'			<?php
															foreach($category as $cat){
																if($this->crud_model->if_publishable_category($cat['category_id'])){
														?>'
											+'				<div class="col-sm-4 radio_checker category_btn cat_<?php echo $cat['category_id']; ?>" onClick="get_cat('+"'"+<?php echo $cat['category_id']; ?>+"'"+',this)">'
											+"					<?php echo $cat['category_name']; ?>"
											+'					<input type="checkbox" style="display:none;" class="radio_pat"'
											+'						value="<?php echo $cat['category_id']; ?>" name="category[]" />'
											+'				</div>'
											+'			<?php 
																}
															}
														?>'
											+'			</div>'
											+'		</div>'
											<!-- 2nd level-->
											+'			<div id="more_additional_options">'
											+'				<div class="paticular">'
											+'						<div class="btn btn-danger pull-right rmo">'
											+'							<i class="fa fa-times"></i>'
											+'						</div>'
											+'						<div class="form-group sub" style="display:none;">'
											+'							<label class="col-sm-3 control-label" for="demo-hor-3"><?php echo translate('sub-categories_(max 4)');?></label>'				
											+'							<div class="col-sm-3 sub_cat">'
											+'							</div>'
											+'						</div>'
										<!-- 3rd level-->
											+'						<div class="form-group sub_by_subcat" style="display:none;">'
											+'						</div>'
										<!-- 4th level-->
											+'					<div class="form-group btm_border sub_by_ssub" style="display:none;">'
											+'						<label class="col-sm-4 control-label" for="demo-hor-3">Sub Sub Sub Category</label>'
											+'						<div class="col-sm-6 sub_sub_sub_cat">'
											+'						</div>'
											+'					</div>'
											+'					<hr />'
											+'				</div>'
											+'			</div>'
											<!-- start Add More Sub cat-->
											+'			<div class="row">'
											+'				<div class="col-sm-12 col-sm-offset-3">'
											+'					<div class="btn btn-mint btn-labeled fa fa-plus-square" id="more_option_btn">'
											+'						Add Sub Sub'
											+'					</div>'
											+'				</div>'
											+'			</div>' 
											<!-- end Add More Sub cat-->
											+'		<div class="row">'
											+'			<div class="col-sm-12">'
											+'				<div class="btn btn-danger pull-right" onClick="rem_element_box(this)"><i class="fa fa-times"></i></div>'
											+'			</div>'
											+'		</div>'
											+'	</div>');
	/* createColorpickers(); */
	set_select();
	disable_selected_cat();
}

function rem_element_box(now){
	$(now).closest('.element_box').remove();
	setTimeout(function(){
		var count=0;
		$('.box_no').each(function(){
			count=count+1;
			$(this).val(count);
		});
		disable_selected_cat();
	}, 1000);
}
/* Customize by ALI Start */
 
	/* add row */
	items=1;
	var this_row='';
	
	$('body').on('click','#more_option_btn', function(evt){
		evt.stopImmediatePropagation();
		evt.preventDefault();
		
		_this = $(this).closest('.element_box').find('#more_additional_options');
		this_row = $(this).closest('.element_box').find('.paticular:first');
		
		$data= '';
		$data = this_row.first().eq(0).clone(true);
		$data.find('.sub_catSelect').prop("disabled", false);
		$data.find(".sub_by_subcat:not(:first)").remove();
		$data.find(".sub_by_ssub:not(:first)").remove();
		$data.find(':selected').removeAttr('selected');
		$data.find('.sub_by_subcat').empty();
		$data.find('.sub_by_ssub').empty();

		_this.append($data);
		set_select();
		
		items++;  

	});	
/* remove row */
$('body').on('click','.rmo', function(){
	
	var _rmo= $(this).closest('.element_box').find('.rmo');

	if(_rmo.length>1)
	{
		$(this).parents('.paticular').remove();
		items--;
	}else{
		bootbox.alert('Aleast One Required');
	}
});

function check_sub_length(id,now) {
	var parent = $(now).closest(".form-group");
	if(parent.find("select option:selected").length > 3) {
		parent.find('.chosen-drop').hide();
	}
	else{
		parent.find('.chosen-drop').show();
	}
}
function sub_cat(id,now){
	$('#sub_by_sub').hide('slow');
	ajax_load(base_url+'index.php/admin/product/sub_by_sub/'+id,'sub_sub_cat','');
	 $('#sub_by_sub').show('slow');
}
function sub_select_check(){
	$('.sub_cat').each(function(){
		var parent = $(this).closest('.sub');
		if(parent.find("select option:selected").length > 3) {
			parent.find('.chosen-drop').hide();
		}
		else{
			parent.find('.chosen-drop').show();
		}
	});
}
function disable_selected_cat(){
	$('#home_category_selection_box').find('.radio_checker').show();
	var selected_cats = [];
	$('#home_category_selection_box').find('.radio_pat').each(function(){
		if($(this).is(':checked')){
			selected_cats.push($(this).val());
		}
	});
	
	$('#home_category_selection_box').find('.category_select_div').each(function(){
		var snow = $(this);
			snow.find('.category_btn').show();
			$.each(selected_cats, function(key, value) {
				snow.find('.cat_'+value).hide();
			});
	});
	$('#home_category_selection_box').find('.category_select_div').each(function(){
		var div = $(this);
		var i = 0;
		div.find('.radio_checker').each(function() {
      if($(this).css('display') == 'block'){
				i++;
				if(i == 4){
					$(this).css('border-right','1px solid #e8e8e8');
				}
			}
    });
		var n = 0;
		div.find('.radio_checker').each(function() {
      if($(this).css('display') == 'block'){
				n++;
				if(n == i){
					$(this).css('border-right','1px solid #e8e8e8');
				}
			}
    });
	});
	setTimeout(function(){
		var p = $('#home_category_selection_box').find('.category_select_div').eq(0).find('.category_btn').length;
		/* //var q = selected_cats.length; */
		var q = $('#home_category_selection_box').find('.category_select_div').length;
		/* //alert(p+'--'+q); */
		if(p == q){
			/* $('.add_new').hide(); */
		} else {
			$('.add_new').show();
		}
	}, 10);
	set_checker();
}

function disable_illigal_selection(){
	
	var selected_subcats = [];
	var selected_sscats = [];
	var parent = $(this).closest('.element_box');
	selected_subcats = parent.find('.sub_catSelect').val();
	console.log(selected_subcats);
/* 	$('#home_category_selection_box').find('.radio_pat').each(function(){
		if($(this).is(':checked')){
			selected_cats.push($(this).val());
		}
	}); */
	

}


function get_cat(id,now){
	setTimeout(function(){ disable_selected_cat(); }, 1);
	var parent = $(now).closest('.element_box');
	parent.find('.sub').hide('slow');
	parent.find('.sub_by_subcat').empty();
	parent.find('.sub_by_ssub').empty();
	parent.find('.color_class1').attr('name','color1['+id+']');
	parent.find('.color_class2').attr('name','color2['+id+']');
	parent.find('.sub_cat').load(base_url+'index.php/admin/ui_settings/sub_by_cat/'+id,
		function(){
			parent.find('.demo-cs-multiselect').attr('name','sub_category['+id+'][]');
			parent.find('.paticular:not(:first)').empty();
			parent.find('.sub').show('slow');
			parent.find('.demo-cs-multiselect').chosen({width:'100%'});
		}
	);
}

function get_sub_bysubcat(id,now){
	
	setTimeout(function(){ disable_selected_cat(); }, 1);
	var ids_array = $(now).val();
	var parent = $(now).closest('.paticular');
	
	parent.find('.sub_catSelect').val(id);
	
	parent.find('.sub_by_subcat').hide('fast');
	/* Empty 4th level category */
	parent.find('.sub_by_ssub').empty();
	$.ajax({
		type: "GET",
		url: base_url+'index.php/admin/ui_settings/sub_by_subcat/'+id,
		data: {id_array:ids_array},
		cache: false,
		success: function(html)
		{
			if(html != ''){
				parent.find('.sub_by_subcat').html(html);
				parent.find('.sub_by_subcat').show('fast');
				parent.find('.demo-chosen-select').chosen({width:'100%'});
			}
		} 
	});
	/* disable_illigal_selection(); */
}

function get_sub_sub_by_subcat(id,_this){
	var parent = $(_this).closest('.paticular');
	var ids_array = $(_this).val();
	parent.find('.sub_by_ssub').hide('fast');	
	$.ajax({
	type: "GET",
	url: base_url+'index.php/admin/ui_settings/sub_sub_by_subcat/'+id,
	data: {id_array:ids_array},
	cache: false,
	success: function(html)
	{
		if(html != ''){
			parent.find('.sub_by_ssub').html(html);
			parent.find('.sub_by_ssub').show('fast');
			parent.find('.demo-chosen-select').chosen({width:'100%'});
		}
	} 
	});
}

function set_checker(){
	$('#home_category_selection_box').find('.radio_checker').each(function(){
		if($(this).find('input').is(':checked')){
			$(this).addClass('bordered_box');
		} else {
			$(this).removeClass('bordered_box');
		}
	});	
}

$(document).ready(function() {
	check_category_slider();
	$('#home_category_selection_box').on('click','.radio_checker',function(){
		$(this).closest('.element_box').find('input').prop("checked", false);
		$(this).find('input').prop("checked", true);
		set_checker();
	});
	$(".sw").each(function(){
		var h = $(this);
		var id = h.attr('id');
		var set = h.data('set');
		new Switchery(document.getElementById(id), {color:'rgb(100, 189, 99)', secondaryColor: '#cc2424', jackSecondaryColor: '#c8ff77'});
		var changeCheckbox = document.querySelector('#'+id);
		changeCheckbox.onchange = function() {
		  //alert($(this).data('id'));
		  ajax_load(base_url+'index.php/'+user_type+'/general_settings/'+set+'/'+changeCheckbox.checked,'site','othersd');
		  if(changeCheckbox.checked == true){
			$.activeitNoty({
				type: 'success',
				icon : 'fa fa-check',
				message : s_e,
				container : 'floating',
				timer : 3000
			});
			sound('published');
		  } else {
			$.activeitNoty({
				type : 'danger',
				icon : 'fa fa-check',
				message : s_d,
				container : 'floating',
				timer : 3000
			});
			sound('unpublished');
		  }
		};

	});
	$(".sw1").each(function() {
		new Switchery(document.getElementById('ban_' + $(this).data('id')), {
			color: 'rgb(100, 189, 99)'
		});
		var changeCheckbox = document.querySelector('#ban_' + $(this).data('id'));
		changeCheckbox.onchange = function() {
			ajax_load('<?php echo base_url(); ?>index.php/admin/banner/banner_publish_set/' + $(this).data('id') + '/' + changeCheckbox.checked, 'prod', 'others');
			if (changeCheckbox.checked == true) {
				$.activeitNoty({
					type: 'success',
					icon: 'fa fa-check',
					message: '<?php echo translate('banner_published!'); ?>',
					container: 'floating',
					timer: 3000
				});
				sound('published');
			} else {
				$.activeitNoty({
					type: 'danger',
					icon: 'fa fa-check',
					message: '<?php echo translate('banner_unpublished!'); ?>',
					container: 'floating',
					timer: 3000
				});
				sound('unpublished');
			}
		};
	});
	
	$(".sw2").each(function() {
		new Switchery(document.getElementById('feature_' + $(this).data('id')), {
			color: 'rgb(100, 189, 99)'
		});
		var changeCheckbox = document.querySelector('#feature_' + $(this).data('id'));
		changeCheckbox.onchange = function() {
			ajax_load('<?php echo base_url(); ?>index.php/admin/ui_settings/ui_home/feature_publish_set/' + $(this).data('id') + '/' + changeCheckbox.checked, '', '');
			if (changeCheckbox.checked == true) {
				$.activeitNoty({
					type: 'success',
					icon: 'fa fa-check',
					message: '<?php echo translate('section_published!'); ?>',
					container: 'floating',
					timer: 3000
				});
				sound('published');
			} else {
				$.activeitNoty({
					type: 'danger',
					icon: 'fa fa-check',
					message: '<?php echo translate('section_unpublished!'); ?>',
					container: 'floating',
					timer: 3000
				});
				sound('unpublished');
			}
		};
	});
	
	$(".imgInp").change(function() {
		var tar = $(this).closest('.panel-body').find('.img_show');
		if (this.files && this.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				tar.attr('src', e.target.result);
			}
			reader.readAsDataURL(this.files[0]);
		}
	});
	
	$(".imgInp2").change(function() {
		var tar = $(this).closest('.form-group').find('.img_show2');
		if (this.files && this.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				tar.attr('src', e.target.result);
			}
			reader.readAsDataURL(this.files[0]);
		}
	});
	setTimeout(function(){ top_cat_check(); }, 1000);
	setTimeout(function(){ sub_select_check(); }, 1000);
	/* createColorpickers(); */
	set_select();
	set_switchery();	
	set_checker();
	disable_selected_cat('');
	/* disable_selected_subcat(''); */
});
</script>
<style>
span.selection_error {
    color: #f00;
    margin: 40px;
    font-size: 16px;
}
	.element_box{
		padding:20px 10px;
		border:1px solid #eee;
		border-radius: 4px;
		margin-bottom:15px;
		
	}
	.bordered_box{    
		border: 1px solid #e8e8e8 !important;
		background: #303641 !important;
		display: block !important;
		color: #fff !important;
	}
	
	.radio_checker{
		border:1px solid #e8e8e8;
		background:#fafafa;
		height:auto;
		padding:10px 2px;
		cursor:pointer;
		text-align:center;
		color: #000;
		transition: all .6s ease-in-out;
	}
	.radio_checker:hover{	
		border: 1px solid #e8e8e8;
		background: #303641;
		display: block;
		color: #fff;
		transition: all .6s ease-in-out;
	}
	.cat_text{
		text-align:center;
		vertical-align:middle;	
	}
</style>