<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');



class Email_model extends CI_Model
{
    
    /*	
	 *	Developed by    : MAK ENTEROPRISES
	 *	Developer	    : Aliahmad Pasa
	 */
    
    function __construct()
    {
        parent::__construct();
    }
    
    function password_reset_email($account_type = '', $id = '', $pass = '')
    {
        $this->load->database();
        $from_name  = $this->db->get_where('general_settings',array('type' => 'system_name'))->row()->value;
        $protocol = $this->db->get_where('general_settings', array('type' => 'mail_status'))->row()->value;
        if($protocol == 'smtp'){
            $from = $this->db->get_where('general_settings',array('type' => 'smtp_user'))->row()->value;
        }
        else if($protocol == 'mail'){
            $from = $this->db->get_where('general_settings', array('type' => 'system_email'))->row()->value;
        }
        
        $query  = $this->db->get_where($account_type, array($account_type . '_id' => $id));

        if ($query->num_rows() > 0){
            $sub    = $this->db->get_where('email_template', array('email_template_id' => 1))->row()->subject;
            $to     = $query->row()->email;
					if($account_type == 'user'){
						$to_name	= $query->row()->username;
					}else{
						$to_name	= $query->row()->name;
					}
					$email_body      = $this->db->get_where('email_template', array('email_template_id' => 1))->row()->body;
					$email_body      = str_replace('[[to]]',$to_name,$email_body);
					$email_body      = str_replace('[[account_type]]',$account_type,$email_body);
					$email_body      = str_replace('[[password]]',$pass,$email_body);
					$email_body      = str_replace('[[from]]',$from_name,$email_body);
					
					$background = $this->db->get_where('ui_settings',array('type' => 'email_theme_style'))->row()->value;
					
					if($background !== 'style_1'){
						$final_email = $this->db->get_where('ui_settings',array('type' => 'email_theme_'.$background))->row()->value;
						$final_email = str_replace('[[body]]',$email_body,$final_email);
						$send_mail  = $this->do_email($from,$from_name,$to, $sub, $final_email);
					}else{
						$send_mail  = $this->do_email($from,$from_name,$to, $sub, $email_body);
					}
          return $send_mail;
        } 
        else {
            return false;
        }
    }

    
    /***custom email sender****/
    
    function do_email($from = '', $from_name = '', $to = '', $sub ='', $msg ='', $attach = array())
    {    
		  /*$config = Array(
			'protocol' => 'smtp',
			'smtp_host' => $this->crud_model->get_type_name_by_id('general_settings','72','value'),
			'smtp_port' => $this->crud_model->get_type_name_by_id('general_settings','73','value'),
			'smtp_user' => $this->crud_model->get_type_name_by_id('general_settings','74','value'),
			'smtp_pass' => $this->crud_model->get_type_name_by_id('general_settings','75','value'),
			'mailtype'  => 'html', 
			'charset'   => 'iso-8859-1'
		);

       $this->load->library('email', $config); */
        $this->load->library('email');
		$this->email->clear(TRUE);
        $this->email->set_newline("\r\n");
        $this->email->from($from, $from_name);
        $this->email->to($to);			
		/* $this->email->cc('alipasha.makent@gmail.com'); */
        $this->email->subject($sub);
        $this->email->message($msg);
		if(count($attach)> 0){
			foreach($attach as $patached){
				$this->email->attach($patached);
			}
		}
        if($this->email->send()){
            return true;
        }else{
            echo $this->email->print_debugger();
            return false;
        }
         echo $this->email->print_debugger();
    }
    
    
    
}