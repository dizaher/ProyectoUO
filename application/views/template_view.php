<!DOCTYPE html>
<html>
<head>
   <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Administración de actas</title>
    <!-- BOOTSTRAP STYLES-->
    <link href="<?php echo base_url(); ?>css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME ICONS STYLES-->
    <link href="<?php echo base_url(); ?>css/font-awesome.css" rel="stylesheet" />
    <!--CUSTOM STYLES-->
    <link href="<?php echo base_url(); ?>css/style.css" rel="stylesheet" />
      <!-- HTML5 Shiv and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>  
  <header id="encabezado">
      <div id="linea-gradada"></div>
      <div class="contenedor-titulo">
              <h1 id="titulo-portal">Universidad Veracruzana</h1>
      </div>
  </header>
  <section class="seccion-titulo">        
    <div class="nombre-dependencia">
      <h1 id="NombreDependencia"><a href="http://www.uv.mx/fei">Facultad de Estadística e Informática</a></h1>             
    </div>      
  </section>
  <div class="container">
    <div class="row"><!-- /. ROW LOGUIN  -->
      <div class="col-md-12">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">            
          <div class="notifications-wrapper">
            <ul class="nav">                   
              <li class="dropdown pull-right">
                  <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                      <i class="fa fa-user"></i>  <i class="fa fa-caret-down"></i>
                  </a>
                  <ul class="dropdown-menu dropdown-user">
                      <li><a href="#"><i class="fa fa-user-plus"></i> Bienvenid@ <?php echo $nombre; ?></a>
                      </li>
                      <li class="divider"></li>
                      <li><a href="<?php echo site_url('registroUO/logout') ?>"><i class="fa fa-sign-out"></i> Salir</a>
                      </li>
                  </ul>
              </li>
            </ul>             
          </div>
        </nav>
      </div>
    </div><!-- /. ROW LOGUIN  -->            
  </div> <!-- /container -->
    <?php $this->load->view($contenido) ?>
    <footer >
        &copy; 2015 Universidad Veracruzana 
    </footer>
    <!-- /. FOOTER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="<?php echo base_url(); ?>js/jquery-1.11.1.js"></script>
    <!-- BOOTSTRAP SCRIPTS -->
    <script src="<?php echo base_url(); ?>js/bootstrap.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="<?php echo base_url(); ?>js/jquery.metisMenu.js"></script>
    <!-- CUSTOM SCRIPTS -->
    <script src="<?php echo base_url(); ?>js/custom.js"></script>


</body>
</html>
