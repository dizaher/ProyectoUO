<!DOCTYPE html>
<html>
<head>
   <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Formato Registro UO</title>
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
	<div id="page-inner">
		<div class="row">					
			<div class="col-md-3 col-sm-3"></div>
			<div class="col-md-6 col-sm-6">			
				<div class="panel panel-default">
					<div class="panel-heading">
						Selecciona tu programa
					</div>
					<div class="panel-body">							
						<?php echo form_open('registroUO/formato'); ?>          																						
						<div class="form-group">											
			                <?php
			                echo form_error('programa');						                  						                 
			                $selected_value = $this->input->post('programa');
			                echo form_dropdown('programa', $resPrograma, $selected_value,'class="form-control"');
			                ?>
		                </div>																							
						<button type="submit" class="btn btn-primary btn-lg pull-right">Llenar formato</button>							
						<?php echo form_close();?>
					</div>									                                 					            																																		
				</div>
			</div>
			<div class="col-md-3 col-sm-3"></div>				
		</div>	<!-- /. ROW  -->
	</div><!-- /. PAGE INNER  -->	

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
