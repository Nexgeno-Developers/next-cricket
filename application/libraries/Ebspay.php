<?php
/*******************************************************************************
 *                      PHP ebspay IPN Integration Class
 *******************************************************************************
 *      Author:     Aliahmad Pasa
 *      Email:      alipasha.makent@gmail.com
 *
 *      File:       ebspay.class.php
 *      Copyright:  (c) 201 - Aliamad Pasa
 *
 *******************************************************************************
*/

class Ebspay {
    
   var $last_error;                 // holds the last error encountered
   
   var $ipn_log;                    // bool: log IPN results to text file?
   
   var $ipn_log_file;               // filename of the IPN log
   var $ipn_response;               // holds the IPN response from ebspay   
   var $ipn_data = array();         // array contains the POST values for IPN
   
   var $fields = array();           // array holds the fields to submit to ebspay

   
   function ebspay() {
       
      // initialization constructor.  Called when class is created.
      $CI=& get_instance();
      $CI->load->database();

      $this->ebspay_url = 'https://secure.ebs.in/pg/ma/payment/request';

      $this->last_error = '';
      
      $this->ipn_log = true; 
      $this->ipn_response = '';
			
      $this->account_id = 22761; //Account ID
      $this->account_name = 'Bigdeals 24x7'; // Account Name
      $this->mode = 'LIVE'; //LIVE OR TEST
      $this->skey = '1fa0fa0d1ce220bc78d41034faabfeba'; //Secret Key
      
      // populate $fields array with a few default values.  See the ebspay
      // documentation for a list of fields and their data types. These defaul
      // values can be overwritten by the calling script.

      
   }
   
   function add_field($field, $value) {
      
      // adds a key=>value pair to the fields array, which is what will be 
      // sent to ebspay as POST variables.  If the value is already in the 
      // array, it will be overwritten.
            
      $this->fields["$field"] = $value;
   }

   function submit_ebspay_post() {
 
      // this function actually generates an entire HTML page consisting of
      // a form with hidden elements which is submitted to ebspay via the 
      // BODY element's onLoad attribute.  We do this so that you can validate
      // any POST vars from you custom form before submitting to ebspay.  So 
      // basically, you'll have your own form which is submitted to your script
      // to validate the data, which in turn calls this function to create
      // another hidden form and submit to ebspay.
 
      // The user will briefly see a message on the screen that reads:
      // "Please wait, your order is being processed..." and then immediately
      // is redirected to ebspay.
			
			$hashData = $this->skey; //Pass your Registered Secret Key
			/* unset($_POST['submitted']); */
			ksort($this->fields);
			foreach ($this->fields as $key => $value){
				if (strlen($value) > 0) {
					$hashData .= '|'.$value;
				}
			}
			if (strlen($hashData) > 0) {
				$secure_hash = strtoupper(hash("sha512",$hashData));//for SHA512
				//$secure_hash = strtoupper(hash("sha1",$hashData));//for SHA1
				//$secure_hash = strtoupper(md5($hashData));//for MD5
			}
			
			/* exit; */
      echo "<html>\n";
      //echo "<head><title>Processing Payment...</title></head>\n";
      echo "<body onLoad=\"document.forms['ebspay_form'].submit();\">\n";
      //echo "<center><h3>";
      //echo " Redirecting to the ebspay.</h3></center>\n";
      echo "<form method=\"post\" name=\"ebspay_form\" ";
      echo "action=\"".$this->ebspay_url."\">\n";
      foreach ($this->fields as $name => $value) {
         echo "<input type=\"hidden\" name=\"$name\" value=\"$value\"/>\n";
      }
      echo "<input type=\"hidden\" name=\"secure_hash\" value=\"$secure_hash\"/>\n";  
      echo "</form>\n";
      echo "</body></html>\n";
    
   }

	function validate_response()
	{	  
	
	
		$secret_key = $this->skey;	 // Pass Your Registered Secret Key from EBS secure Portal
		if(isset($_REQUEST)){
			 $response = $_REQUEST;
				//var_dump($_REQUEST);
				 $sh = $response['SecureHash'];	
			
				 $params = $secret_key;
				 ksort($response);
						foreach ($response as $key => $value){
								if (strlen($value) > 0 and $key!='SecureHash') {
										$params .= '|'.$value;
									}
								}
						
				//$hashValue = strtoupper(md5($params));//for MD5
				//$hashValue = strtoupper(hash("sha1",$params));//for SHA1
				$hashValue = strtoupper(hash("sha512",$params));// for SHA512
				
				/* var_dump(strcmp($sh,$hashValue)); */
				/*  if($sh!=$hashValue){
					echo "<center><h3>Hash validation Failed!</H3></center>";
				 } */
		}
	
		return $response;
	}

}         


 
