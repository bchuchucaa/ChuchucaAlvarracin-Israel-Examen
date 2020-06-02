 <?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="/ChuchucaAlvarracin-Israel-Examen/img/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/ChuchucaAlvarracin-Israel-Examen/css/util.css">
	<link rel="stylesheet" type="text/css" href="/ChuchucaAlvarracin-Israel-Examen/css/main.css">
<link rel="stylesheet" type="text/css" href="/ChuchucaAlvarracin-Israel-Examen/css/usuario/menu.css">
	
	<script>
	function numeros(){

	var z = document.getElementById("cedula").value;
	if(!/^[0-9]+$/.test(z)){
	    alert("Porfavor ingresa solo caracteres numericos para tu numero(Permitidos: 0-9)");
	    document.getElementById("cedula").value="";
	  }
}
function soloLetras(e) {
    key = e.keyCode || e.which;
    tecla = String.fromCharCode(key).toLowerCase();
    letras = " áéíóúabcdefghijklmnñopqrstuvwxyz";
    especiales = [8, 37, 39, 46];

    tecla_especial = false
    for(var i in especiales) {
        if(key == especiales[i]) {
            tecla_especial = true;
            break;
        }
    }

    if(letras.indexOf(tecla) == -1 && !tecla_especial)
        return false;
}

</script>
<title>Ticket</title>
</head>
<body>
	<header id="header">
	<nav class="links" style="--items: 5;">
		<a href="/JPADAOProyecto/index.html">Inicio</a>
		<span class="line"></span>
	</nav>
</header>
<br><br>
<form action="/ChuchucaAlvarracin-Israel-Examen/RegistroController" method="get" id="registro">
<div class="limiter">
		<div class="container-login100" style="background-image: url('/ChuchucaAlvarracin-Israel-Examen/img/bg-01.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50">
				<span class="login100-form-title p-b-41">
					Ticket
				</span>
				<form class="login100-form validate-form p-b-33 p-t-5">
					<div class="wrap-input100 validate-input" data-validate = "Ingrese fecha y hora de ingreso">
						<input class="input100" type="text" id="cedula" minlength="10" maxlength="10" onkeyup="return numeros(this)" name="fechaingreso" placeholder="fecha y hora de ingreso" required>
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Ingrese fecha y hora de salida">
						<input class="input100" type="text" name="fechasalida" onkeypress="return soloLetras(event)" placeholder="fecha y hora de salida" required>
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>
					<h1>Vehiculo</h1>
					<div class="wrap-input100 validate-input" data-validate="Ingrese la placa del vehiculo">
						<input class="input100" type="text" onkeypress="return soloLetras(event)" name="placa" placeholder="ingresa la placa" required>
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate="Ingrese la marca del vehiculo">
						<input class="input100" type="text" name="marca" placeholder="Ingrese la marca del vehiculo" required>
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>
					<div class="wrap-input100 validate-input" data-validate="Ingrese el modelo del vehiculo">
						<input class="input100" type="text" name="modelo" minlength="8" placeholder="Elija el modelo" required>
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>
					<h1>Cliente</h1>
						<div class="wrap-input100 validate-input" data-validate="Ingrese la cedula del cliente">
						<input class="input100" type="text" name="cedula" minlength="8" placeholder="Elija su cedula" required>
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>
			
					

					<div class="container-login100-form-btn m-t-32">

						 <input class="login100-form-btn" type="submit" value="Registrarse">
						  <input class="login100-form-btn" type="reset" value="Limpiar">
					</div>

				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

 </form>













</body>
</html>