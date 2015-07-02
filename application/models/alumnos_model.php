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
        $result = $this->db->get('fei_programa');
        $return = array();
        if($result->num_rows() > 0){
                $return[''] = 'Selecciona el Programa';
            foreach($result->result_array() as $row){
                $return[$row['p_idprograma']] = $row['p_nombreprograma'];
            }
        }
        return $return;      
    }             

    public function getModalidad()
    {   
        $result = $this->db->get('fei_modalidad');
        $return = array();
        if($result->num_rows() > 0){
                $return[''] = 'Selecciona la Modalidad';
            foreach($result->result_array() as $row){
                $return[$row['m_idmod']] = $row['m_descripcion'];
            }
        }
        return $return;      
    }

    public function getTutor()
    {      
        $this->db->order_by('a_apellidopaterno', 'asc');     
        $result = $this->db->get('fei_academico');
        $return = array();
        if($result->num_rows() > 0){
                $return[''] = 'Selecciona el nombre de tu tutor Académico';
            foreach($result->result_array() as $row){
                $return[$row['a_numpersonal']] = $row['a_nombremtro'].' '.$row['a_apellidopaterno'].' '.$row['a_apellidomaterno'] ;                
            }
        }
        return $return;
    }

    public function getExperiencia()
    {           
        $this->db->order_by('p_idprograma', 'asc');                  
        $result = $this->db->get('fei_experiencia');
        $return = array();
        if($result->num_rows() > 0){
                $return[''] = 'Selecciona la Experiencia Educativa';
            foreach($result->result_array() as $row){
                $return[$row['p_idmateria']] = $row['p_nombre'];
            }
        }
        return $return;
    }

    public function getMaestro()
    {   
        $this->db->order_by('a_apellidopaterno', 'asc');
        $result = $this->db->get('fei_academico');
        $return = array();
        if($result->num_rows() > 0){
                $return[''] = 'Selecciona el maestro con quien cursaste la materia';
            foreach($result->result_array() as $row){
                $return[$row['a_numpersonal']] = $row['a_nombremtro'].' '.$row['a_apellidopaterno'].' '.$row['a_apellidomaterno'] ;                
            }
        }
        return $return;
    }

    public function getPeriodo()
    {   
        $result = $this->db->get('fei_periodo');
        $return = array();
        if($result->num_rows() > 0){
                $return[''] = 'Selecciona el periodo';
            foreach($result->result_array() as $row){
                $return[$row['p_idperiodo']] = $row['p_mesInicio'].' '.substr($row['p_anioInicio'], 0 , 4).'-'.$row['p_mesTermino'].' '.substr($row['p_anioTermino'], 0 , 4) ;                
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
      $this->db->where('a_clavealumno', $idalumno);
      $query = $this->db->get('fei_alumnosuo');        
      return $query->num_rows();
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

    function getAlumnos()
    {
        $query = $this->db->get('fei_alumnosuo');
        if($query->num_rows()>0)
        {
            foreach ($query->result() as $fila)
            {
                $data[] = $fila;
            }
                return $data;
        }
    }

    function alumnos(){        
        //$query = $this -> db -> get('fei_alumnosuo');        
        $query = $this->db->query("SELECT fa.a_matricula, CONCAT( fa.a_nombre,  ' ', fa.a_paterno,  ' ', fa.a_materno ) AS Alumno, fa.a_idmtrocurso, programa.descripcion, materia.nombre, concat(academico.nombre,' ',academico.apellidoPaterno,' ',academico.apellidoMaterno) as Tutor, fei_modalidad.m_descripcion, fa.a_correo, fa.a_telcelular
                                    FROM fei_alumnosuo fa
                                    INNER JOIN programa ON fa.a_idcarrera = programa.idPrograma
                                    INNER JOIN materia ON fa.a_idexperiencia = materia.idMateria
                                    INNER JOIN academico ON fa.a_idtutor = academico.idAcademico
                                    INNER JOIN fei_modalidad ON fa.a_idmodalidad = fei_modalidad.m_idmod");
        if($query->num_rows() > 0 )
        {
          return $query->result();
        }
    }

    function search_mtro($idmtro){        
        //$query = $this -> db -> get('fei_alumnosuo');  
        /*$this -> db -> select("concat(nombre,' ',apellidoPaterno,' ',apellidoMaterno) as Curso");
       $this -> db -> from('academico');
       $this -> db -> where('idAcademico', $idmtro);                      */
       $query = $this->db->query("SELECT concat(academico.nombre,' ',academico.apellidoPaterno,' ',academico.apellidoMaterno) as Curso FROM academico where idAcademico=".$idmtro);
       if($query -> num_rows() == 1)
       {    
         return $query->result();
       }      
       /* $query = $this->db->query("SELECT concat(academico.nombre,' ',academico.apellidoPaterno,' ',academico.apellidoMaterno) as Curso
                                    FROM fei_alumnosuo fa, academico
                                    where fa.a_idmtrocurso = academico.idAcademico");
        if($query->num_rows() > 0 )
        {
          return $query->result();
        }*/
    }
    

    public function get_alldatos_oyentes()
  {                   
    $query = $this->db->query("select * from fei_alumnosuo where a_idmodalidad=2");    
    return $query;
  }    

  public function get_alldatos_condicionados()
  {                   
    $query = $this->db->query("select * from fei_alumnosuo where a_idmodalidad=1");    
    return $query;
  }

  ///////////////////////////////////////////////////////////////////////////////////////////////
  function consultarNumDatos($prog)
  {         
      $this->db->where("a_idcarrera", $prog);
      $cont = $this->db->count_all("fei_alumnosuo");
      return $cont;
  }

  function consultar_datos($prog,$limit,$start)
 {  
    $this->db->from('fei_alumnosuo');
    $this->db->where("a_idcarrera", $prog);    
    $this->db->join('fei_modalidad', 'fei_modalidad.m_idmod = fei_alumnosuo.a_idmodalidad');    
    $this->db->join('fei_experiencia', 'fei_experiencia.p_idmateria = fei_alumnosuo.a_idexperiencia');    
    $this->db->join('fei_academico', 'fei_academico.a_numpersonal = fei_alumnosuo.a_idmtrocurso');    
    $this->db->limit($limit, $start);
    $query = $this->db->get();
    if ($query->num_rows() > 0) {
        foreach ($query->result() as $row) {
            $data[] = $row;
        }
        return $data;
    }
    return 0;          
 }
}