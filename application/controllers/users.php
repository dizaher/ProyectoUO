<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Users extends CI_Controller {	
	function __construct()
	{
	   parent::__construct();	 
	   $this->load->model('usuarios_model');	    	  
	   $this->load->model('alumnos_model');
	   $this->load->library("pagination");
	}

	public function index()
	{						
	  	$this->load->view('ingresar_view');
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

	public function create()
	  { 
	    if($this->session->userdata('logueado'))
	    {
	      //$data['perfiles'] = $this->m_usuarios->get_perfil_dropdown();   
	      $this->load->library('form_validation');
	      $this->form_validation->set_rules('email','Email','trim|required|valid_email|is_unique[toc_usuarios.u_correo]');
	      $this->form_validation->set_rules('first_name','Nombre','trim|required');
	      $this->form_validation->set_rules('last_name','Apellidos','trim|required');    
	      $this->form_validation->set_rules('phone','Teléfono','trim|required');        
	      $this->form_validation->set_rules('password','Password','required');
	      $this->form_validation->set_rules('password_confirm','Password confirmation','required|matches[password]');
	      $this->form_validation->set_rules('perfil','Perfil','trim|required');
	      if($this->form_validation->run()===FALSE)
	      {
	        $session_data = $this->session->userdata('logueado');                
	        $data['contenido'] = 'Users/createuser_view';
	        $data['nombre'] = $session_data['nombre'];        
	        $data['correo'] = $session_data['cve_usuario'];	        
	        $this->load->view('template_view', $data);
	      }
	      else
	      {      
	        $email = $this->input->post('email');
	        $password = $this->input->post('password');      
	        $first_name = $this->input->post('first_name');
	        $last_name = $this->input->post('last_name');
	        $perfil = $this->input->post('perfil');
	        $phone = $this->input->post('phone');
	        $this->m_usuarios->new_user($email,$password,$first_name,$last_name,$perfil,$phone);
	        $uri = 'c_usuarios';
	        echo "<script>javascript:alert('Usuario registrado'); window.location = '".$uri."'</script>";      
	        //redirect('c_usuarios','refresh');
	      }
	    }
	    else
	    {
	      //If no session, redirect to login page
	      redirect('c_ingreso', 'refresh');     
	    }
	  }
	public function edit($user_id = NULL)
	  {
	    if($this->session->userdata('logueado'))
	    {
	      $data['perfiles'] = $this->m_usuarios->get_perfil_dropdown();
	      $user_id = $this->input->post('user_correo') ? $this->input->post('user_correo') : $user_id;    
	      $this->load->library('form_validation');
	      
	      $this->form_validation->set_rules('first_name','Nombre','trim|required');
	      $this->form_validation->set_rules('last_name','Apellidos','trim|required');    
	      $this->form_validation->set_rules('phone','Teléfono','trim|required');        
	      $this->form_validation->set_rules('password','Password','required');
	      $this->form_validation->set_rules('password_confirm','Password confirmation','required|matches[password]');
	      $this->form_validation->set_rules('perfil','Perfil','trim|required');
	      if($this->form_validation->run() == FALSE)
	      {
	        if($user = $this->m_usuarios->user((string) $user_id)->row())
	        {
	          //$this->data['user'] = $user;
	          $data['user'] = $user;
	        }
	        else
	        {
	          $this->session->set_flashdata('message', 'El usuario no existe.');
	          redirect('c_usuarios', 'refresh');
	        }
	        
	        $this->load->helper('form');
	        $session_data = $this->session->userdata('logueado');
	        $data['nombre'] = $session_data['nombre'];        
	        $data['correo'] = $session_data['cve_usuario'];
	        $data['perfil'] = $session_data['perfil_cve_perfil'];
	        $data['contenido'] = 'Usuarios/edituser_view';        
	        $this->load->view('productosAdmin_view', $data);
	        //$this->load->view('Usuarios/edituser_view', $this->data);
	      }
	      else
	      {
	        $user_id = $this->input->post('user_id');
	        $new_data = array(        
	          'u_nombre' => $this->input->post('first_name'),
	          'u_apellidos' => $this->input->post('last_name'),        
	          'u_telefono' => $this->input->post('phone'),
	          'u_password' => md5($this->input->post('password')),
	          'u_idperfil' => $this->input->post('perfil')
	        );
	        $this->m_usuarios->update($user_id, $new_data);      
	        $uri = 'c_usuarios/index';
	        echo "<script>javascript:alert('Usuario actualizado'); window.location = '".$uri."'</script>";        
	      }
	    }
	    else
	    {
	      //If no session, redirect to login page
	      redirect('c_ingreso', 'refresh');     
	    }
	  }
	public function delete($user_id = NULL)
	  {
	    if(is_null($user_id))
	    {
	      $this->session->set_flashdata('message','There\'s no user to delete');
	    }
	    else
	    {
	      $this->m_usuarios->delete_user($user_id);      
	    }
	    redirect('c_usuarios','refresh');
	  }

}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */