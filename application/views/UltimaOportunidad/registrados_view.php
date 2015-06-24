<div class="container">
  <div class="row">
      <div class="col-md-12">        
        <div class="panel panel-default">
          <div class="panel-heading">
              <a href="<?php echo site_url('admin/principal') ?>" class="btn btn-primary pull-right"><i class="fa fa-mail-reply"></i> Regresar</a>
              <h4>     Lista de Alumnos en UO</h4>
          </div>
          <div class="panel-body">
            <?php echo form_open('c_calentador/reportefechas'); ?>
            <div class="col-md-3">
              <div class="form-group">
                <label>Programa</label>                          
                <?php
                echo form_error('programa');                                                           
                $selected_value = $this->input->post('programa');
                echo form_dropdown('programa', $resPrograma, $selected_value,'class="form-control"');
                ?>
              </div><!-- /.form group -->                                                         
            </div>
            <div class="col-md-3">
              <div class="form-group">
                <label>Periodo</label>
                <?php
                echo form_error('periodo');                                                          
                $selected_value = $this->input->post('periodo');
                echo form_dropdown('periodo', $resPeriodo, $selected_value,'class="form-control"');
                ?>
              </div><!-- /.form group -->                                                         
            </div>
            <div class="col-md-3">
              <div class="form-group">
                <label>Experiencia:</label>
                <?php
                echo form_error('expedu');                                                           
                $selected_value = $this->input->post('expedu');
                echo form_dropdown('expedu', $resExperiencia, $selected_value,'class="form-control"');
                ?>
              </div><!-- /.form group -->                                                         
            </div>            
            <div class="col-md-3">
              <div class="form-group">
                <label>Modalidad</label>
                <?php
                echo form_error('modalidad');                                                          
                $selected_value = $this->input->post('modalidad');
                echo form_dropdown('modalidad', $resModalidad, $selected_value,'class="form-control"');
                ?>                
              </div><!-- /.form group -->                                                                       
            </div>
            <a href="<?php echo site_url('admin/principal') ?>" class="btn btn-primary"> Consultar</a>

              <div class="panel-group" id="accordion"> 
                <?php
                  if ($results == null) {
                    echo $results;
                  }
                  else{                                                         
                    ?>                                
              <table class="table table-bordered">
                <caption>Resultados de consulta</caption>
                <tr>
                    <th>Matricula</th>
                    <th>Nombre de alumno</th>
                    <th>Carrera</th>                      
                    <th>Experiencia</th>
                    <th>Tutor</th>
                    <th>Mtro con quien curso</th>
                    <th>Modalidad</th>
                    <th>Correo</th>
                    <th>Celular</th>
                </tr>
                <?php 
                if ($results == 0) {
                    echo "No hay datos";
                  }
                  else{
                    foreach($results as $data){ 
                    {
                            echo '<tr>';
                            echo '<td>'.$al->a_matricula.'</td><td>'.$al->Alumno.'</td><td>'.$al->descripcion.' </td><td>'.$al->nombre.'</td><td>'.$al->Tutor.'</td><td>'.$mcurso.'</td><td>'.$al->m_descripcion.'</td><td>'.$al->a_correo.'</td><td>'.$al->a_telcelular.'</td>';                     
                            echo '</tr>';
                    }                                     
                  }
                }
                ?>
                </table>            
            <p><?php echo $links; ?></p>
          <?php } ?>                                                
              </div>
          </div>
        </div>          
      </div>
  </div>                      
</div>