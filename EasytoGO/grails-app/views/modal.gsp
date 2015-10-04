<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
 <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
</head>
<body>

<div class="container">
    <!-- Trigger the modal with a button -->
  <button  class="btn btn-warning btn-lg" data-toggle="modal" data-target="#Login">Login</button>

  <!-- Modal -->
  <div class="modal fade" id="Login" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close"    onclick="$('[data-dismiss=modal]').trigger({ type: 'click' });">&times;</button>
          <h4 class="modal-title">Inicio de Sesion</h4>
          <br>
          <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="#">Olvidaste tu contraseña?</a></div>
        </div>
        <div class="modal-body">
          <div style="padding-top:30px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                        <form id="loginform" class="form-horizontal" role="form">
                                    
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input id="login-username" type="text" class="form-control" name="username" value="" placeholder="Usuario o email">                                        
                                    </div>
                                
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                        <input id="login-password" type="password" class="form-control" name="password" placeholder="password">
                                    </div>
                                    

                                
                            <div class="input-group">
                                      <div class="checkbox">
                                        <label>
                                          <input id="login-remember" type="checkbox" name="remember" value="1"> Recuerdame
                                        </label>
                                      </div>
                                    </div>


                                <div style="margin-top:10px" class="form-group">
                                    <!-- Button -->

                                    <div class="col-sm-12 controls">
                                      <a id="btn-login" href="#" class="btn btn-success">Login  </a>
                                      <a id="btn-fblogin" href="#" class="btn btn-primary">Login con Facebook</a>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="col-md-12 control">
                                        <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                                            No tienes cuenta! 
                                        <div onclick="$('#Login').modal('toggle');$('#SingIn').modal().show()">
                                        <a>Registrate Aqui</a>
                                        </div>
                                        </div>
                                    </div>
                                </div>    
                            </form>     



                        </div>                     
        
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss='modal'>Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>

 <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#SingIn">Registrarse</button>

  <!-- Modal -->
  <div class="modal fade" id="SingIn" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" onclick="$('[data-dismiss=modal]').trigger({ type: 'click' });">&times;</button>
          <h4 class="modal-title">Registrarse</h4>
          <br>
          <div style="float:right; font-size: 85%; position: relative; top:-10px" onclick="$('#SingIn').modal('toggle');$('#Login').modal().show()" ><a>Loguearse?</a></div>
        </div>
        <div class="modal-body" >
            
                        <div class="panel-body" >
                            <form id="signupform" class="form-horizontal" role="form">
                                
                                <div id="signupalert" style="display:none" class="alert alert-danger">
                                    <p>Error:</p>
                                    <span></span>
                                </div>
                                    
                                
                                  
                                <div class="form-group">
                                    <label for="email" class="col-md-3 control-label">Email</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="email" placeholder="Email">
                                    </div>
                                </div>
                                    
                                <div class="form-group">
                                    <label for="firstname" class="col-md-3 control-label">Nombre</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="firstname" placeholder="Nombre">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="lastname" class="col-md-3 control-label">Apellido</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="lastname" placeholder="Apellido">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="Nacimiento" class="col-md-3 control-label">Nacimiento</label>
                                    <div class="col-md-9">
                                        <input id="FechaNac"type="text" class="form-control " data-provide="datepicker" data-date-format="dd/mm/yyyy" name="Nacimiento" placeholder="Fecha de Nacimiento  dd/mm/yyyy">
                                    </div>
                                </div>      
                                <div class="form-group">
                                    <label for="password" class="col-md-3 control-label">Password</label>
                                    <div class="col-md-9">
                                        <input type="password" class="form-control" name="passwd" placeholder="Password">
                                    </div>
                                </div>
                                    
                                <div class="form-group">
                                    <label for="icode" class="col-md-3 control-label">Codigo de invitacion</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="icode" placeholder="">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <!-- Button -->                                        
                                    <div class="col-md-offset-3 col-md-9">
                                        <button id="btn-signup" type="button" class="btn btn-info"><i class="icon-hand-right"></i> &nbsp Registrarse</button>
                                        <span style="margin-left:8px;">o</span>  
                                    </div>
                                </div>
                                
                                <div style="border-top: 1px solid #999; padding-top:20px"  class="form-group">
                                    
                                    <div class="col-md-offset-3 col-md-9">
                                        <button id="btn-fbsignup" type="button" class="btn btn-primary"><i class="icon-facebook"></i>Sign Up con Facebook</button>
                                    </div>                                           
                                        
                                </div>
                                
                                
                                
                            </form>
                         </div>
                    </div>

               
               
                
         
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss='modal'>Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>

<asset:javascript src="bootstrap.min.js" />
<asset:javascript src="jquery-2.1.4.js"/>
	
    <script src="tema/js/scripts.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?libraries=places&callback=initAutocomplete" async defer></script>
    <!--<script src="https://maps.googleapis.com/maps/api/js?libraries=places&callback=initAutocomplete2" async defer></script>-->
    <script src="tema/js/jquery-2.1.4.js"></script>
    <script src="tema/js/bootstrap-datepicker.min.js" ></script>
    <script src="tema/js/bootstrap.min.js" ></script>
</body>
</html>
