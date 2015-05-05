<?php if (!defined('BASEPATH'))exit('No direct script access allowed');

class Reporte extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('alumnos_model');
    }
    
    public function index()
    {        
        //cargamos la vista 
        $this->load->view('lanzarpdf');
    }

    public function generar() {
        $this->load->library('Pdf');
        $pdf = new Pdf('P', 'mm', 'A4', true, 'UTF-8', false);                
        $pdf->SetTitle('H. CONSEJO TÉCNICO');
        $pdf->SetSubject('FACULTAD DE ESTADÍSTICA E INFORMÁTICA');        

// datos por defecto de cabecera, se pueden modificar en el archivo tcpdf_config_alt.php de libraries/config        
        $pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE, PDF_HEADER_STRING, array(0, 0, 0), array(0, 0, 0));
        $pdf->setFooterData($tc = array(0, 0, 0), $lc = array(0, 0, 0));

// datos por defecto de cabecera, se pueden modificar en el archivo tcpdf_config.php de libraries/config
        $pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
        $pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

// se pueden modificar en el archivo tcpdf_config.php de libraries/config
        $pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

// se pueden modificar en el archivo tcpdf_config.php de libraries/config
        $pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
        $pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
        $pdf->SetFooterMargin(PDF_MARGIN_FOOTER);

// se pueden modificar en el archivo tcpdf_config.php de libraries/config
        $pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

//relación utilizada para ajustar la conversión de los píxeles
        $pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);


// ---------------------------------------------------------
// establecer el modo de fuente por defecto
        $pdf->setFontSubsetting(true);

// Establecer el tipo de letra
 
//Si tienes que imprimir carácteres ASCII estándar, puede utilizar las fuentes básicas como
// Helvetica para reducir el tamaño del archivo.
        $pdf->SetFont('Helvetica', '', 12, '', true);

// Añadir una página
// Este método tiene varias opciones, consulta la documentación para más información.
        $pdf->AddPage();

//fijar efecto de sombra en el texto
        //$pdf->setTextShadow(array('enabled' => true, 'depth_w' => 0.2, 'depth_h' => 0.2, 'color' => array(196, 196, 196), 'opacity' => 1, 'blend_mode' => 'Normal'));

// Establecemos el contenido para imprimir        
        $provincias = $this->alumnos_model->getAlumnos();        
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

// ---------------------------------------------------------
// Cerrar el documento PDF y preparamos la salida
// Este método tiene varias opciones, consulte la documentación para más información.
        $nombre_archivo = utf8_decode("alumnos.pdf");
        $pdf->Output($nombre_archivo, 'I');
    }
}