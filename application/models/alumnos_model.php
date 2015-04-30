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
        $result = $this->db->get('programa');
        $return = array();
        if($result->num_rows() > 0){
                $return[''] = 'Selecciona el Programa Educativo';
            foreach($result->result_array() as $row){
                $return[$row['idPrograma']] = $row['descripcion'];
            }
        }
        return $return;      
    }             

    public function getTutor()
    {           
        $result = $this->db->get('academico');
        $return = array();
        if($result->num_rows() > 0){
                $return[''] = 'Selecciona el nombre de tu tutor Académico';
            foreach($result->result_array() as $row){
                $return[$row['idAcademico']] = $row['nombre'].' '.$row['apellidoPaterno'].' '.$row['apellidoMaterno'] ;                
            }
        }
        return $return;
    }

    public function getExperiencia()
    {   
        $result = $this->db->get('materia');
        $return = array();
        if($result->num_rows() > 0){
                $return[''] = 'Selecciona la Experiencia Educativa';
            foreach($result->result_array() as $row){
                $return[$row['idMateria']] = $row['nombre'];
            }
        }
        return $return;
    }

    public function getMaestro()
    {   
        $result = $this->db->get('academico');
        $return = array();
        if($result->num_rows() > 0){
                $return[''] = 'Selecciona el maestro con quien cursaste la materia';
            foreach($result->result_array() as $row){
                $return[$row['idAcademico']] = $row['nombre'].' '.$row['apellidoPaterno'].' '.$row['apellidoMaterno'] ;                
            }
        }
        return $return;
    }

    public function getPeriodo()
    {   
        $result = $this->db->get('periodo');
        $return = array();
        if($result->num_rows() > 0){
                $return[''] = 'Selecciona el periodo';
            foreach($result->result_array() as $row){
                $return[$row['idPeriodo']] = $row['mesInicio'].' '.substr($row['anoInicio'], 0 , 4).'-'.$row['mesTermino'].' '.substr($row['anoTermino'], 0 , 4) ;                
            }
        }
        return $return;
    }         

    function new_user($mat, $nom,$app,$apm,$pro,$ee,$pe,$tu,$cu,$mo,$em,$ca,$cel)
    {        
       $data = array(
            'a_clavealumno' => $pe.$mat,
            'a_matricula' => $mat,
            'a_nombre' => $nom,
            'a_paterno' => $app,
            'a_materno' => $apm,
            'a_idcarrera' => $pro,
            'a_idexperiencia' => $ee,
            'a_idtutor' => $tu,
            'a_idmtrocurso' => $cu,
            'a_idperiodo' => $pe,
            'a_idmodalidad' => $mo,
            'a_correo' => $em,
            'a_telcasa' => $ca,
            'a_telcelular' => $cel
        );
        return $this->db->insert('fei_alumnosuo', $data);  
    }

    function consulta_alumno($idalumno)
    {      
      $query = $this->db->get_where('fei_alumnosuo',array('a_clavealumno' => $idalumno));
        if($query->num_rows() > 0 )
        {
            return false;
        }
        else{
          return true;
        }
    }

    function busca_user($usuario)
    {
       $this -> db -> select('atu_nombre, atu_clave');
       $this -> db -> from('at_users');
       $this -> db -> where('atu_correo', $usuario);          
       $query = $this -> db -> get();
       if($query -> num_rows() == 1)
       {    
         return $query->result();
       }
       else
       {
         return false;
       }
    }
}