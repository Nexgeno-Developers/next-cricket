<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Crud_model extends CI_Model
{
   /*	
	 *	Developed by: MAK Team	
	 *	United Cricket Bash
	 *	http://
	 */
	 
	function __construct(){
		parent::__construct();
	}
    
	function clear_cache(){
		$this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
		$this->output->set_header('Pragma: no-cache');
	}
	
	/* //GETTING ADMIN PERMISSION */
	function admin_permission(){
		if ($this->session->userdata('admin_login') != 'yes') {
			return false;
		}
		$admin_id   = $this->session->userdata('admin_id');
		$admin      = $this->db->get_where('admin', array('admin_id' => $admin_id))->row();
		$this->benchmark->mark_time();
		
		if ($admin->role == 1) {
			return true;
		}else {
			return false;
		}
	}
		
	/* //GETTING USER PERMISSION */
	function admin_user_permission(){
		if ($this->session->userdata('admin_login') != 'yes') {
			return false;
		}
		$admin_id   = $this->session->userdata('admin_id');
		$admin      = $this->db->get_where('admin', array('admin_id' => $admin_id))->row();
		$this->benchmark->mark_time();
		
		if ($admin->role) {
			return true;
		}else {
			return false;
		}
	}   
		
	/* /////////GET NAME BY TABLE NAME AND ID///////////// */
	function get_type_name_by_id($type, $type_id = '', $field = 'name'){
		if ($type_id != '') {
			$l = $this->db->get_where($type, array(
				$type . '_id' => $type_id
			));
			$n = $l->num_rows();
			if ($n > 0) {
				return $l->row()->$field;
			}
		}
	}
		
	/* Select Except Id Field */
	function get_type_name_by_other($type, $other, $type_id = '', $field = 'name'){
		if ($type_id != '') {
			$l = $this->db->get_where($type, array(
				$other => $type_id
			));
			$n = $l->num_rows();
			if ($n > 0) {
				return $l->row()->$field;
			}
		}
	}
	
	function get_settings_value($type, $type_name = '', $field = 'value'){
		if ($type_name != '') {
			return $this->db->get_where($type, array('type' => $type_name))->row()->$field;       
		}
  }
    
	/* /////////Filter One///////////// */
	function filter_one($table, $type, $value){
		$this->db->select('*');
		$this->db->from($table);
		$this->db->where($type, $value);
		return $this->db->get()->result_array();
	}
    
	/* // FILE_UPLOAD */
	function img_thumb($type, $id, $ext = '.jpg', $width = '400', $height = '400'){
		$this->load->library('image_lib');
		ini_set("memory_limit", "-1");
		
		$config1['image_library']  = 'gd2';
		$config1['create_thumb']   = TRUE;
		$config1['maintain_ratio'] = TRUE;
		$config1['width']          = $width;
		$config1['height']         = $height;
		$config1['source_image']   = 'uploads/' . $type . '_image/' . $type . '_' . $id . $ext;
		
		$this->image_lib->initialize($config1);
		$this->image_lib->resize();
		$this->image_lib->clear();
	}
    
  /*  // FILE_UPLOAD */
	function file_up($name, $type, $id, $multi = '', $no_thumb = '', $ext = '.jpg'){
		if ($multi == '') {
			move_uploaded_file($_FILES[$name]['tmp_name'], 'uploads/' . $type . '_image/' . $type . '_' . $id . $ext);
			if ($no_thumb == '') {
				$this->crud_model->img_thumb($type, $id, $ext);
			}
		} elseif ($multi == 'multi') {
			$ib = 1;
			foreach ($_FILES[$name]['name'] as $i => $row) {
				$ib = $this->file_exist_ret($type, $id, $ib);
				move_uploaded_file($_FILES[$name]['tmp_name'][$i], 'uploads/' . $type . '_image/' . $type . '_' . $id . '_' . $ib . $ext);
				if ($no_thumb == '') {
						$this->crud_model->img_thumb($type, $id . '_' . $ib, $ext);
				}
			}
		}
	}
	
  /*  // FILE_UPLOAD : EXT :: FILE EXISTS */
	function file_exist_ret($type, $id, $ib, $ext = '.jpg'){
		if (file_exists('uploads/' . $type . '_image/' . $type . '_' . $id . '_' . $ib . $ext)) {
			$ib = $ib + 1;
			$ib = $this->file_exist_ret($type, $id, $ib);
			return $ib;
		} else {
			return $ib;
		}
	}
    
  /* // FILE_VIEW */
	function file_view($type, $id, $width = '100', $height = '100', $thumb = 'no', $src = 'no', $multi = '', $multi_num = '', $ext = '.jpg'){		
		if ($multi == '') {
			if (file_exists('uploads/' . $type . '_image/' . $type . '_' . $id . $ext)) {
				if ($thumb == 'no') {
					$srcl = base_url() . 'uploads/' . $type . '_image/' . $type . '_' . $id . $ext;
				} elseif ($thumb == 'thumb') {
					$srcl = base_url() . 'uploads/' . $type . '_image/' . $type . '_' . $id . '_thumb' . $ext;
				}
				
				if ($src == 'no') {
					return '<img src="' . $srcl . '" height="' . $height . '" width="' . $width . '" />';
				} elseif ($src == 'src') {
					return $srcl;
				}
			}else{
				return base_url() . 'uploads/'. $type.'_image/default.jpg';
			}
					
			} else if ($multi == 'multi') {
		
					if($type=='product'){
			
			$num    = $this->crud_model->get_type_name_by_other($type, 'sku', $id, 'num_of_imgs');
			$id = str_replace(' ','-',$id);
			
		}else{
			$num    = $this->crud_model->get_type_name_by_id($type, $id, 'num_of_imgs');
			
		}
		$i      = 0;
					$p      = 0;
					$q      = 0;
					$return = array();
					while ($p < $num) {
							$i++;
							if (file_exists('uploads/' . $type . '_image/' . $type . '_' . $id . '_' . $i . $ext)) {
									if ($thumb == 'no') {
											$srcl = base_url() . 'uploads/' . $type . '_image/' . $type . '_' . $id . '_' . $i . $ext;
									} elseif ($thumb == 'thumb') {
											$srcl = base_url() . 'uploads/' . $type . '_image/' . $type . '_' . $id . '_' . $i . '_thumb' . $ext;
									}
									
									if ($src == 'no') {
											$return[] = '<img src="' . $srcl . '" height="' . $height . '" width="' . $width . '" />';
									} elseif ($src == 'src') {
											$return[] = $srcl;
									}
									$p++;
							} else {
									$q++;
									if ($q == 10) {
											break;
									}
							}
							
					}
					if (!empty($return)) {
							if ($multi_num == 'one') {
									return $return[0];
							} else if ($multi_num == 'all') {
									return $return;
							} else {
									$n = $multi_num - 1;
									unset($return[$n]);
									return $return;
							}
					} else {
							if ($multi_num == 'one') {
									return base_url() . 'uploads/'. $type.'_image/default.jpg';
							} else if ($multi_num == 'all') {
								return array(base_url() . 'uploads/'. $type.'_image/default.jpg');
							} else {
								return array(base_url() . 'uploads/'. $type.'_image/default.jpg');
							}
					}
			}
	}
	
    
  /*  // FILE_VIEW */
	function file_dlt($type, $id, $ext = '.jpg', $multi = '', $m_sin = ''){
		if ($multi == '') {
			if (file_exists('uploads/' . $type . '_image/' . $type . '_' . $id . $ext)) {
				unlink("uploads/" . $type . "_image/" . $type . "_" . $id . $ext);
			}
			if (file_exists("uploads/" . $type . "_image/" . $type . "_" . $id . "_thumb" . $ext)) {
				unlink("uploads/" . $type . "_image/" . $type . "_" . $id . "_thumb" . $ext);
			}
		} else if ($multi == 'multi') {
			$num = $this->crud_model->get_type_name_by_id($type, $id, 'num_of_imgs');
			if ($m_sin == '') {
				$i = 0;
				$p = 0;
				while ($p < $num) {
					$i++;
					if (file_exists('uploads/' . $type . '_image/' . $type . '_' . $id . '_' . $i . $ext)) {
						unlink("uploads/" . $type . "_image/" . $type . "_" . $id . '_' . $i . $ext);
						$p++;
						$data['num_of_imgs'] = $num - 1;
						$this->db->where($type . '_id', $id);
						$this->db->update($type, $data);
					}
					
					if (file_exists("uploads/" . $type . "_image/" . $type . "_" . $id . '_' . $i . "_thumb" . $ext)) {
						unlink("uploads/" . $type . "_image/" . $type . "_" . $id . '_' . $i . "_thumb" . $ext);
					}
					if ($i > 50) {
						break;
					}
				}
			} else {
				if (file_exists('uploads/' . $type . '_image/' . $type . '_' . $id . '_' . $m_sin . $ext)) {
					unlink("uploads/" . $type . "_image/" . $type . "_" . $id . '_' . $m_sin . $ext);
				}
				if (file_exists("uploads/" . $type . "_image/" . $type . "_" . $id . '_' . $m_sin . "_thumb" . $ext)) {
					unlink("uploads/" . $type . "_image/" . $type . "_" . $id . '_' . $m_sin . "_thumb" . $ext);
				}
				$data['num_of_imgs'] = $num - 1;
				$this->db->where($type . '_id', $id);
				$this->db->update($type, $data);
			}
		}
	}

	/* Product Image Delete */
	function Product_img_dlt($type, $id, $ext = '.jpg', $multi = '', $m_sin = ''){
		$sku = str_replace('-',' ',$id);
		if ($multi == '') {
			if (file_exists('uploads/' . $type . '_image/' . $type . '_' . $id . $ext)) {
					unlink("uploads/" . $type . "_image/" . $type . "_" . $id . $ext);
			}
			if (file_exists("uploads/" . $type . "_image/" . $type . "_" . $id . "_thumb" . $ext)) {
					unlink("uploads/" . $type . "_image/" . $type . "_" . $id . "_thumb" . $ext);
			}
		} else if ($multi == 'multi') {
			$num    = $this->crud_model->get_type_name_by_other($type, 'sku', $sku, 'num_of_imgs');
			if ($m_sin == '') {
				$i = 0;
				$p = 0;
				while ($p < $num) {
					$i++;
					if (file_exists('uploads/' . $type . '_image/' . $type . '_' . $id . '_' . $i . $ext)) {
						unlink("uploads/" . $type . "_image/" . $type . "_" . $id . '_' . $i . $ext);
						$p++;
						$data['num_of_imgs'] = $num - 1;
						$this->db->where('sku', $sku);
						$this->db->update($type, $data);
					}
					
					if (file_exists("uploads/" . $type . "_image/" . $type . "_" . $id . '_' . $i . "_thumb" . $ext)) {
						unlink("uploads/" . $type . "_image/" . $type . "_" . $id . '_' . $i . "_thumb" . $ext);
					}
					if ($i > 50) {
						break;
					}
				}
			} else {
				if (file_exists('uploads/' . $type . '_image/' . $type . '_' . $id . '_' . $m_sin . $ext)) {
						unlink("uploads/" . $type . "_image/" . $type . "_" . $id . '_' . $m_sin . $ext);
				}
				if (file_exists("uploads/" . $type . "_image/" . $type . "_" . $id . '_' . $m_sin . "_thumb" . $ext)) {
						unlink("uploads/" . $type . "_image/" . $type . "_" . $id . '_' . $m_sin . "_thumb" . $ext);
				}
				$data['num_of_imgs'] = $num - 1;
				$this->db->where('sku', $sku);
				$this->db->update($type, $data);
			}
		}
	}
    
	/* //DELETE MULTIPLE ITEMS	 */
	function multi_delete($type, $ids_array){
		foreach ($ids_array as $row) {
			$this->file_dlt($type, $row);
			$this->db->where($type . '_id', $row);
			$this->db->delete($type);
		}
	}
    
	/* //DELETE SINGLE ITEM */	
	function single_delete($type, $id){
		$this->file_dlt($type, $id);
		$this->db->where($type . '_id', $id);
		$this->db->delete($type);
	}
    
	/* //GET PRODUCT LINK */
	function product_link($product_id,$quick='',$size=''){
		if($quick=='quick'){
			return base_url() . 'index.php/home/quick_view/' . $product_id;
		} else {
			$name = url_title($this->crud_model->get_type_name_by_id('product', $product_id, 'sku'));
			if($size){
				$options = url_title($this->crud_model->get_type_name_by_id('product', $product_id, 'options'), '_');
				return base_url() . 'index.php/home/product_view/' . $product_id . '/' . $name . '/' . $options; 
			}else{
					return base_url() . 'index.php/home/product_view/' . $product_id . '/' . $name; 
			}
		}
	}
    
	/*  /////////GET CHOICE TITLE//////// */
	function choice_title_by_name($product,$name){
		$return = '';
		$options = json_encode($this->get_type_name_by_id('product',$product_id,'options'),true);
		foreach ($options as $row) {
			if($row['name'] == $name){
				$return = $row['title'];
			}
		}
		return $return;
	}

  /* /////////SELECT HTML///////////// */
  function select_html($from, $name, $field, $type, $class, $e_match = '', $condition = '', $c_match = '', $onchange = '',$condition_type='single', $disabled = ''){
			$return = '';
			$other  = '';
			$multi  = 'no';
			$phrase = 'Choose a ' . $name;
			if ($class == 'demo-cs-multiselect') {
				$other = 'multiple';
				$name  = $name . '[]';
				if ($type == 'edit') {
					$e_match = json_decode($e_match);
					if ($e_match == NULL) {
						$e_match = array();
					}
					$multi = 'yes';
				}
			}
			$return = '<select name="' . $name . '" onChange="' . $onchange . '(this.value,this)" class="' . $class . '" ' . $other . '  data-placeholder="' . $phrase . '" tabindex="2" data-hide-disabled="true"'.$disabled.'>';
			if (!is_array($from)) {
				$all = array();
				if ($condition == '') {
						$all = $this->db->get($from)->result_array();
				} else if ($condition !== '') {
					if($condition_type=='single'){
						$all = $this->db->get_where($from, array(
							$condition => $c_match
						))->result_array();
					}else if($condition_type=='multi'){
						$this->db->where_in($condition,$c_match);
						$all = $this->db->get($from)->result_array();
					}
				}
				$return .= '<option value="">Choose one</option>';
				foreach ($all as $row):
					if ($type == 'add') {
						$return .= '<option value="' . $row[$from . '_id'] . '">' . $row[$field] . '</option>';
					} else if ($type == 'edit') {
						$return .= '<option value="' . $row[$from . '_id'] . '" ';
						if ($multi == 'no') {
								if ($row[$from . '_id'] == $e_match) {
										$return .= 'selected="selected"';
								}
						} else if ($multi == 'yes') {
								if (in_array($row[$from . '_id'], $e_match)) {
										$return .= 'selected="selected"';
								}
						}
						$return .= '>' . $row[$field] . '</option>';
					}
				endforeach;
			} else {
				$all = $from;
				$return .= '<option value="">Choose one</option>';
				foreach ($all as $row):
					if ($type == 'add') {
						$return .= '<option value="' . $row . '">';
						if ($condition == '') {
								$return .= ucfirst(str_replace('_', ' ', $row));
						} else {
								$return .= $this->crud_model->get_type_name_by_id($condition, $row, $c_match);
						}
						$return .= '</option>';
					} else if ($type == 'edit') {
						$return .= '<option value="' . $row . '" ';
						if ($row == $e_match) {
								$return .= 'selected=."selected"';
						}
						$return .= '>';
						if ($condition == '') {
								$return .= ucfirst(str_replace('_', ' ', $row));
						} else {
								$return .= $this->crud_model->get_type_name_by_id($condition, $row, $c_match);
						}
						$return .= '</option>';
					}
				endforeach;
			}
			$return .= '</select>';
			return $return;
   }
    
  /*  //CHECK IF PRODUCT EXISTS IN TABLE */
	function exists_in_table($table, $field, $val){
		$ret = '';
		$res = $this->db->get($table)->result_array();
		foreach ($res as $row) {
			if ($row[$field] == $val) {
					$ret = $row[$table . '_id'];
			}
		}
		if ($ret == '') {
				return false;
		} else {
				return $ret;
		}
	}
    
  /*  //FORM FIELDS */
	function form_fields($array){
		$return = '';
		foreach ($array as $row) {
				$return .= '<div class="form-group">';
				$return .= '    <label class="col-sm-4 control-label" for="demo-hor-inputpass">' . $row . '</label>';
				$return .= '    <div class="col-sm-6">';
				$return .= '       <input type="text" name="ad_field_values[]" id="demo-hor-inputpass" class="form-control">';
				$return .= '       <input type="hidden" name="ad_field_names[]" value="' . $row . '" >';
				$return .= '    </div>';
				$return .= '</div>';
		}
		return $return;
	}
    
  /*  // PAGINATION */
	function pagination($type, $per, $link, $f_o, $f_c, $other, $current, $seg = '3', $ord = 'desc'){
		$t   = explode('#', $other);
		$t_o = $t[0];
		$t_c = $t[1];
		$c   = explode('#', $current);
		$c_o = $c[0];
		$c_c = $c[1];
		
		$this->load->library('pagination');
		$this->db->order_by($type . '_id', $ord);
		$config['total_rows']  = $this->db->count_all_results($type);
		$config['base_url']    = base_url() . $link;
		$config['per_page']    = $per;
		$config['uri_segment'] = $seg;
		
		$config['first_link']      = '&laquo;';
		$config['first_tag_open']  = $t_o;
		$config['first_tag_close'] = $t_c;
		
		$config['last_link']      = '&raquo;';
		$config['last_tag_open']  = $t_o;
		$config['last_tag_close'] = $t_c;
		
		$config['prev_link']      = '&lsaquo;';
		$config['prev_tag_open']  = $t_o;
		$config['prev_tag_close'] = $t_c;
		
		$config['next_link']      = '&rsaquo;';
		$config['next_tag_open']  = $t_o;
		$config['next_tag_close'] = $t_c;
		
		$config['full_tag_open']  = $f_o;
		$config['full_tag_close'] = $f_c;
		
		$config['cur_tag_open']  = $c_o;
		$config['cur_tag_close'] = $c_c;
		
		$config['num_tag_open']  = $t_o;
		$config['num_tag_close'] = $t_c;
		$this->pagination->initialize($config);
		
		$this->db->order_by($type . '_id', $ord);
		return $this->db->get($type, $config['per_page'], $this->uri->segment($seg))->result_array();
	}
 
	/* //GETTING IDS OF A TABLE FILTERING SPECIFIC TYPE OF VALUE RANGE */
	function ids_between_values($table, $value_type, $up_val, $down_val){
			$this->db->order_by($table . '_id', 'desc');
			return $this->db->get_where($table, array(
					$value_type . ' <=' => $up_val,
					$value_type . ' >=' => $down_val
			))->result_array();
	}
    
  /*  //DAYS START-END TIMESTAMP */
	function date_timestamp($date, $type){
			$date = explode('-', $date);
			$d    = $date[2];
			$m    = $date[1];
			$y    = $date[0];
			if ($type == 'start') {
					return mktime(0, 0, 0, $m, $d, $y);
			}
			if ($type == 'end') {
					return mktime(0, 0, 0, $m, $d + 1, $y);
			}
	}
	
	/*  //GETTING BOOTSTRAP COLUMN VALUE */
	function boot($num){
			return (12 / $num);
	}
    
	/* //GETTING LIMITING CHARECTER */
	function limit_chars($string, $char_limit){
		$length = 0;
		$return = array();
		$words  = explode(" ", $string);
		foreach ($words as $row) {
				$length += strlen($row);
				$length += 1;
				if ($length < $char_limit) {
						array_push($return, $row);
				} else {
						array_push($return, '...');
						break;
				}
		}
		return implode(" ", $return);
	}
    
	/* //GETTING LOGO BY TYPE */
	function logo($type){
		$logo = $this->db->get_where('ui_settings', array(
				'type' => $type
		))->row()->value;
		return base_url() . 'uploads/logo_image/logo_' . $logo . '.png';
  }
    
	function is_added_by($type,$id,$user_id,$user_type = 'vendor'){
		$added_by = json_decode($this->db->get_where($type,array($type.'_id'=>$id))->row()->added_by,true);
		if($user_type == 'admin'){
				$user_id = $added_by['id'];
		}
		$this->benchmark->mark_time();
		if($added_by['type'] == $user_type && $added_by['id'] == $user_id){
				return true;
		} else {
				return false;
		}
	}
    
	/* 	//GETTING USER TOTAL */
	function user_total($last_days = 0){
		if ($last_days == 0) {
				$time = 0;
		} else {
				$time = time() - (24 * 60 * 60 * $last_days);
		}
		$sales = $this->db->get_where('sale', array(
				'buyer' => $this->session->userdata('user_id'),
				'sale_datetime >=' => $time
		))->result_array();
		$return = 0;
		foreach ($sales as $row) {
				$return += $row['grand_total'];
		}
		return number_format((float) $return, 2, '.', '');
	}
    
	/* //GETTING IP DATA OF PEOPLE BROWsING THE SYSTEM */
	function ip_data(){
		if(!$this->input->is_ajax_request()){
			$this->session->set_userdata('timestamp', time());
			$user_data = $this->session->userdata('surfer_info');
			$ip        = $_SERVER['REMOTE_ADDR'];
			if (!$user_data) {
				if ($_SERVER['HTTP_HOST'] !== 'localhost') {
					$ip_data = file_get_contents("http://ip-api.com/json/" . $ip);
					$this->session->set_userdata('surfer_info', $ip_data);
				}
			}
		}
	}
    
  /* GET PRODUCT LINK */
	function category_link($cat='',$scat='',$brand=''){
		$cat_name       = 'all-category';
		$scat_name      = 'all-subcategory';
		$brand_name     = 'all-brand';

		if($cat !== ''){
			$cat_name = $this->crud_model->get_type_name_by_id('category', $cat, 'category_name');
		}
		if($scat !== ''){
			$scat_name = $this->crud_model->get_type_name_by_id('sub_category', $scat, 'sub_category_name');
		}
		if($brand !== ''){
			$brand_name = $this->crud_model->get_type_name_by_id('brand', $brand, 'name');
		}
		$url = url_title($cat.'-'.$cat_name.'-'.$scat.'-'.$scat_name.'-'.$brand.'-'.$brand_name);
		return base_url() . 'index.php/home/' . $url;
	}
	
	function get_category_name($cat){
		if(isset($cat) && !empty($cat)){
			$name=$this->db->get_where('category',array('category_name'=>$cat));
			$id=$name->row()->category_id;
			if (count($id) < 1){
				$data['category_name']          = $cat;
				$this->db->insert('category', $data);
				$id = $this->db->insert_id();
				$path = $_FILES['img']['name'];
				$ext = pathinfo($path, PATHINFO_EXTENSION);
				$data_banner['banner'] 		 = 'category_'.$id.'.'.$ext;
				$this->crud_model->file_up("img", "category", $id, '', 'no', '.'.$ext);
				$this->db->where('category_id', $id);
				$this->db->update('category', $data_banner);
				return $id;
			}else{
				RETURN  $name->row()->category_id;
			}
		}	 
	}

	/* update current auction player */
	function update_auction_player($lid, $pid){
		$data['auction_view']  = $pid;
		$this->db->where('status', 1);
		$this->db->where('league_id', $lid);
		$this->db->update('league', $data);
	}
	
	/* get current auction player */
	function get_auction_player(){
		$playerid = $this->db->get_where('league',array('status'=>1))->row_array();
		$player = $this->db->get_where('players',array('players_id'=>$playerid['auction_view']))->row_array();
		$playersold = $this->db->get_where('soldplayers',array('players_id'=>$playerid['auction_view'], 'league_id'=>$playerid['league_id']))->row_array();
		$category_id = $player['category_id'];
		$player['category_id'] = $this->get_type_name_by_id('category', $player['category_id'], 'category_name');
		$player['players_name'] = $player['nickname'] ? $player['players_name']." (".$player['nickname'].")" : $player['players_name'];
		$player['image'] = $player['image_thumb'] ? $player['image_thumb'] : 'default.jpg';
		$player['dob'] = age_by_dob($player['dob']);
		$player['teams_id'] = $player['sold_price'] =  $player['unsold'] = "";
		if(!empty($playersold )){
			$player['teams_id'] = $this->get_type_name_by_id('teams', $playersold['teams_id'], 'teams_name');
			$player['logo'] = $this->get_type_name_by_id('teams', $playersold['teams_id'], 'logo_thumb');
			$player['logo'] = $player['logo'] ? $player['logo'] : 'default.jpg';
			$player['sold_price'] = $playersold['sold_price'];
		}else{
			$category = json_decode($this->crud_model->get_type_name_by_id('league', $playerid['league_id'], 'category'));
			
			if(!empty($category_id) && !empty($category)){
				$count_arr = array_count_values($category);
				$count_curr_category = $count_arr[$category_id];
				if(in_array($category_id,$category) && $count_curr_category > 1){
					$player['unsold'] ='unsold';
				}
			}
		}
		return json_encode($player);
	}
	
	
	
	
}