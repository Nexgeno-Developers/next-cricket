<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Pdf {
 
    function pdf()
    {
        $CI = & get_instance();
        log_message('Debug', 'mPDF class is loaded.');
    }
 
    function load($param=NULL)
    {
        include_once APPPATH.'/third_party/mpdf/mpdf.php';
				
        return new mPDF('','A4',0,'',10,10,5,2,0,0,'');
    }
}
