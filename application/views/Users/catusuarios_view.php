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
      </div>
    </div><!-- /. ROW LOGUIN  -->            
  </div> <!-- /container -->

  <div class="container">
    <div class="row">
        <div class="col-md-12">
          <div class="panel panel-default">
            <div class="panel-heading">
                Usuarios Registrados
            </div>
            <div class="panel-body">
                <div class="panel-group" id="accordion">
                  <a href="<?php echo site_url('c_usuarios/create');?>" class="btn btn-primary">Nuevo Usuario</a>                                          
                      <table class="table table-bordered">
                        <tbody><tr>
                          <th>Usuario</th>
                          <th>Nombre</th>
                          <th>Apellido</th>                      
                          <th>Correo</th>
                          <th>Password</th>
                          <th>Acciones</th>
                        </tr>                    
                    <?php
                    if(!empty($users))
                    {                  
                      foreach($users as $user)
                      {
                        echo '<tr>';
                        echo '<td>'.$user->u_nomusuario.'</td><td>'.$user->u_nombre.'</td><td>'.$user->u_apellidos.' </td><td>'.$user->u_correo.'</td><td>'.$user->u_clave.'</td><td>';
                        echo anchor('c_usuarios/edit/'.$user->u_correo,'<span class="glyphicon glyphicon-pencil"></span>').' '.anchor('c_usuarios/delete/'.$user->u_correo,'<span class="glyphicon glyphicon-remove"></span>',array('onClick' => "return confirm('Estas seguro de eliminarlo?')"));
                        
                        echo '</td>';
                        echo '</tr>';
                      }          
                    }
                    ?>
                    </tbody>
                  </table>                              
                </div>
            </div>
          </div>          
        </div>
    </div>                      
  </div>            
          

            
  <!-- Main component for a primary marketing message or call to action -->
      
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
