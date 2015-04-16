<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class RegistroUO extends CI_Controller {	
	function __construct()
	{
	   parent::__construct();	 
	   $this->load->model('alumnos_model');	    	  
	}

	public function index()
	{
		$data["resPrograma"] = $this->alumnos_model->getPrograma();		
		$data["resTutor"] = $this->alumnos_model->getTutor();		
		$data["resExperiencia"] = $this->alumnos_model->getExperiencia();		
		$data["resMaestro"] = $this->alumnos_model->getMaestro();		
		$data["resPeriodo"] = $this->alumnos_model->getPeriodo();					
	  	$this->load->view('registrar_view', $data);
	}

	/**
	FUNCIÓN PARA REGISTRAR CADA UNO DE LOS ALUMNOS DE ULTIMA OPORTUNIDAD 
	*/
	public function registro()
	{
	   	//El método tiene la validación de credenciales o usuarios
	   	$this->load->library('form_validation');
	   	$this->form_validation->set_rules('matricula','Correo','required|trim|xss_clean|callback_check_alumno');
	    $this->form_validation->set_rules('nombre','Nombre','required|trim|xss_clean');        
	    $this->form_validation->set_rules('paterno','Apellido Paterno','required|trim|xss_clean');
	    $this->form_validation->set_rules('materno','Apellido Materno','required|trim|xss_clean');
	    $this->form_validation->set_rules('programa','Programa','required|trim|xss_clean');
	    $this->form_validation->set_rules('expedu','Experiencia Educativa','required|trim|xss_clean');
	    $this->form_validation->set_rules('periodo','Periodo','required|trim|xss_clean');
	    $this->form_validation->set_rules('tutor','Tutor','required|trim|xss_clean');
	    $this->form_validation->set_rules('curso','Maestro con quien curso','required|trim|xss_clean');



	    $this->form_validation->set_rules('correo','Correo','required|valid_email|trim|xss_clean');
	    $this->form_validation->set_rules('telefono','Teléfono','trim|xss_clean|numeric');	    
	    

	    if($this->form_validation->run() == FALSE)
	    {
	       //Validación de campo fallado. Usuario redirigido a la página iniciar sesión
	        $data['contenido']='registro_view';
	        $this->load->view('index',$data);
	    }
	    else
	    {
	        $nombre = $this->input->post('nom');
	        $apellido = $this->input->post('ape');
	        $correo_e = $this->input->post('correo');
	        $tel = $this->input->post('telefono');
	        $tipo = $this->input->post('agente');
	        $des = $this->input->post('descripcion');
	        $p = $this->input->post('contra'); 
	        $pass =  $this->encrypt->encode($p);       
	                //ENVÍAMOS LOS DATOS AL MODELO CON LA SIGUIENTE LÍNEA
	        $result = $this->muser->new_user($nombre,$apellido,$correo_e,$pass,$tel,$tipo,$des);//SE GUARDA EL USUARIO EN LA BASE DE DATOS 

	        //***********************************************        
	        if ($result) {
	          $this->session->set_userdata('usuario', $nombre);  
	          $data['noti_principales'] = $this->mnoti->get_noticias_prin();
	          $data['noti_secundarias'] = $this->mnoti->get_noticias_secu();             
	          $data['contenido']='noticias_view';
	          $this->load->view('session_view',$data);
	        }
	        else{
	          //Validación de registro fallada
	          $data['contenido']='registro_view';
	          $this->load->view('index',$data);
	        }
	        
	     }

	 }

	function check_alumno($correo)
	{
	    //consultar la base de datos
	   $result = $this->muser->consulta_user($correo);

	   if($result)
	   {
	      return TRUE;      
	   }
	   else  { 
	     $this->form_validation->set_message('check_database', 'La cuenta de correo ya se encuentra en uso');
	     return FALSE;
	   }
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */