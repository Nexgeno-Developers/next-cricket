<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');
	
class Admin extends CI_Controller
{
	/*  
	 *  Developed by: MAK ENTERPRISES
	 */
	
	function __construct(){
		parent::__construct();
		$this->load->database();
		/*cache control*/
		/* $this->output->enable_profiler(TRUE); */
		$this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
		$this->output->set_header('Pragma: no-cache');
		/* $this->crud_model->ip_data(); */
		$this->config->cache_query();
	}
	
	/* index of the admin. Default: Dashboard; On No Login Session: Back to login page. */
	public function index(){
		if ($this->session->userdata('admin_login') == 'yes') {
			
			$page_data['page_name'] = "dashboard";
			
			if($this->session->userdata('role') != 3){

			$page_data['all_teams'] = $this->db->count_all('teams');
			$page_data['all_players'] = $this->db->count_all('players');
			$page_data['all_sold_players'] = $this->db->count_all('soldplayers');
			$page_data['all_unsold_players'] = $this->db->count_all('unsold');
			$page_data['cur_league'] = $this->db->select_max('league_id')->get('league')->row_array();

			}else{
				$page_data['teams'] = $this->db->from('teams')->where('owner_id', $this->session->userdata('admin_id'))->get()->row();

				$page_data['all_players_purchases'] = $this->db->where('teams_id', $page_data['teams']->teams_id)->count_all_results('soldplayers');

				$page_data['total_point'] = $page_data['teams']->virtual_point;
				
				$total_solds = $this->db->select('sold_price')->where('teams_id', $page_data['teams']->teams_id)->get('soldplayers')->result();
				$t = 0;
				foreach ($total_solds as $sold) {
					$t += $sold->sold_price;
				}
				
				$page_data['remaining_point'] = $page_data['total_point'] - $t;
			}
			
			$this->load->view('back/index', $page_data);
		} else {
			$page_data['control'] = "admin";
			$this->load->view('back/login',$page_data);
		}
	}
	
	/*Product Category add, edit, view, delete */
	function category($para1 = '', $para2 = ''){
		if (!$this->crud_model->admin_permission()) {
			redirect(base_url());
		}
		if ($this->crud_model->get_type_name_by_id('general_settings','68','value') !== 'ok') {
			redirect(base_url());
		}
		if ($para1 == 'do_add') {
				$data['category_name'] = $this->input->post('category_name');
				$data['base_price'] = $this->input->post('base_price');
				$data['description'] = $this->input->post('description');
				$this->db->insert('category', $data);
				recache();
		} 
		else if ($para1 == 'edit') {
				$page_data['category_data'] = $this->db->get_where('category', array(
						'category_id' => $para2
				))->result_array();
				$this->load->view('back/admin/category_edit', $page_data);
				recache();
		} 
		elseif ($para1 == "update") {
				$data['category_name'] = $this->input->post('category_name');
				$data['base_price'] = $this->input->post('base_price');
				$data['description'] = $this->input->post('description');
				$this->db->where('category_id', $para2);
				$this->db->update('category', $data);
				recache();
		} 
		elseif ($para1 == 'delete') {
				$id = $this->input->post('id');
				$this->db->where("category_id", $id);
				$this->db->delete('category');
				recache();
		} elseif ($para1 == 'list') {
				/* $this->db->order_by('category_id', 'desc'); */
				$page_data['all_categories'] = $this->db->get('category')->result_array();
				$this->load->view('back/admin/category_list', $page_data);
		} elseif ($para1 == 'add') {
				$this->load->view('back/admin/category_add');
		} else {
				$page_data['page_name']      = "category";
				$page_data['all_categories'] = $this->db->get('category')->result_array();
				$this->load->view('back/index', $page_data);
		}
	}
	
	/* players add, edit, view, delete */
	function players($para1 = '', $para2 = ''){
		if (!$this->crud_model->admin_permission()) {
			redirect(base_url());
		}
		if ($para1 == 'do_add') {
			$random = mt_rand(10000, 99999);
			$data['players_name'] = $this->input->post('players_name');
			$data['type'] = $this->input->post('type');
			$data['style'] = $this->input->post('style');
			$data['dob'] = $this->input->post('dob');
			$data['category_id'] = $this->input->post('category');
			$data['nickname'] = $this->input->post('nick_name');
			$data['last_played_league'] = $this->input->post('last_played_league');
			$data['address'] = $this->input->post('address');
			$data['city'] = $this->input->post('city');
			$data['email'] = $this->input->post('email');
			
			$this->db->insert('players', $data);
			$id = $this->db->insert_id(); 
			$data['uniq_id'] = 'SPL/'.$id;
			$this->db->where('players_id', $id);
			$this->db->update('players', $data);
			 if($_FILES['image']['name']!== ''){
				$path = $_FILES['image']['name'];
				
				$ext = pathinfo($path, PATHINFO_EXTENSION);
				$data_banner['image'] = 'players_'.$id.'.'.$ext;
				$data_banner['image_thumb'] = 'players_'.$id.'_thumb.'.$ext;

				$this->crud_model->file_up("image", "players", $id, '', '', '.'.$ext);
				$this->db->where('players_id', $id);
				$this->db->update('players', $data_banner);
			} 
/* 			recache(); */
		} else if ($para1 == 'edit') {
			$page_data['all_categories'] = $this->db->get('category')->result_array();
			$page_data['players_data'] = $this->db->get_where('players', array('players_id' => $para2))->result_array();
			$this->load->view('back/admin/players_edit', $page_data);
		} elseif ($para1 == "update") {
			$data['players_name'] = $this->input->post('players_name');
			$data['type'] = $this->input->post('type');
			$data['style'] = $this->input->post('style');
			$data['dob'] = $this->input->post('dob');
			$data['category_id'] = $this->input->post('category');
			$data['nickname'] = $this->input->post('nick_name');
			$data['last_played_league'] = $this->input->post('last_played_league');
			$data['address'] = $this->input->post('address');
			$data['city'] = $this->input->post('city');
			$data['email'] = $this->input->post('email');
			$this->db->where('players_id', $para2);
			$this->db->update('players', $data);
			if($_FILES['image']['name']!== ''){
				if(file_exists('uploads/players_image/'.$this->crud_model->get_type_name_by_id('players',$para2,'image'))){
				unlink("uploads/players_image/" .$this->crud_model->get_type_name_by_id('players',$para2,'image'));
				unlink("uploads/players_image/" .$this->crud_model->get_type_name_by_id('players',$para2,'image_thumb'));
				}
				$path = $_FILES['image']['name'];
				$ext = pathinfo($path, PATHINFO_EXTENSION);
				$data_banner['image'] = 'players_'.$para2.'.'.$ext;
				$data_banner['image_thumb'] = 'players_'.$para2.'_thumb.'.$ext;
				$this->crud_model->file_up("image", "players", $para2, '', '', '.'.$ext);
				$this->db->where('players_id', $para2);
				$this->db->update('players', $data_banner);
			}
		$this->output->delete_cache();
			/* recache(); */
		} elseif ($para1 == 'delete') {
			if(file_exists('uploads/players_image/'.$this->crud_model->get_type_name_by_id('players',$para2,'image'))){
				unlink("uploads/players_image/" .$this->crud_model->get_type_name_by_id('players',$para2,'image'));
				unlink("uploads/players_image/" .$this->crud_model->get_type_name_by_id('players',$para2,'image_thumb'));
				}
			$id = $this->input->post('id');
			$table = $this->input->post('table');
			$this->db->where($table."_id", $id);
			$this->db->delete($table);
			/* recache(); */
		} elseif ($para1 == 'list') {
			$this->db->order_by('players_id', 'desc');
			$page_data['all_players'] = $this->db->get('players')->result_array();
			$this->load->view('back/admin/players_list', $page_data);
		} elseif ($para1 == 'add') {
			$page_data['all_categories'] = $this->db->get('category')->result_array();
			$this->load->view('back/admin/players_add', $page_data);
		} elseif ($para1 == 'view') {
            $page_data['player_data'] = $this->db->get_where('players', array(
                'players_id' => $para2
            ))->result_array();
            $this->load->view('back/admin/player_view', $page_data);
        } else {
			$page_data['page_name']      = "players";
			$page_data['all_players'] = $this->db->get('players')->result_array();
			$this->load->view('back/index', $page_data);
		}
	}
 

	function team_player($para1 = '', $para2 = ''){
		if (!$this->crud_model->admin_user_permission()) {
			redirect(base_url());
		}
		if($para1 == 'get_team_details') {	
			/* get team details */
			$page_data['team'] = $this->db->where('teams_id', $para2)->get('teams')->row_array();

			/* get sold price */
			$this->db->select_sum('sold_price');
			$this->db->from('soldplayers');
			$this->db->where('teams_id', $para2);
			$page_data['spentamt'] = $this->db->get()->row()->sold_price;
			/* get exceeded points */
			$page_data['excd_points'] = $page_data['spentamt'] - $page_data['team']['virtual_point'];
			/* get all player details */
			$this->db->select('players.*, soldplayers.sold_price');
			$this->db->from('teams');
			$this->db->join('soldplayers', 'teams.teams_id=soldplayers.teams_id');
			$this->db->join('players', 'players.players_id=soldplayers.players_id');
			$this->db->where('soldplayers.teams_id', $para2);
			$page_data['all_player'] = $this->db->get()->result_array();
			$this->load->view('back/admin/team_player_carousal', $page_data);
		}
		else{
			$page_data['page_name'] = "team_player";
			$this->db->select('teams_id');
			$page_data['all_team'] = $this->db->get('teams')->result_array();
			$this->load->view('back/index', $page_data);
		}
	}

 	/* teams add, edit, view, delete */
	function teams($para1 = '', $para2 = ''){
		if (!$this->crud_model->admin_permission()) {
			redirect(base_url());
		}
		if ($para1 == 'do_add') {		
			$data['teams_name'] = $this->input->post('teams_name');
			$data['virtual_point'] = $this->input->post('virtual_point');
			$data['league'] = $this->input->post('league');
			$this->db->insert('teams', $data);
			$id = $this->db->insert_id();
			if($_FILES['logo']['name']!== ''){
				$path = $_FILES['logo']['name'];
				$ext = pathinfo($path, PATHINFO_EXTENSION);
				$data_logo['logo'] = 'teams_'.$id.'.'.$ext;
				$data_logo['logo_thumb'] = 'teams_'.$id.'_thumb.'.$ext;
				$this->crud_model->file_up("logo", "teams", $id, '', '', '.'.$ext);
				$this->db->where('teams_id', $id);
				$this->db->update('teams', $data_logo);
			}

			// Collect owner data
			$data_owner = [
				'name' => $this->input->post('owner_name'),
				'phone' => $this->input->post('owner_phone'),
				'email' => $this->input->post('owner_email'),
				'password' => sha1($this->input->post('owner_password')),
				'role' => 3,
			];

			// Insert owner data
			$this->db->insert('admin', $data_owner);
			$owner_id = $this->db->insert_id();

			// Update team with owner_id
			$this->db->where('teams_id', $id);
			$this->db->update('teams', ['owner_id' => $owner_id]);

			/* recache(); */
		} else if ($para1 == 'edit') {
			$page_data['all_leagues'] = $this->db->get('league')->result_array();
			$page_data['teams_data'] = $this->db->get_where('teams', array('teams_id' => $para2))->result_array();
			if (!empty($page_data['teams_data']) && isset($page_data['teams_data'][0]['owner_id'])) {
				$page_data['owner'] = $this->db->get_where('admin', ['admin_id' => $page_data['teams_data'][0]['owner_id']])->row_array();
			} else {
				$page_data['owner'] = null; // Handle the case where owner data is not available
			}
			$this->load->view('back/admin/teams_edit', $page_data);
		} elseif ($para1 == "update") {
			$data['teams_name'] = $this->input->post('teams_name');
			$data['virtual_point'] = $this->input->post('virtual_point');
			$data['league'] = $this->input->post('league');
			$this->db->where('teams_id', $para2);
			$this->db->update('teams', $data);
			if($_FILES['logo']['name']!== ''){
				if(file_exists('uploads/teams_image/'.$this->crud_model->get_type_name_by_id('teams',$para2,'logo'))){
				unlink("uploads/teams_image/" .$this->crud_model->get_type_name_by_id('teams',$para2,'logo'));
				unlink("uploads/teams_image/" .$this->crud_model->get_type_name_by_id('teams',$para2,'logo_thumb'));
				}
				$path = $_FILES['logo']['name'];
				$ext = pathinfo($path, PATHINFO_EXTENSION);
				$data_logo['logo'] = 'teams_'.$para2.'.'.$ext;
				$data_logo['logo_thumb'] = 'teams_'.$para2.'_thumb.'.$ext;
				$this->crud_model->file_up("logo", "teams", $para2, '', '', '.'.$ext);
				$this->db->where('teams_id', $para2);
				$this->db->update('teams', $data_logo);
			}

			// Collect owner data
			$data_owner = [
				'name' => $this->input->post('owner_name'),
				'phone' => $this->input->post('owner_phone'),
				'email' => $this->input->post('owner_email'),
			];

			// Add password to data_owner if provided
			if (!empty($this->input->post('owner_password'))) {
				$data_owner['password'] = sha1($this->input->post('owner_password'));
			}

			// Check if owner ID exists for update
			if (!empty($this->input->post('owner'))) {
				// Update owner data
				$this->db->where('admin_id', $this->input->post('owner'));
				$this->db->update('admin', $data_owner);
			} else {
				// Insert new owner data if no owner ID is provided
				$this->db->insert('admin', $data_owner);
				$owner_id = $this->db->insert_id();
			}

			recache();
		} elseif ($para1 == 'delete') {		
			if(file_exists('uploads/teams_image/'.$this->crud_model->get_type_name_by_id('teams',$para2,'logo'))){
				unlink("uploads/teams_image/" .$this->crud_model->get_type_name_by_id('teams',$para2,'logo'));
				unlink("uploads/teams_image/" .$this->crud_model->get_type_name_by_id('teams',$para2,'logo_thumb'));
			}
			$this->db->where('teams_id', $para2);
			$this->db->delete('teams');
			recache();
		} 
		elseif($para1 == 'delete_player')
		{
			$this->db->where('players_id', $para2);
			$this->db->delete('soldplayers');	
			recache();
		}
		elseif ($para1 == 'all_team_players') {
			$all_data = array();
			$league_id = $this->db->where('status', 1)->get('league')->row()->league_id;
			$this->db->where('league', $league_id);
			$all_teams = $this->db->get('teams')->result_array();
			foreach($all_teams as $row){
				$this->db->select('players.*, soldplayers.sold_price');
				$this->db->from('players');
				$this->db->where('soldplayers.teams_id', $row['teams_id']);
				$this->db->where('soldplayers.league_id', $league_id);
				$this->db->join('soldplayers', 'players.players_id=soldplayers.players_id');
				$players = $this->db->get()->result_array();
				$row['players'] = $players;
				$all_data[] = $row;
			}
			/* var_dump($all_data); */
		
			$page_data['page_name'] = "all_team_players";
			$page_data['all_data'] = $all_data;
			$this->load->view('back/index', $page_data);
		} 
		elseif ($para1 == 'team_list') {
			$this->db->select('players.*, soldplayers.sold_price');
			$this->db->from('teams');
			$this->db->join('soldplayers', 'teams.teams_id=soldplayers.teams_id');
			$this->db->join('players', 'players.players_id=soldplayers.players_id');
			$this->db->where('soldplayers.teams_id', $para2);
			$page_data['team_id'] = $para2;
			$page_data['all_player'] = $this->db->get()->result_array();
			$this->load->view('back/admin/team_players_list', $page_data);
		}
		elseif ($para1 == 'team_sold_player') {
			$lid = $this->crud_model->get_type_name_by_id('teams', $para2, 'league');
			
			$this->db->select('players.players_id, players.players_name');
			$this->db->from('players');
			$this->db->join('soldplayers', 'players.players_id = soldplayers.players_id');
			$this->db->where_not_in('soldplayers.players_id', 'players.players_id');
			$this->db->where('soldplayers.league_id', $lid);
			$page_data['all_players'] = $this->db->get()->result_array();
			echo $this->db->last_query();
			$page_data['team_id'] = $para2;
			
			$this->load->view('back/admin/teams_player_add', $page_data);
		}
		elseif ($para1 == 'add_sold_player') {
			$value = array();
			$value['players_id'] = $this->input->post('player');
			$value['teams_id'] = $this->input->post('team_id');
			$value['league_id'] = $this->crud_model->get_type_name_by_id('teams', $value['teams_id'], 'league');
			$value['category_id'] = $this->crud_model->get_type_name_by_id('players',$value['players_id'], 'category_id');
			$baseprice = $this->crud_model->get_type_name_by_id('category',$value['category_id'], 'base_price');
			$baseprice = $baseprice + ($baseprice/2);
			$value['sold_price'] = $baseprice;
			$this->db->insert('soldplayers', $value);
		}
		elseif ($para1 == 'list') {
			$this->db->order_by('teams_id', 'desc');

			if ($this->session->userdata('role') == 3) {
				$this->db->where('owner_id', $this->session->userdata('admin_id'));
			}
			
			$page_data['all_teams'] = $this->db->get('teams')->result_array();
			
			$this->load->view('back/admin/teams_list', $page_data);
		}
		elseif ($para1 == 'add') {
			$page_data['all_leagues'] = $this->db->get('league')->result_array();
			$this->load->view('back/admin/teams_add', $page_data);
		}
		else {
			$page_data['page_name']      = "teams";
			$page_data['all_teams'] = $this->db->get('teams')->result_array();

			$this->load->view('back/index', $page_data);
		}
	}
 
	/* Managing League  */
	function league($para1 = '', $para2 = ''){
		if (!$this->crud_model->admin_permission()) {
			redirect(base_url());
		}
		if ($para1 == 'add') {
			$this->load->view('back/admin/league_add');
		} 
		elseif ($para1 == 'do_add') {
			$data['league_name']      = $this->input->post('league_name');
			$data['description']     = $this->input->post('description');				
			$this->db->insert('league', $data);
		} 
		elseif ($para1 == 'list') {
			$this->db->order_by('league_id', 'desc'); 
			$page_data['all_league'] = $this->db->get('league')->result_array();
			$this->load->view('back/admin/league_list', $page_data);
		} 
		elseif ($para1 == 'edit') {
			$page_data['league_data'] = $this->db->get_where('league', array(
						'league_id' => $para2
				))->result_array();
			$this->load->view('back/admin/league_edit', $page_data);
		} 
		elseif ($para1 == 'update') {
			$data['league_name']      = $this->input->post('league_name');
			$data['description']     = $this->input->post('description');
			$this->db->where('league_id', $para2);
			$this->db->update('league', $data);
			recache();
		}elseif ($para1 == 'delete') {
			$this->db->where('league_id', $para2);
			$this->db->delete('league');

			recache();
		}
		else {
			$page_data['page_name']  = "league";
			$page_data['all_league'] = $this->db->get('league')->result_array();
			$this->load->view('back/index', $page_data);
		} 
	}
	
	function cur_auc_player(){
		echo $this->crud_model->get_auction_player();
	}
	
	function auction($para1 = '', $para2 = ''){
		if (!$this->crud_model->admin_user_permission()) {
			redirect(base_url());
		}
		if ($para1 == 'set_league') {
			$data['status']  = 0;
			$data['category']  = '';
			$this->db->update('league', $data);
			$this->session->set_userdata('league_id', $para2);
			$this->session->set_userdata('cat_id', '');
			$data['status']  = 1;
			$this->db->where('league_id', $para2);
			$this->db->update('league', $data);
			redirect(base_url() . 'index.php/admin/auction');
		} 
		elseif ($para1 == 'next_prev') {
		
			$league_id = $this->session->userdata('league_id');
			
			if(isset($_GET['data_curr_id']) && isset($_GET['data_next_id'])){
				/* set current auction player id */
				$this->crud_model->update_auction_player($league_id, $_GET['data_next_id']);
				/* Unsold Array */
				$unsoldplayer = $this->session->userdata('unsoldplayer');
				/* Get last array value */
				$last_player_id = end($unsoldplayer);
				if($last_player_id != $_GET['data_next_id']){
					/*get Key of next player ID */
					$data_next_id_key = array_search($_GET['data_next_id'],$unsoldplayer) + 1;
					/* Get Id of next player by key */
					$next_players = $unsoldplayer[$data_next_id_key];
				}else{
					$next_players = 'last_player_id';
				}
				/* send data in json  */
				$data['show_next_player'] = 'show_next_player';
				$data['prev_players_id'] = $_GET['data_curr_id'];
				$data['curr_players_id'] = $_GET['data_next_id'];
				$data['next_players_id'] = $next_players;
				$curr_player_details = $this->db->get_where('players', array('players_id'=>$_GET['data_next_id']))->row_array();
				/* get sold status player details */
				$playersold = $this->db->get_where('soldplayers',array('players_id'=>$_GET['data_next_id'], 'league_id'=>$league_id))->row_array();
				$curr_player_details['teams_id'] = $curr_player_details['sold_price'] = $curr_player_details['unsold'] = "";
				if(!empty($playersold )){
					$curr_player_details['teams_id'] = $this->crud_model->get_type_name_by_id('teams', $playersold['teams_id'], 'teams_name');
					$curr_player_details['logo'] = $this->crud_model->get_type_name_by_id('teams', $playersold['teams_id'], 'logo_thumb');
					$curr_player_details['logo'] = $curr_player_details['logo'] ? $curr_player_details['logo'] : 'default.jpg';
					$curr_player_details['sold_price'] = $playersold['sold_price'];
				}else{
					$category = json_decode($this->crud_model->get_type_name_by_id('league', $this->session->userdata('league_id'), 'category'));
					if(!empty($curr_player_details['category_id']) && !empty($category)){
						$count_arr = array_count_values($category);
						$count_curr_category = $count_arr[$curr_player_details['category_id']];
						if(in_array($curr_player_details['category_id'],$category) && $count_curr_category > 1){
							$curr_player_details['unsold'] ='unsold';
						}
					}
				}
				$curr_player_details['players_name'] 	= $curr_player_details['nickname'] ? $curr_player_details['players_name']." (".$curr_player_details['nickname'].")" : $curr_player_details['players_name'];
				$curr_player_details['dob'] 					= age_by_dob($curr_player_details['dob']);
				$curr_player_details['image'] 				= $curr_player_details['image_thumb'] ? $curr_player_details['image_thumb'] : 'default.jpg';
				$curr_player_details['category_name'] = $this->crud_model->get_type_name_by_id('category',$curr_player_details['category_id'],'category_name');
				$curr_player_details['base_price'] 		= $this->crud_model->get_type_name_by_id('category',$curr_player_details['category_id'],'base_price');
				$data['curr_player_details'] 					= $curr_player_details;
				echo json_encode($data);
			}elseif(isset($_GET['data_curr_id']) && isset($_GET['data_prev_id'])){
				/* set current auction player id */
				$this->crud_model->update_auction_player($league_id, $_GET['data_prev_id']);
				
				/* Unsold Array */
				$unsoldplayer = $this->session->userdata('unsoldplayer');
				/* Get last array value */
				$first_player_id = $unsoldplayer[0];

				if($first_player_id != $_GET['data_prev_id']){
					/*get Key of previous player ID */
					$data_prev_id_key = array_search($_GET['data_prev_id'],$unsoldplayer) - 1;
					/* Get Id of previous player by key */
					$prev_players = $unsoldplayer[$data_prev_id_key];
				}else{
					$prev_players = 'first_player_id';
				}
				/* send data in json  */
				$data['show_prev_player'] = 'show_prev_player';
				$data['prev_players_id'] = $prev_players;
				$data['curr_players_id'] = $_GET['data_prev_id'];
				$data['next_players_id'] = $_GET['data_curr_id'];
				$curr_player_details = $this->db->get_where('players', array('players_id'=>$_GET['data_prev_id']))->row_array();
				/* get sold status player details */
				$playersold = $this->db->get_where('soldplayers',array('players_id'=>$_GET['data_prev_id'], 'league_id'=>$league_id))->row_array();
				$curr_player_details['teams_id'] = $curr_player_details['sold_price'] = "";
				if(!empty($playersold )){
					$curr_player_details['teams_id'] = $this->crud_model->get_type_name_by_id('teams', $playersold['teams_id'], 'teams_name');
					$curr_player_details['logo'] = $this->crud_model->get_type_name_by_id('teams', $playersold['teams_id'], 'logo_thumb');
					$curr_player_details['logo'] = $curr_player_details['logo'] ? $curr_player_details['logo'] : 'default.jpg';
					$curr_player_details['sold_price'] = $playersold['sold_price'];
				}else{
					$category = json_decode($this->crud_model->get_type_name_by_id('league', $this->session->userdata('league_id'), 'category'));
					if(!empty($curr_player_details['category_id']) && !empty($category)){
						$count_arr = array_count_values($category);
						$count_curr_category = $count_arr[$curr_player_details['category_id']];
						if(in_array($curr_player_details['category_id'],$category) && $count_curr_category > 1){
							$curr_player_details['unsold'] ='unsold';
						}
					}
				}
				$curr_player_details['players_name'] 		= $curr_player_details['nickname'] ? $curr_player_details['players_name']." (".$curr_player_details['nickname'].")" : $curr_player_details['players_name'];
				$curr_player_details['dob'] 						= age_by_dob($curr_player_details['dob']);
				$curr_player_details['image'] 					= $curr_player_details['image_thumb'] ? $curr_player_details['image_thumb'] : 'default.jpg';
				$curr_player_details['category_name'] 	= $this->crud_model->get_type_name_by_id('category',$curr_player_details['category_id'],'category_name');
				$curr_player_details['base_price'] 			= $this->crud_model->get_type_name_by_id('category',$curr_player_details['category_id'],'base_price');
				$data['curr_player_details'] 						= $curr_player_details;
				
				echo json_encode($data);
			}else{
				$data['player_not_found'] = 'player_not_found';
				echo json_encode($data);
			}
		
		} 
		elseif ($para1 == 'set_cat_sess') {
			if($this->input->get('category')){
				$this->session->set_userdata('cat_id', $this->input->get('category'));
				
				/* get previous category from League */
				$prev_category = $this->crud_model->get_type_name_by_id('league', $this->session->userdata('league_id'), 'category');
				/* current category in league */
				$curr_category = $this->input->get('category');
				if(!empty($prev_category)){ 
					$category = json_decode($prev_category);
					/* Merge previous and current category */
					array_push($category,$curr_category);
					/* Update Category in League */
					$data['category']  = json_encode($category);
				}else{
					$result = array($curr_category);
					$data['category']  = json_encode($result);
				}
				$this->db->where('league_id', $this->session->userdata('league_id'));
				$this->db->update('league', $data);
				/* reurn result */
				echo 1;
			}
		} 
		elseif ($para1 == 'do_sold') {
			if($this->db->insert('soldplayers', $this->input->post())){
				$curr_player_details['sold'] = 'success';
				$curr_player_details['teams_id'] = $this->crud_model->get_type_name_by_id('teams', $this->input->post('teams_id'), 'teams_name');
				$curr_player_details['logo'] = $this->crud_model->get_type_name_by_id('teams', $this->input->post('teams_id'), 'logo_thumb');
				$curr_player_details['sold_price'] = $this->input->post('sold_price');
				echo json_encode($curr_player_details);
			}else{
				$curr_player_details['sold'] = 'error';
				echo json_encode($curr_player_details);
			}
		}
		else{
			$role = $this->crud_model->get_type_name_by_id('admin',$this->session->userdata('admin_id'),'role');
			if($role == 1){
				$page_data['page_name']  = "auction";
				$league_id = $this->session->userdata('league_id');
				
				/* Sold Players */
				$this->db->select('players_id');
				$this->db->where("soldplayers.league_id", $league_id);
				$prev_soldplayers = $this->db->get('soldplayers')->result_array();
				$page_data['prev_soldplayers'] = $prev_soldplayers;
				$this->session->set_userdata('prev_soldplayers', $prev_soldplayers);
				
				/* fetch current player details */
				$this->db->select('players_id');
				if($this->session->userdata('cat_id')){
					$this->db->where("category_id", $this->session->userdata('cat_id'));
				}
				if(count($page_data['prev_soldplayers'])>0){
					$this->db->where_not_in("players_id", array_column($page_data['prev_soldplayers'], 'players_id'));
				}
				$this->db->order_by("order_id", "asc"); //$this->db->order_by("players_id", "asc");
				$page_data['unsold_players_id'] = $this->db->get('players')->result_array();
				$unsoldplayer = array_column($page_data['unsold_players_id'], 'players_id');
				
				$page_data['unsold_players_id'] = $unsoldplayer;
				$this->session->set_userdata('unsoldplayer', $unsoldplayer);
				$page_data['unsold_curr_players_id'] = $page_data['unsold_next_players_id'] = $page_data['teams_id'] = $page_data['sold_price'] = "";
				if(count($unsoldplayer)>0){
					/* get sold status player details */
					$playersold = $this->db->get_where('soldplayers',array('players_id'=>$unsoldplayer[0], 'league_id'=>$league_id))->row_array();
					if(!empty($playersold )){
						$page_data['teams_id'] = $this->crud_model->get_type_name_by_id('teams', $playersold['teams_id'], 'teams_name');
						$page_data['logo'] = $this->crud_model->get_type_name_by_id('teams', $playersold['teams_id'], 'logo_thumb');
						$page_data['logo'] = $page_data['logo'] ? $page_data['logo'] : 'default.jpg';
						$page_data['sold_price'] = $playersold['sold_price'];
					}
					$this->crud_model->update_auction_player($league_id, $unsoldplayer[0]);
					$page_data['unsold_curr_players_id'] = $unsoldplayer[0];
					
				}
				if(count($unsoldplayer)>1){
					$page_data['unsold_next_players_id'] = $unsoldplayer[1];
				}
				$page_data['cur_lid'] = $league_id;
				$this->load->view('back/index', $page_data);
				
			}else{
				$page_data['page_name']  = "auction_user";
				$curr_league = $this->db->get_where('league', array('status'=>1))->row();
				$league_id = $curr_league->league_id;
				$curr_player = $this->db->get_where('players', array('players_id'=>$curr_league->auction_view))->row_array();
				$page_data['curr_player'] = $curr_player;
				
				$page_data['cur_lid'] = $league_id;
				$this->load->view('back/index', $page_data);	
			}


		}
	}

	/* Administrator Management */
	function admins($para1 = '', $para2 = '')
	{
		if (!$this->crud_model->admin_permission()) {
			redirect(base_url());
		}
		if ($para1 == 'do_add') {
				$data['name']      = $this->input->post('name');
				$data['email']     = $this->input->post('email');
	$password		   = $this->input->post('password');
				$data['password']  = sha1($password);
				$data['phone']     = $this->input->post('phone');
				$data['address']   = $this->input->post('address');
				$data['role']      = $this->input->post('role');
				$data['timestamp'] = time();
				$this->db->insert('admin', $data);
				$this->email_model->account_opening('admin', $data['email'], $password);
		} else if ($para1 == 'edit') {
				$page_data['admin_data'] = $this->db->get_where('admin', array(
						'admin_id' => $para2
				))->result_array();
				$this->load->view('back/admin/admin_edit', $page_data);
		} elseif ($para1 == "update") {
				$data['name']    = $this->input->post('name');
	$password		   = $this->input->post('password');
				$data['password']  = sha1($password);
				$data['phone']   = $this->input->post('phone');
				$data['address'] = $this->input->post('address');
				$data['role']    = $this->input->post('role');
				$this->db->where('admin_id', $para2);
				$this->db->update('admin', $data);
				$this->email_model->account_opening('admin', $data['email'], $password);
		} elseif ($para1 == 'delete') {
				$this->db->where('admin_id', $para2);
				$this->db->delete('admin');
		} elseif ($para1 == 'list') {
				$this->db->order_by('admin_id', 'desc');
				$page_data['all_admins'] = $this->db->get('admin')->result_array();
				$this->load->view('back/admin/admin_list', $page_data);
		} elseif ($para1 == 'view') {
				$page_data['admin_data'] = $this->db->get_where('admin', array(
						'admin_id' => $para2
				))->result_array();
				$this->load->view('back/admin/admin_view', $page_data);
		} elseif ($para1 == 'add') {
				$this->load->view('back/admin/admin_add');
		} else {
				$page_data['page_name']  = "admin";
				$page_data['all_admins'] = $this->db->get('admin')->result_array();
				$this->load->view('back/index', $page_data);
		}
	}
	
	/* Account Role Management */
	function role($para1 = '', $para2 = '')
	{
			if (!$this->crud_model->admin_permission('role')) {
					redirect(base_url());
			}
			if ($para1 == 'do_add') {
					$data['name']        = $this->input->post('name');
					$data['permission']  = json_encode($this->input->post('permission'));
					$data['description'] = $this->input->post('description');
					$this->db->insert('role', $data);
			} elseif ($para1 == "update") {
					$data['name']        = $this->input->post('name');
					$data['permission']  = json_encode($this->input->post('permission'));
					$data['description'] = $this->input->post('description');
					$this->db->where('role_id', $para2);
					$this->db->update('role', $data);
			} elseif ($para1 == 'delete') {
					$this->db->where('role_id', $para2);
					$this->db->delete('role');
			} elseif ($para1 == 'list') {
					$this->db->order_by('role_id', 'desc');
					$page_data['all_roles'] = $this->db->get('role')->result_array();
					$this->load->view('back/admin/role_list', $page_data);
			} elseif ($para1 == 'view') {
					$page_data['role_data'] = $this->db->get_where('role', array(
							'role_id' => $para2
					))->result_array();
					$this->load->view('back/admin/role_view', $page_data);
			} elseif ($para1 == 'add') {
					$page_data['all_permissions'] = $this->db->get('permission')->result_array();
					$this->load->view('back/admin/role_add', $page_data);
			} else if ($para1 == 'edit') {
					$page_data['all_permissions'] = $this->db->get('permission')->result_array();
					$page_data['role_data']       = $this->db->get_where('role', array(
							'role_id' => $para2
					))->result_array();
					$this->load->view('back/admin/role_edit', $page_data);
			} else {
					$page_data['page_name'] = "role";
					$page_data['all_roles'] = $this->db->get('role')->result_array();
					$this->load->view('back/index', $page_data);
			}
	}
	
	/* Checking if email exists*/
	function exists()
	{
			$email  = $this->input->post('email');
			$admin  = $this->db->get('admin')->result_array();
			$exists = 'no';
			foreach ($admin as $row) {
					if ($row['email'] == $email) {
							$exists = 'yes';
					}
			}
			echo $exists;
	}
	
	/* Login into Admin panel */
	function login($para1 = '')
	{
		if ($para1 == 'forget_form') {
				$page_data['control'] = 'admin';
				$this->load->view('back/forget_password',$page_data);
		} else if ($para1 == 'forget') {
			$this->load->library('form_validation');
			$this->form_validation->set_rules('email', 'Email', 'required|valid_email');			
			if ($this->form_validation->run() == FALSE){
					echo validation_errors();
			}else{
				$query = $this->db->get_where('admin', array(
					'email' => $this->input->post('email')
				));
				if ($query->num_rows() > 0) {
					$admin_id         = $query->row()->admin_id;
					$password         = substr(hash('sha512', rand()), 0, 12);
					$data['password'] = sha1($password);
					$this->db->where('admin_id', $admin_id);
					$this->db->update('admin', $data);
					if ($this->email_model->password_reset_email('admin', $admin_id, $password)) {
						echo 'email_sent';
					} else {
						echo 'email_not_sent';
					}
				} else {
					echo 'email_nay';
				}
			}
		} else {
			
			$this->load->library('form_validation');
			$this->form_validation->set_rules('email', 'Email', 'required|valid_email');
			$this->form_validation->set_rules('password', 'Password', 'required');
			if ($this->form_validation->run() == FALSE){
				echo validation_errors();
			}else{
				$login_data = $this->db->get_where('admin', array(
					'email' => $this->input->post('email'),
					'password' => sha1($this->input->post('password'))
				));
				if ($login_data->num_rows() > 0) {
					foreach ($login_data->result_array() as $row) {
						$this->session->set_userdata('login', 'yes');
						$this->session->set_userdata('admin_login', 'yes');
						$this->session->set_userdata('admin_id', $row['admin_id']);
						$this->session->set_userdata('role', $row['role']);
						$this->session->set_userdata('admin_name', $row['name']);
						$this->session->set_userdata('title', 'admin');
						echo 'lets_login';
					}
				} else {
					echo 'login_failed';
				}
			}
		}
	}
	
	/* Loging out from Admin panel */
	function logout()
	{
			$this->session->sess_destroy();
			redirect(base_url() , 'refresh');
	}
	
	
	function curency_method(){
		if (!$this->crud_model->admin_permission('business_settings')) {
            redirect(base_url());
        }
		$page_data['page_name'] = "curency_method";
        $this->load->view('back/index', $page_data);
	}
    
	
	
	
	/* Checking Login Stat */
	function is_logged()
	{
			if ($this->session->userdata('admin_login') == 'yes') {
					echo 'yah!good';
			} else {
					echo 'nope!bad';
			}
	}
	
	/* Manage Frontend User Interface */
	function page_settings($para1 = "")
	{
			if (!$this->crud_model->admin_permission()) {
					redirect(base_url());
			}
			$page_data['page_name'] = "page_settings";
			$page_data['tab_name']  = $para1;
			$this->load->view('back/index', $page_data);
	}
	
	/* Manage Logos */
	function logo_settings($para1 = "", $para2 = "", $para3 = "")
	{
			if (!$this->crud_model->admin_permission('site_settings')) {
					redirect(base_url());
			}
			if ($para1 == "select_logo") {
					$page_data['page_name'] = "select_logo";
			} elseif ($para1 == "delete_logo") {
					if (file_exists("uploads/logo_image/logo_" . $para2 . ".png")) {
							unlink("uploads/logo_image/logo_" . $para2 . ".png");
					}
					$this->db->where('logo_id', $para2);
					$this->db->delete('logo');
					recache();
			} elseif ($para1 == "set_logo") {

					$type    = $this->input->post('type');
					$logo_id = $this->input->post('logo_id');
					$this->db->where('type', $type);
					$this->db->update('ui_settings', array(
							'value' => $logo_id
					));
					recache();
			} elseif ($para1 == "show_all") {
					$page_data['logo'] = $this->db->get('logo')->result_array();
					if ($para2 == "") {
							$this->load->view('back/admin/all_logo', $page_data);
					}
					if ($para2 == "selectable") {
							$page_data['logo_type'] = $para3;
							$this->load->view('back/admin/select_logo', $page_data);
					}
			} elseif ($para1 == "upload_logo") {
					foreach ($_FILES["file"]['name'] as $i => $row) {
							$data['name'] = '';
							$this->db->insert("logo", $data);
							$id = $this->db->insert_id();
							move_uploaded_file($_FILES["file"]['tmp_name'][$i], 'uploads/logo_image/logo_' . $id . '.png');
			
					}
					return;
			} elseif ($para1 == "upload_logo1") {
							$data['name'] = '';
							$this->db->insert("logo", $data);
							$id = $this->db->insert_id();
			echo $_FILES["logo"]['name'];
							move_uploaded_file($_FILES["logo"]['tmp_name'], 'uploads/logo_image/logo_' . $id . '.png');
			
			}else {
					$this->load->view('back/index', $page_data);
			}
	}
	
	/* Manage Favicons */
	function favicon_settings($para1 = "")
	{
			if (!$this->crud_model->admin_permission('site_settings')) {
					redirect(base_url());
			}
			$name = $_FILES['img']['name'];
			$ext  = end((explode(".", $name)));
	$this->db->where('type', 'fav_ext');
			$this->db->update('ui_settings', array(
					'value' =>$ext
			));
			move_uploaded_file($_FILES['img']['tmp_name'], 'uploads/others/favicon.'.$ext);
			recache();
	}
	

	/* Manage Frontend Captcha Settings Credentials */
	function captcha_settings($para1 = ""){
			if (!$this->crud_model->admin_permission('site_settings')) {
					redirect(base_url());
			}
			$this->db->where('type', "captcha_public");
			$this->db->update('general_settings', array(
					'value' => $this->input->post('cpub')
			));
			$this->db->where('type', "captcha_private");
			$this->db->update('general_settings', array(
					'value' => $this->input->post('cprv')
			));
	}
	
	/* Manage Site Settings */
	function site_settings($para1 = ""){
			$page_data['page_name'] = "site_settings";
			$page_data['tab_name']  = $para1;
			$this->load->view('back/index', $page_data);
	}

	/* Manage Email Template */
	function email_template($para1 = "", $para2 = ""){
		
		if($para1 = "update"){
			$data['subject'] = $this->input->post('subject');
			$data['body'] = $this->input->post('body');
			
			$this->db->where('email_template_id', $para2);
			$this->db->update('email_template', $data);
		}
		$page_data['page_name'] = "email_template";
		$page_data['table_info']  = $this->db->get('email_template')->result_array();;
		$this->load->view('back/index', $page_data);
	}
	
	
	/* Currency Format Settings */
	function set_currency_format(){

		
		$this->db->where('type', 'currency_format');
		$this->db->update('business_settings', array(
			'value' => $this->input->post('currency_format')
		));
		
		$this->db->where('type', 'symbol_format');
		$this->db->update('business_settings', array(
			'value' => $this->input->post('symbol_format')
		));
		
		$this->db->where('type', 'no_of_decimals');
		$this->db->update('business_settings', array(
			'value' => $this->input->post('no_of_decimals')
		));
		
		recache();
	}
    
	/* Manage Admin Settings */
	function manage_admin($para1 = ""){
		if (!$this->crud_model->admin_user_permission()) {
			redirect(base_url());
		}
		if ($para1 == 'update_password') {
				$user_data['password'] = $this->input->post('password');
				$account_data          = $this->db->get_where('admin', array(
						'admin_id' => $this->session->userdata('admin_id')
				))->result_array();
				foreach ($account_data as $row) {
						if (sha1($user_data['password']) == $row['password']) {
								if ($this->input->post('password1') == $this->input->post('password2')) {
										$data['password'] = sha1($this->input->post('password1'));
										$this->db->where('admin_id', $this->session->userdata('admin_id'));
										$this->db->update('admin', $data);
										echo 'updated';
								}
						} else {
								echo 'pass_prb';
						}
				}
		} else if ($para1 == 'update_profile') {
				$this->db->where('admin_id', $this->session->userdata('admin_id'));
				$this->db->update('admin', array(
						'name' => $this->input->post('name'),
						'email' => $this->input->post('email'),
						'address' => $this->input->post('address'),
						'phone' => $this->input->post('phone')
				));
		} else {
				$page_data['page_name'] = "manage_admin";
				$this->load->view('back/index', $page_data);
		}
	}
	
	/*Page Management */
	function page($para1 = '', $para2 = '', $para3 = ''){
			if (!$this->crud_model->admin_permission()) {
				redirect(base_url());
			}
			if ($para1 == 'do_add') {
					$parts             = array();
					$data['page_name'] = $this->input->post('page_name');
					$data['tag'] 	   = $this->input->post('tag');
					$data['parmalink'] = $this->input->post('parmalink');
					$size              = $this->input->post('part_size');
					$type              = $this->input->post('part_content_type');
					$content           = $this->input->post('part_content');
					$widget            = $this->input->post('part_widget');

					foreach ($size as $in => $row) {
							$parts[] = array(
									'size' => $size[$in],
									'type' => $type[$in],
									'content' => $content[$in],
									'widget' => $widget[$in]
							);
					}
					$data['parts']  = json_encode($parts);
					$data['status'] = '';
					$this->db->insert('page', $data);
					recache();
			} else if ($para1 == 'edit') {
					$page_data['page_data'] = $this->db->get_where('page', array(
							'page_id' => $para2
					))->result_array();
					$this->load->view('back/admin/page_edit', $page_data);
			} elseif ($para1 == "update") {
					$parts             = array();
					$data['page_name'] = $this->input->post('page_name');
					$data['tag'] 	   = $this->input->post('tag');
					$data['parmalink'] = $this->input->post('parmalink');
					$size              = $this->input->post('part_size');
					$type              = $this->input->post('part_content_type');
					$content           = $this->input->post('part_content');
					$widget            = $this->input->post('part_widget');
					//var_dump($widget);
					foreach ($size as $in => $row) {
							$parts[] = array(
									'size' => $size[$in],
									'type' => $type[$in],
									'content' => $content[$in],
									'widget' => $widget[$in]
							);
					}
					$data['parts'] = json_encode($parts);
					$this->db->where('page_id', $para2);
					$this->db->update('page', $data);
					recache();
			} elseif ($para1 == 'delete') {
					$this->db->where('page_id', $para2);
					$this->db->delete('page');
					recache();
			} elseif ($para1 == 'list') {
					$page_data['all_page'] = $this->db->get('page')->result_array();
					$this->load->view('back/admin/page_list', $page_data);
			} else if ($para1 == 'page_publish_set') {
					$page = $para2;
					if ($para3 == 'true') {
							$data['status'] = 'ok';
					} else {
							$data['status'] = '0';
					}
					$this->db->where('page_id', $page);
					$this->db->update('page', $data);
					recache();
			} elseif ($para1 == 'view') {
					$page_data['page_data'] = $this->db->get_where('page', array(
							'page_id' => $para2
					))->result_array();
					$this->load->view('back/admin/page_view', $page_data);
			} elseif ($para1 == 'add') {
					$this->load->view('back/admin/page_add');
			} else {
					$page_data['page_name'] = "page";
					$page_data['all_pages'] = $this->db->get('page')->result_array();
					$this->load->view('back/index', $page_data);
			}
	}
	
	/* Manage General Settings */
	function general_settings($para1 = "", $para2 = ""){
			if (!$this->crud_model->admin_permission('site_settings')) {
					redirect(base_url());
			}
			if ($para1 == "terms") {
					$this->db->where('type', "terms_conditions");
					$this->db->update('general_settings', array(
							'value' => $this->input->post('terms')
					));
			}
	if ($para1 == "preloader") {
					$this->db->where('type', "preloader_bg");
					$this->db->update('general_settings', array(
							'value' => $this->input->post('preloader_bg')
					));
					$this->db->where('type', "preloader_obj");
					$this->db->update('general_settings', array(
							'value' => $this->input->post('preloader_obj')
					));
					$this->db->where('type', "preloader");
					$this->db->update('general_settings', array(
							'value' => $this->input->post('preloader')
					));
			}
			if ($para1 == "privacy_policy") {
					$this->db->where('type', "privacy_policy");
					$this->db->update('general_settings', array(
							'value' => $this->input->post('privacy_policy')
					));
			}
	if ($para1 == "about_us") {
					$this->db->where('type', "about_us");
					$this->db->update('general_settings', array(
							'value' => $_POST['about_us']
					));
			}
			if ($para1 == "set_slider") {
					$val = '';
					if ($para2 == 'true') {
							$val = 'ok';
					} else if ($para2 == 'false') {
							$val = 'no';
					}
					$this->db->where('type', "slider");
					$this->db->update('general_settings', array(
							'value' => $val
					));
			}
			if ($para1 == "set_slides") {
					$val = '';
					if ($para2 == 'true') {
							$val = 'ok';
					} else if ($para2 == 'false') {
							$val = 'no';
					}
					$this->db->where('type', "slides");
					$this->db->update('general_settings', array(
							'value' => $val
					));
			}
			if ($para1 == "set_admin_notification_sound") {
					$val = '';
					if ($para2 == 'true') {
							$val = 'ok';
					} else if ($para2 == 'false') {
							$val = 'no';
					}            $this->db->where('type', "admin_notification_sound");
					$this->db->update('general_settings', array(
							'value' => $val
					));
			}
			if ($para1 == "set_home_notification_sound") {
					$val = '';
					if ($para2 == 'true') {
							$val = 'ok';
					} else if ($para2 == 'false') {
							$val = 'no';
					}
					$this->db->where('type', "home_notification_sound");
					$this->db->update('general_settings', array(
							'value' => $val
					));
			}
			if ($para1 == "fb_login_set") {
					$val = '';
					if ($para2 == 'true') {
							$val = 'ok';
					} else if ($para2 == 'false') {
							$val = 'no';
					}
					echo $val;
					$this->db->where('type', "fb_login_set");
					$this->db->update('general_settings', array(
							'value' => $val
					));
			}
			if ($para1 == "g_login_set") {
					$val = '';
					if ($para2 == 'true') {
							$val = 'ok';
					} else if ($para2 == 'false') {
							$val = 'no';
					}
					echo $val;
					$this->db->where('type', "g_login_set");
					$this->db->update('general_settings', array(
							'value' => $val
					));
			}
			if ($para1 == "set") {
					$this->db->where('type', "system_name");
					$this->db->update('general_settings', array(
							'value' => $this->input->post('system_name')
					));
					$this->db->where('type', "system_email");
					$this->db->update('general_settings', array(
							'value' => $this->input->post('system_email')
					));

					$file_folder = $this->db->get_where('general_settings', array('type' => 'file_folder'))->row()->value;
					if(rename("uploads/file_products/".$file_folder,"uploads/file_products/".$this->input->post('file_folder'))){
							$this->db->where('type', "file_folder");
							$this->db->update('general_settings', array(
									'value' => $this->input->post('file_folder')
							));
					}

					$this->db->where('type', "system_title");
					$this->db->update('general_settings', array(
							'value' => $this->input->post('system_title')
					));
					$this->db->where('type', "cache_time");
					$this->db->update('general_settings', array(
							'value' => $this->input->post('cache_time')
					));
					$this->db->where('type', "language");
					$this->db->update('general_settings', array(
							'value' => $this->input->post('language')
					));
					$volume = $this->input->post('admin_notification_volume');
					$this->db->where('type', "admin_notification_volume");
					$this->db->update('general_settings', array(
							'value' => $volume
					));
					$volume = $this->input->post('homepage_notification_volume');
					$this->db->where('type', "homepage_notification_volume");
					$this->db->update('general_settings', array(
							'value' => $volume
					));
			}
			if ($para1 == "contact") {
					$this->db->where('type', "contact_address");
					$this->db->update('general_settings', array(
							'value' => $this->input->post('contact_address')
					));
					$this->db->where('type', "contact_email");
					$this->db->update('general_settings', array(
							'value' => $this->input->post('contact_email')
					));
					$this->db->where('type', "contact_phone");
					$this->db->update('general_settings', array(
							'value' => $this->input->post('contact_phone')
					));
					$this->db->where('type', "contact_website");
					$this->db->update('general_settings', array(
							'value' => $this->input->post('contact_website')
					));
					$this->db->where('type', "contact_about");
					$this->db->update('general_settings', array(
							'value' => $this->input->post('contact_about')
					));
		
			}
			if ($para1 == "footer") {
					$this->db->where('type', "footer_text");
					$this->db->update('general_settings', array(
							'value' => $this->input->post('footer_text', 'chaira_de')
					));
					$this->db->where('type', "footer_category");
					$this->db->update('general_settings', array(
							'value' => json_encode($this->input->post('footer_category'))
					));
			}
	 if ($para1 == "font") {
					$this->db->where('type', "font");
					$this->db->update('ui_settings', array(
							'value' => $this->input->post('font')
					));
			}
			if ($para1 == "color") {
					$this->db->where('type', "header_color");
					$this->db->update('ui_settings', array(
							'value' => $this->input->post('header_color')
					));
		$this->db->where('type', "footer_color");
					$this->db->update('ui_settings', array(
							'value' => $this->input->post('header_color')
					));
			}
	if ($para1 == "mail_status") {
					$val = '';
					if ($para2 == 'true') {
							$val = 'smtp';
					} else if ($para2 == 'false') {
							$val = 'mail';
					}
					echo $val;
					$this->db->where('type', "mail_status");
					$this->db->update('general_settings', array(
							'value' => $val
					));
			}
	if ($para1 == "captcha_status") {
					$val = '';
					if ($para2 == 'true') {
							$val = 'ok';
					} else if ($para2 == 'false') {
							$val = 'no';
					}
					echo $val;
					$this->db->where('type', "captcha_status");
					$this->db->update('general_settings', array(
							'value' => $val
					));
			}
	
	
			recache();
	}
	
	function smtp_settings($para1 = "", $para2 = ""){
			if (!$this->crud_model->admin_permission('site_settings')) {
					redirect(base_url());
			}
	if ($para1 == "set") {
					$this->db->where('type', 'smtp_host');
					$this->db->update('general_settings', array('value' => $this->input->post('smtp_host')));
		
		$this->db->where('type', 'smtp_port');
					$this->db->update('general_settings', array('value' => $this->input->post('smtp_port')));
		
		$this->db->where('type', 'smtp_user');
					$this->db->update('general_settings', array('value' => $this->input->post('smtp_user')));
		
		$this->db->where('type', 'smtp_pass');
					$this->db->update('general_settings', array('value' => $this->input->post('smtp_pass')));
		
		redirect(base_url() . 'index.php/admin/site_settings/smtp_settings/', 'refresh');
	}
}
	
	function display_settings($para1 = ""){
        if (!$this->crud_model->admin_permission('display_settings')) {
            redirect(base_url());
        }
        $page_data['page_name'] = "display_settings";
        $page_data['tab_name']  = $para1;
        $this->load->view('back/index', $page_data);
    }
	
	function preloader_view($para1 = ""){
        if (!$this->crud_model->admin_permission('display_settings')) {
            redirect(base_url());
        }
        $page_data['from_admin'] = true;
        $page_data['preloader']  = $para1;
        $this->load->view('front/preloader', $page_data);
    }

	
	function google_api_key($para1 = ""){
        if (!$this->crud_model->admin_permission('captha_n_social_settings')) {
            redirect(base_url());
        }
        $this->db->where('type', "google_api_key");
        $this->db->update('general_settings', array(
            'value' => $this->input->post('api_key')
        ));
        recache();
    }
	
	function currency_settings($para1 = "",$para2 = ""){
		if (!$this->crud_model->admin_permission('business_settings')) {
      redirect(base_url());
    }
		if($para1 =='set_rate'){
			if($this->input->post('exchange')){
				echo $data['exchange_rate']    		= $this->input->post('exchange');
			}
			if($this->input->post('exchange_def')){
				echo $data['exchange_rate_def']    	= $this->input->post('exchange_def');
			}
			if($this->input->post('name')){
				echo $data['name']    	= $this->input->post('name');
			}
			if($this->input->post('symbol')){
				echo $data['symbol']    	= $this->input->post('symbol');
			}
			$this->db->where('currency_settings_id', $para2);
			$this->db->update('currency_settings', $data);
			recache();
		}
	}
	
	function default_images($para1 = "",$para2 = ""){
		if (!$this->crud_model->admin_permission()) {
				redirect(base_url());
		}
		if($para1 == "set_images"){
			move_uploaded_file($_FILES[$para2]['tmp_name'], 'uploads/'.$para2.'/default.jpg');
			recache();
		}
		$page_data['default_list'] = array('product_image','digital_logo_image','category_image','sub_category_image','brand_image','blog_image','banner_image','user_image','vendor_logo_image','vendor_banner_image','membership_image','slides_image');
		$page_data['page_name'] = "default_images";
		$this->load->view('back/index', $page_data);
  }
	
	function theme_part(){
    $this->load->view('back/admin/theme_part');
	}
	
	function logo_part(){
    $this->load->view('back/admin/logo_part');
	}
	
	function preloader_part(){
		$this->load->view('back/admin/preloader_settings');
	}
	
	function font_part(){
		$this->load->view('back/admin/font');
	}
	
	function favicon_part(){
		$this->load->view('back/admin/favicon');
	}
	
	function home_part(){
    $this->load->view('back/admin/home_settings');
	}
	
	function contact_part(){
    $this->load->view('back/admin/contact_set');
	}
	
	function footer_part(){
    $this->load->view('back/admin/footer_set');
	}
	
	function home_item_change($para1=""){
    $this->load->view('back/admin/home_change_'.$para1);
	}

}
/* End of file Admin.php */
/* Location: ./application/controllers/Admin.php */