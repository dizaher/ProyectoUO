<div class="container">
  <div class="row">
      <div class="col-md-12">
        <a href="<?php echo site_url('admin/principal') ?>" class="btn btn-primary"><i class="fa fa-mail-reply"></i> Regresar</a>        
        <div class="panel panel-default">
          <div class="panel-heading">
              Lista de Alumnos en UO
          </div>
          <div class="panel-body">
              <div class="panel-group" id="accordion">                
                    <table class="table table-bordered">
                      <tbody><tr>
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
                  if(!empty($alumnos))
                  {                  
                    foreach($alumnos as $al)
                    {
                      echo '<tr>';
                      echo '<td>'.$al->a_matricula.'</td><td>'.$al->Alumno.'</td><td>'.$al->descripcion.' </td><td>'.$al->nombre.'</td><td>'.$al->Tutor.'</td><td>'.$mcurso.'</td><td>'.$al->m_descripcion.'</td><td>'.$al->a_correo.'</td><td>'.$al->a_telcelular.'</td>';                     
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