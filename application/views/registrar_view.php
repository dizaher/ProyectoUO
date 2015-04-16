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
	<div class="container">
		<div id="page-inner">
			<div class="row">
				<div class="col-md-12">					
					<div class="panel panel-default">
						<div class="panel-heading">
							FORMATO DE REGISTRO ULTIMA OPORTUNIDAD
						</div>
						<div class="panel-body">							
							<?php echo form_open('registroUO'); ?>
          						<?php echo validation_errors('<div class="alert alert-error">', '</div>'); ?>
								<div class="row">
									<div class="col-md-6 col-sm-6">
										<div class="form-group">
											<label for="exampleInputEmail1">Matricula</label>
											<input type="text" class="form-control" name="matricula" />
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">Nombre</label>
											<input type="text" class="form-control" name="nombre" />
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">Apellido Paterno</label>
											<input type="text" class="form-control" name="paterno" />
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">Apellido Materno</label>
											<input type="text" class="form-control" name="materno"/>
										</div>
										<div class="form-group">
		                                    <label>Carrera</label>
		                                    <select name="programa" class="form-control">
												 <?php						  
												    foreach ($resPrograma as $rp) {				    	
														?>  
														<option value="<?php echo $rp->idPrograma ?>"><?php echo $rp->descripcion ?></option>	    			
											    		<?php					
										    		}		    		    			    
										    		?>
											</select>		                                    
		                                </div>
									</div>
									<div class="col-md-6 col-sm-6">										
		                                <div class="form-group">
		                                    <label>Experiencia Educativa</label>
		                                    <select name="expedu" class="form-control">
												 <?php						  
												    foreach ($resExperiencia as $re) {				    	
														?>  
														<option value="<?php echo $re->idMateria ?>"><?php echo $re->nombre ?></option>	    			
											    		<?php					
										    		}		    		    			    
										    		?>
											</select>
		                                </div>
		                                <div class="form-group">
		                                    <label>Periodo</label>
		                                    <select name="periodo" class="form-control">
												 <?php						  
												    foreach ($resPeriodo as $rpe) {				    	
														?>  
														<option value="<?php echo $rpe->idPeriodo ?>"><?php echo $rpe->mesInicio ?> <?php echo substr($rpe->anoInicio, 0 , 4) ?>-<?php echo $rpe->mesTermino ?> <?php echo substr($rpe->anoTermino, 0 , 4) ?></option>	    			
											    		<?php					
										    		}		    		    			    
										    		?>
											</select>
		                                </div>
		                                <div class="form-group">
		                                    <label>Tutor</label>
		                                    <select name="tutor" class="form-control">
												 <?php						  
												    foreach ($resTutor as $rt) {				    	
														?>  
														<option value="<?php echo $rt->idAcademico ?>"><?php echo $rt->nombre ?> <?php echo $rt->apellidoPaterno ?> <?php echo $rt->apellidoMaterno ?></option>	    			
											    		<?php					
										    		}		    		    			    
										    		?>
											</select>
		                                </div>
		                                <div class="form-group">
		                                    <label>Maestro con quien la cursó</label>
		                                    <select name="curso" class="form-control">
												 <?php						  
												    foreach ($resMaestro as $rm) {				    	
														?>  
														<option value="<?php echo $rm->idAcademico ?>"><?php echo $rm->nombre ?> <?php echo $rm->apellidoPaterno ?> <?php echo $rm->apellidoMaterno ?></option>	    			
											    		<?php					
										    		}		    		    			    
										    		?>
											</select>
		                                </div>
		                            </div>
		                        </div>
                                <div class="row">
					                <div class="col-md-6 col-sm-6">					                	
					                    <div class="panel panel-default">
					                        <div class="panel-heading">
					                            <div class="radio">
													<label>
													<input type="radio" name="optionsRadios" id="optionsRadios1" value="2" />
													Oyente
													</label>
												</div>
					                        </div>
					                        <div class="panel-body">
					                            <p>El estudiante NO se inscribe (para alumnos matrícula 800 en adelante procede siempre y cuando el estudiante no haya agotado sus dos oportunidades que por estatuto tiene como límite)
					                             y es asignado por la Secretaría Académica a una sección de la Experiencia Educativa, con el objetivo de que asista como oyente - previo aviso al Académico - debiendo cumplir con las 
					                             actividades, tareas y exámenes parciales que se le indiquen, en caso contrario queda sin efecto este beneficio. <br> El estudiante presenta el examen de última oportunidad elaborado por
					                             por el jurado designado por el Consejo Técnico en la fecha que éste determine, teniendo como fecha límite la fecha de término del periodo. <br>
					                             <ul>
					                             	<li>La no inscripción omite el derecho a resello en el periodo.</li>
					                             </ul>
					                         </p>					                            
					                        </div>					                        					                       
					                    </div>					                    
					                </div>                
					                <div class="col-md-6 col-sm-6">					                	
					                    <div class="panel panel-default">
					                        <div class="panel-heading">
					                            <div class="radio">
													<label>
													<input type="radio" name="optionsRadios" id="optionsRadios2" value="1" />
													Condicionado
													</label>
												</div>
					                        </div>
					                        <div class="panel-body">
					                            <p>El estudiante se inscribe en su periodo de forma regular con el mínimo de créditos y presentará el examen elaborado por el jurado designado por el Consejo Técnico en la fecha 
					                            	que éste determine, teniendo como fecha límite <u>el último día de clases regulares;</u> ya que, de la aprobación del examen de última oportunidad depende el derecho a presentar 
					                            	los exámenes de las experiencias educativas a las que está inscrito.</p>
					                        </div>					                        
					                    </div>					                    
					                </div>
					            </div>   
					            <div class="form-group">
								    <label for="exampleInputEmail1">Correo electrónico</label>
								    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email" />
								</div>                             															
								<div class="form-group col-sm-6">
								    <label for="exampleInputEmail1">Teléfono Casa</label>
								    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email" />
								</div>
								<div class="form-group col-sm-6">
								    <label for="exampleInputEmail1">Teléfono Celular</label>
								    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email" />
								</div>
								<div class="checkbox">
									<label>
									<input type="checkbox" value="" />
									He leído y acepto los términos y condiciones
									</label>
								</div>																													
							<button type="submit" class="btn btn-primary btn-lg pull-right">Registrar</button>							
													

							
							</form>
						</div>
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
