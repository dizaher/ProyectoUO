<div class="container">
  <div class="row">
      <div class="col-md-12">
        <a href="<?php echo site_url('admin/principal') ?>" class="btn btn-primary"><i class="fa fa-mail-reply"></i> Regresar</a>        
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