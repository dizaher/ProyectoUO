<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Usuarios_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
    }


    function busca_user($username)
    {
        $this -> db -> select('u_correo, u_nombre, u_clave');
        $this -> db -> where('u_correo', $username);                      
        $this -> db -> or_where('u_nomusuario', $username);
        $query = $this -> db -> get('fei_usuarios');
        if($query -> num_rows() == 1)
        {    
            return $query->result();
        }
        else
        {
            return false;
        }
    }

    function users(){        
        $query = $this -> db -> get('fei_usuarios');
        //$query = $this->db->get('toc_usuarios');
        if($query->num_rows() > 0 )
        {
          return $query->result();
        }
    }

}