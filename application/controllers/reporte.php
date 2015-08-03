<?php if (!defined('BASEPATH'))exit('No direct script access allowed');

class Reporte extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('alumnos_model');
    }
    
    
    public function index() {
        $idalumno = '201551s12015276';            
        $result = $this->alumnos_model->busca_alumno($idalumno);
       if($result)
       {      
          foreach($result as $row)
          {
            $this->load->library('Pdf');
            $pdf = new Pdf('P', 'mm', 'A4', true, 'UTF-8', false);                
            $pdf->AddPage();
            $pdf->SetFont('Helvetica','B',12);
            $pdf->Cell(0,0,'H. CONSEJO TÉCNICO',0,1);
            $pdf->Cell(0,0,'FACULTAD DE ESTADÍSTICA E INFORMÁTICA',0,2);
            $pdf->Cell(0,0,'PRESENTE',0,2);
            $pdf->SetFont('Helvetica',12);
            $pdf->ln(5);            
            $txt = 'El que suscribe <u>'. $row->a_paterno.' '.$row->a_materno.' '.$row->a_nombre.'</u> con matrícula <u>'.$row->a_matricula. '</u> estudiante de la <u>'.$row->p_nombreprograma.'</u> 
            por medio del presente solicita la autorización para presentar el examen de Última Oportunidad de la experiencia educativa: 
            <u>'.$row->p_nombre.'</u> cursada con el profesor (a): <u>'.$row->a_nombremtro. ' '.$row->a_apellidopaterno.' 
            '.$row->a_apellidomaterno.'</u> en el periodo lectivo: <u>'.$row->p_mesInicio.' '.substr($row->p_anioInicio, 0 , 4).'-'.$row->p_mesTermino.' '.substr($row->p_anioTermino, 0 , 4).'</u>';            
            $pdf->WriteHTML($txt);
            //$pdf->MultiCell(0,0,$txt); 
            $pdf->Cell(0,15,'MODALIDADES',0,2,'C');

            // write the first column
            $tabla = '<table style="padding: 5px;">
                <tr>
                    <td style="border: 1px solid black">CONDICIONADO</td>
                    <td style="border: 1px solid black">El estudiante se inscribe en su periodo de forma regular con el mínimo de créditos y presentará el examen elaborado por el jurado designado por el Consejo Técnico en la fecha 
                        que éste determine, teniendo como fecha límite <u>el último día de clases regulares;</u> ya que, de la aprobación del examen de última oportunidad depende el derecho a presentar 
                        los exámenes de las experiencias educativas a las que está inscrito.</td>
                </tr>
                <tr style="vertical-align:middle">
                    <td style="border: 1px solid black">OYENTE</td>
                    <td style="border: 1px solid black">El estudiante NO se inscribe (para alumnos matrícula 800 en adelante procede siempre y cuando el estudiante no haya agotado sus dos oportunidades que por estatuto tiene como límite)
                     y es asignado por la Secretaría Académica a una sección de la Experiencia Educativa, con el objetivo de que asista como oyente - previo aviso al Académico - debiendo cumplir con las 
                     actividades, tareas y exámenes parciales que se le indiquen, en caso contrario queda sin efecto este beneficio. <br> El estudiante presenta el examen de última oportunidad elaborado por
                     por el jurado designado por el Consejo Técnico en la fecha que éste determine, teniendo como fecha límite la fecha de término del periodo. <br>
                     <ul>
                        <li>La no inscripción omite el derecho a resello en el periodo.</li>
                     </ul>
                    </td>
                </tr>
            </table>';
            $pdf->WriteHTML($tabla);            
            $txt2='Leído lo anterior y comprendiendo lo que para cada modalidad se especifica opto por la modalidad <u>'.$row->m_descripcion.'</u> apegándome a los lineamientos que para ella se detallan.';
            $pdf->WriteHTML($txt2);


            $nombre_archivo = utf8_decode("alumnos.pdf");
            $pdf->Output($nombre_archivo, 'I');
        }
    }
       
// Establecemos el contenido para imprimir        
       /* $provincias = $this->alumnos_model->getAlumnos();        
        //preparamos y maquetamos el contenido a crear
        $html = '';        
        $html .= "<table width='100%'>";
        $html .= "<tr><th>Matricula</th><th>Nombre</th></tr>";
        
        //provincias es la respuesta de la función getProvinciasSeleccionadas($provincia) del modelo
        foreach ($provincias as $fila) 
        {
            $id = $fila->a_matricula;
            $localidad = $fila->a_nombre;

            $html .= "<tr><td class='id'>" . $id . "</td><td class='localidad'>" . $localidad . "</td></tr>";
        }
        $html .= "</table>";

// Imprimimos el texto con writeHTMLCell()
        $pdf->writeHTMLCell($w = 0, $h = 0, $x = '', $y = '', $html, $border = 0, $ln = 1, $fill = 0, $reseth = true, $align = '', $autopadding = true);
*/        
    }
}