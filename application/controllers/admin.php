<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin extends CI_Controller {	
	function __construct()
	{
	   parent::__construct();	 
	   $this->load->model('usuarios_model');	    	  
	   $this->load->model('alumnos_model');
	}

	public function index()
	{						
	  	$this->load->view('ingresar_view');
	}

	/**
	FUNCIÓN PARA INGRESAR A LA PARTE DE ADMINISTRACION DE ALUMNOS DE UO 
	*/
	public function ingreso()
	{
	   	//El método tiene la validación de credenciales o usuarios		
	   	$this->load->library('form_validation');	   	
		
	   	$this->form_validation->set_rules('username','Usuario o Correo','required|trim|xss_clean|callback_check_usuario');	         
	    $this->form_validation->set_rules('pass','Contraseña','required|trim|xss_clean');
	    
	    if($this->form_validation->run() == FALSE)
	    {
	       //Validación de campo fallado. Usuario redirigido a la página iniciar sesión	        	        				
		  	$this->index();
	    }
	    else
	    {
	        //Go to private area
     		$uri = 'principal';
    		echo "<script>javascript:alert('Bienvenido'); window.location = '".$uri."'</script>";	        
	     }

	 }
	 
	function check_usuario($pass)
	{
	   //Validación de campo tuvo éxito. Validar contra la base de datos
	    $username = $this->input->post('username');  
	    $password = $this->input->post('pass');      
	    $cla = md5($pass);
	   //consultar la base de datos   
	   $result = $this->usuarios_model->busca_user($username);
	   if($result)
	   {      
	      foreach($result as $row)
	      {    
	               
	        if ($row->u_clave == $password) { 
	          	$sess_array = array(
	         	'cve_usuario' => $row->u_correo,
	         	'nombre' => $row->u_nombre);
	       		$this->session->set_userdata('logueado', $sess_array);         
	        	return TRUE;  
	        }
	        else{
	          	$this->form_validation->set_message('check_usuario', 'Tu usuario o contraseña es incorrecta');                  
	          	return false;
	        }
	      }                
	    }
	    else{
	      $this->form_validation->set_message('check_usuario', 'El usuario no se encuentra registrado');
	          return false;
	    } 
	}

	function principal()
	 {		 
	    if($this->session->userdata('logueado'))
		{
			$session_data = $this->session->userdata('logueado');     
			$data['nombre'] = $session_data['nombre']; 
			$data['correo'] = $session_data['cve_usuario'];	

			$data['contenido']='administracion_principal_view';
			$this->load->view('template_view', $data);											   
		} 
		else
		{
			//If no session, redirect to login page
			redirect('admin', 'refresh');     
		}
	 }

	 public function users()
	{		   
		if($this->session->userdata('logueado'))
		{			
			$session_data = $this->session->userdata('logueado');	
			$data['nombre'] = $session_data['nombre']; 
			$data['correo'] = $session_data['cve_usuario'];	
			$data['users'] = $this->usuarios_model->users();
			$data['contenido']='Users/catusuarios_view';
			$this->load->view('template_view', $data);			
		}		
		else
		{
			//If no session, redirect to login page
			redirect('c_ingreso', 'refresh');     
		} 		
	}
	
	public function registrados($res = null) {				
		if($this->session->userdata('logueado'))
	    {
	    	$data["resPrograma"] = $this->alumnos_model->getPrograma();						
			$data["resExperiencia"] = $this->alumnos_model->getExperiencia();					
			$data["resPeriodo"] = $this->alumnos_model->getPeriodo();
			$data["resModalidad"] = $this->alumnos_model->getModalidad();

	    	$session_data = $this->session->userdata('logueado');	
			$data['nombre'] = $session_data['nombre']; 
			$data['correo'] = $session_data['cve_usuario'];
	      	$data['results'] = $res;
	      	$data['links'] = $res;
	      	$data['contenido']='UltimaOportunidad/registrados_view';
			$this->load->view('template_view', $data);    	      	
	    }
	    else
	    {     
	      	//If no session, redirect to login page
			redirect('admin', 'refresh');
	    }
	}

	public function consultaRegistrados()
	{		   
		if($this->session->userdata('logueado'))
	    {
	  		$data["resPrograma"] = $this->alumnos_model->getPrograma();						
			$data["resExperiencia"] = $this->alumnos_model->getExperiencia();					
			$data["resPeriodo"] = $this->alumnos_model->getPeriodo();
			$data["resModalidad"] = $this->alumnos_model->getModalidad();

	    	$session_data = $this->session->userdata('logueado');	
			$data['nombre'] = $session_data['nombre']; 
			$data['correo'] = $session_data['cve_usuario'];

			//si se apreto solo programa	  		      		
			
				$session_data = $this->session->set_flashdata('fechas',$postfecha);     	      	         
			    $config = array();
			    $config["base_url"] = base_url() . "index.php/c_calentador/reportefechas";
			    $config["total_rows"] = $this->m_calentador->consultarNumDatos_cs($postfecha);
			    $config["per_page"] = 20;
			    $config["uri_segment"] = 3;
			    $this->pagination->initialize($config);
			    $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;		        			
			    $data["results"] = $this->m_calentador->consultar_datos_cs($postfecha,$config["per_page"], $page);
			    $data["links"] = $this->pagination->create_links();
				$data['contenido']='Calentador/reportes_calentador_view';
	        	$this->load->view("productosAdmin_view", $data);
				      		      		

        	//si se apreto programa y experiencia

        	//si se apreto programa, experiencia y periodo

        	//si se apreto programa, experiencia, periodo y modalidad
		}
	    else
	    {     
	      	//If no session, redirect to login page
			redirect('admin', 'refresh');
	    } 		
	}

	public function exportar_csv_oyentes()
  	{    
  		if($this->session->userdata('logueado'))
	    {	    	
	    	$this->load->dbutil();
		    $this->load->helper('download');
	    	$delimiter = ",";
	    	$newline = "\r\n";
	    	$query = $this->alumnos_model->get_alldatos_oyentes();   
	    	$data = $this->dbutil->csv_from_result($query, $delimiter, $newline);
	    	force_download('CSV_Report.csv', $data);     
	    }
	    else
	    {     
	      	$this->registrados();
	    }
  	}

  	public function exportar_csv_condicionados()
  	{    
  		if($this->session->userdata('logueado'))
	    {	    	
	    	$this->load->dbutil();
		    $this->load->helper('download');
	    	$delimiter = ",";
	    	$newline = "\r\n";
	    	$query = $this->alumnos_model->get_alldatos_condicionados();   
	    	$data = $this->dbutil->csv_from_result($query, $delimiter, $newline);
	    	force_download('CSV_Report.csv', $data);     
	    }
	    else
	    {     
	      	redirect('c_ingreso', 'refresh');     
	    }
  	}

}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */