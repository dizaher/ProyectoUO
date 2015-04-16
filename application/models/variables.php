<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Variables extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
    }
    //insertamos un nuevo usuario en la tabla users
    public function getvariables()
    {   
        $query = $this->db->get("variables"); 

	   if($query -> num_rows() > 0)
	   {    
	     return $query->result();
	   }
	   else
	   {
	     return 0;
	   }
    }             
}