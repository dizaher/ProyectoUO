<div class="container">
    <h1 class="text-light-blue">Administración de Usuarios</h1>
  <section class="content">         
    <a href="<?php echo site_url('c_usuarios') ?>" class="btn btn-app"><i class="fa fa-mail-reply"></i>Regresar</a>
      <div class="row">                                            
            <div class="box col-md-6 col-xs-6">
            <div class="box-header">
              <h3 class="box-title">Registrar Usuario</h3>
            </div><!-- /.box-header -->            
              <div class="box-body">                    
                <?php echo form_open('',array('class'=>'form-horizontal'));?>
                <div class="form-group">
                  <?php
                  echo form_label('Email','email');
                  echo form_error('email');
                  echo form_input('email','','class="form-control"');
                  ?>
                </div>
                <div class="form-group">
                  <?php
                  echo form_label('Nombre','first_name');
                  echo form_error('first_name');
                  echo form_input('first_name',set_value('first_name'),'class="form-control"');
                  ?>
                </div>
                <div class="form-group">
                  <?php
                  echo form_label('Apellidos','last_name');
                  echo form_error('last_name');
                  echo form_input('last_name',set_value('last_name'),'class="form-control"');
                  ?>
                </div>                
                <div class="form-group">
                  <?php
                  echo form_label('Teléfono','phone');
                  echo form_error('phone');
                  echo form_input('phone',set_value('phone'),'class="form-control"');
                  ?>
                </div>                                            
                <div class="form-group">
                  <?php
                  echo form_label('Password','password');
                  echo form_error('password');
                  echo form_password('password','','class="form-control"');
                  ?>
                </div>
                <div class="form-group">
                  <?php
                  echo form_label('Confirmar password','password_confirm');
                  echo form_error('password_confirm');
                  echo form_password('password_confirm','','class="form-control"');
                  ?>
                </div>                                
                <?php echo form_submit('submit', 'Crear Usuario', 'class="btn btn-primary btn-lg btn-block"');?>
                <?php echo form_close();?>
            </div><!-- /.box-body -->               
          </div><!-- /.box -->        
      </div><!-- /.row -->
      <a href="<?php echo site_url('c_usuarios') ?>" class="btn btn-app"><i class="fa fa-mail-reply"></i>Regresar</a>
  </section><!-- /.content -->
</div>