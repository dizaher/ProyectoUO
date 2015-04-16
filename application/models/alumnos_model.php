<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Alumnos_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
    }
    //insertamos un nuevo usuario en la tabla users
    public function getPrograma()
    {   
        $query = $this->db->get("programa"); 

	   if($query -> num_rows() > 0)
	   {    
	     return $query->result();
	   }
	   else
	   {
	     return 0;
	   }
    }             

    public function getTutor()
    {   
        $query = $this->db->get("academico"); 

       if($query -> num_rows() > 0)
       {    
         return $query->result();
       }
       else
       {
         return 0;
       }
    }

    public function getExperiencia()
    {   
        $query = $this->db->get("materia"); 

       if($query -> num_rows() > 0)
       {    
         return $query->result();
       }
       else
       {
         return 0;
       }
    }

    public function getMaestro()
    {   
        $query = $this->db->get("academico"); 

       if($query -> num_rows() > 0)
       {    
         return $query->result();
       }
       else
       {
         return 0;
       }
    }

    public function getPeriodo()
    {   
        $query = $this->db->get("periodo"); 

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