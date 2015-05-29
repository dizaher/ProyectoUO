<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin extends CI_Controller {	
	function __construct()
	{
	   parent::__construct();	 
	   $this->load->model('usuarios_model');	    	  
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
						
			$this->load->view('administracion_principal_view', $data);        
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
			$this->load->view('Users/catusuarios_view',$data);
		}		
		else
		{
			//If no session, redirect to login page
			redirect('c_ingreso', 'refresh');     
		} 		
	}


	 function logout()
	{	   
		$this->session->sess_destroy();
		redirect('c_principal', 'refresh');
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */