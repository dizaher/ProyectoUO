<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Control_combo extends CI_Controller {

	public function __construct()
	{		
		parent::__construct();		
		$this->load->helper('url');				
		$this->load->database('default');		
		$this->load->model('variables');		
	}

	 public function index()
	 {
	  	$data["resultado_modelo"] = $this->variables->getvariables();		
	  	$this->load->view('combobox_view', $data); 
	 }
	 
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */