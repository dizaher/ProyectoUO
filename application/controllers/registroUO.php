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
		$data["resPrograma"] = $this->alumnos_model->getPrograma();		
		$data["resTutor"] = $this->alumnos_model->getTutor();		
		$data["resExperiencia"] = $this->alumnos_model->getExperiencia();		
		$data["resMaestro"] = $this->alumnos_model->getMaestro();		
		$data["resPeriodo"] = $this->alumnos_model->getPeriodo();
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
	    $this->form_validation->set_rules('modalidad','Modalidad','required|trim|xss_clean');

	    $this->form_validation->set_rules('email','Correo','required|valid_email|trim|xss_clean');
	    $this->form_validation->set_rules('casa','Teléfono de casa','trim|xss_clean');	    
	    $this->form_validation->set_rules('celular','Teléfono Celular','trim|xss_clean|required');
	    $this->form_validation->set_rules('accept_terms_checkbox', '', 'callback_accept_terms');	    
	    

	    if($this->form_validation->run() == FALSE)
	    {
	       //Validación de campo fallado. Usuario redirigido a la página iniciar sesión	        	        				
		  	$this->load->view('registrar_view', $data);
	    }
	    else
	    {
	        $mat = $this->input->post('matricula');
	        $nom = $this->input->post('nombre');
	        $app = $this->input->post('paterno');
	        $apm = $this->input->post('materno');
	        $pro = $this->input->post('programa');
	        $ee = $this->input->post('expedu');
	        $pe = $this->input->post('periodo'); 	              
	        $tu = $this->input->post('tutor');
	        $cu = $this->input->post('curso');
	        $mo = $this->input->post('modalidad');

	        $em = $this->input->post('email');
	        $ca = $this->input->post('casa');
	        $cel = $this->input->post('celular');
	                //ENVÍAMOS LOS DATOS AL MODELO CON LA SIGUIENTE LÍNEA
	        $result = $this->alumnos_model->new_user($mat, $nom,$app,$apm,$pro,$ee,$pe,$tu,$cu,$mo,$em,$ca,$cel);//SE GUARDA EL USUARIO EN LA BASE DE DATOS 

	        //***********************************************        	        
	          $this->load->view('imprimir_registro_view');	        
	     }

	 }

	 function accept_terms()
	 {		 
	    if ($this->input->post('accept_terms_checkbox'))
	 	{
	 		return TRUE;
	 	}
	 	else
	 	{
	 		$error = 'Por favor lee y acepta los términos y condiciones';
	 		$this->form_validation->set_message('accept_terms', $error);
	 		return FALSE;
	 	}
	 }


	function check_alumno()
	{
	   //consultar la base de datos
		$periodo = $this->input->post('periodo');
		 $mat = $this->input->post('matricula');
		 $idalumno = $periodo.$mat;

        $result = $this->alumnos_model->consulta_alumno($idalumno);

	   if($result == 0){
            return TRUE;
        } 
        else {            
            $this->form_validation->set_message('check_alumno', 'El alumno ya esta registrado en una materia de UO dentro de este periodo, favor de pasar con la Sria. Académica');
	     	return FALSE;
        }
	}

	function logout()
	{    
    	$this->session->sess_destroy();
    	$this->load->view('ingresar_view');
  	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */