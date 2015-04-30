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
							<?php echo form_open('registroUO/registro'); ?>          						
								<div class="row">
									<div class="col-md-6 col-sm-6">
										<div class="form-group">
											<?php echo form_error('matricula' ); ?>
											<label for="exampleInputMatricula">Matricula</label>
											<input type="text" class="form-control" id="error" name="matricula" value="<?php echo set_value('matricula'); ?>" />
										</div>
										<div class="form-group">
											<?php echo form_error('nombre'); ?>
											<label for="exampleInputNombre">Nombre</label>
											<input type="text" class="form-control" name="nombre" value="<?php echo set_value('nombre'); ?>"/>
										</div>
										<div class="form-group">
											<?php echo form_error('paterno'); ?>
											<label for="exampleInputApellidoPat">Apellido Paterno</label>
											<input type="text" class="form-control" name="paterno" value="<?php echo set_value('paterno'); ?>"/>
										</div>
										<div class="form-group">
											<?php echo form_error('materno'); ?>
											<label for="exampleInputApellidoMat">Apellido Materno</label>
											<input type="text" class="form-control" name="materno" value="<?php echo set_value('materno'); ?>"/>
										</div>

										<div class="form-group">
											<label>Programa</label>
						                  <?php
						                  echo form_error('programa');						                  						                 
						                  $selected_value = $this->input->post('programa');
						                  echo form_dropdown('programa', $resPrograma, $selected_value,'class="form-control"');
						                  ?>
						                </div>										
									</div>
									<div class="col-md-6 col-sm-6">										
		                                <div class="form-group">
		                                    <label>Experiencia Educativa</label>
		                                    <?php
							                  echo form_error('expedu');						                  						                 
							                  $selected_value = $this->input->post('expedu');
							                  echo form_dropdown('expedu', $resExperiencia, $selected_value,'class="form-control"');
							                  ?>		                                    
		                                </div>
		                                <div class="form-group">
		                                    <label>Periodo</label>
		                                    <?php
							                  echo form_error('periodo');						                  						                 
							                  $selected_value = $this->input->post('periodo');
							                  echo form_dropdown('periodo', $resPeriodo, $selected_value,'class="form-control"');
							                  ?>		                                    
		                                </div>
		                                <div class="form-group">
		                                    <label>Tutor</label>
		                                    <?php
							                  echo form_error('tutor');						                  						                 
							                  $selected_value = $this->input->post('tutor');
							                  echo form_dropdown('tutor', $resTutor, $selected_value,'class="form-control"');
							                  ?>
		                                </div>
		                                <div class="form-group">
		                                    <label>Maestro con quien la cursó</label>
		                                    <?php
							                  echo form_error('curso');						                  						                 
							                  $selected_value = $this->input->post('curso');
							                  echo form_dropdown('curso', $resMaestro, $selected_value,'class="form-control"');
							                ?>		                                    
		                                </div>
		                            </div>
		                        </div>
                                <div class="row">
					                <div class="col-md-6 col-sm-6">					                	
					                    <div class="panel panel-default">
					                        <div class="panel-heading">
					                            <div class="radio">
													<label>
													<input type="radio" name="modalidad" id="optionsRadios1" value="2" />
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
													<input type="radio" name="modalidad" id="optionsRadios2" value="1" />
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
					            	<?php echo form_error('email'); ?>
								    <label for="exampleInputEmail1">Correo electrónico</label>
								    <input type="email" class="form-control" id="exampleInputEmail1" name="email" value="<?php echo set_value('email'); ?>"/>
								</div>                             															
								<div class="form-group col-sm-6">
								    <label for="exampleInputCasa">Teléfono Casa</label>
								    <input type="text" class="form-control" name="casa" value="<?php echo set_value('casa'); ?>"/>
								</div>
								<div class="form-group col-sm-6">							
									<?php echo form_error('celular'); ?>		
								    <label for="exampleInputCelular">Teléfono Celular</label>								    
								    <input type="text" class="form-control" name="celular" value="<?php echo set_value('celular'); ?>"/>
								</div>
								<div class="checkbox">
									<label>
										<?php echo form_error('accept_terms_checkbox'); ?>
									<input type="checkbox" name="accept_terms_checkbox" value="1" />
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
