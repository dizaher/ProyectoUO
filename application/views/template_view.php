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
	<div class="container">
		<div id="page-wrapper">
			<div class="row">
				<nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">            
                    <div class="notifications-wrapper">
                    <ul class="nav">
                                       
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                <i class="fa fa-user-plus"></i>  <i class="fa fa-caret-down"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="#"><i class="fa fa-user-plus"></i> My Profile</a>
                                </li>
                                <li class="divider"></li>
                                <li><a href="#"><i class="fa fa-sign-out"></i> Logout</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                       
                    </div>
                </nav>
			</div><!-- /. ROW ENCABEZADO  -->
			<div class="row">							
				<div class=" col-md-4 col-sm-4">
	                <div class="style-box-one Style-one-clr-one">
                        <a href="#">
                            <span class="fa fa-table"></span>
                             <h5>Alumnos registrados</h5>
                        </a>
                    </div>
                </div>
                <div class=" col-md-4 col-sm-4">
	                <div class="style-box-one Style-one-clr-two">
                        <a href="#">
                            <span class="fa fa-group"></span>
                             <h5>Asignar Jurado</h5>
                        </a>
                    </div>
                </div>		                		                
                <div class=" col-md-4 col-sm-4">
                    <div class="style-box-one Style-one-clr-one">
                        <a href="#">
                            <span class="glyphicon glyphicon-calendar"></span>
                             <h5>Asignar Fechas</h5>
                        </a>
                    </div>
                </div>
                <div class=" col-md-4 col-sm-4">
                    <div class="style-box-one Style-one-clr-two">
                        <a href="<?php echo site_url('admin/users') ?>">
                            <span class="glyphicon glyphicon-user"></span>
                             <h5>Administrar Usuarios</h5>
                        </a>
                    </div>
                </div>
                <div class=" col-md-4 col-sm-4">
                    <div class="style-box-one Style-one-clr-one">
                        <a href="#">
                            <span class="glyphicon glyphicon-print"></span>
                             <h5>Imprimir Actas</h5>
                        </a>
                    </div>
                </div>
                <div class=" col-md-4 col-sm-4">
                    <div class="style-box-one Style-one-clr-two">
                        <a href="#">
                            <span class="glyphicon glyphicon-print"></span>
                             <h5>Imprimir Oficios</h5>
                        </a>
                    </div>
                </div>
			</div>	<!-- /. ROW  -->
		</div><!-- /. PAGE INNER  -->
	</div><!-- /. CONTAINER  -->
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
