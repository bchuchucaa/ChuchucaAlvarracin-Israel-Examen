<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	
<title>Busqueda por Placa</title>
</head>
<body>
	<header id="header">
	<nav class="links" style="--items: 5;">
		<a href="/JPADAOProyecto1/index.html">Inicio</a>
		<span class="line"></span>
	</nav>
</header>
<br><br>
 
<form action="/ChuchucaAlvarracin-Israel-Examen/Buscar" autocomplete="off">
    <fieldset class="url">
      <input id="url" type="text" name="usuario" required>
      <label for="url"><i class="fa fa-search" aria-hidden="true"></i> Ingrese cedula</label>
      <div class="after"></div>
    </fieldset>
    <fieldset class="enter">
      <input type="submit" value="Buscar"/>
    </fieldset>
  </form>
  

<br><br><br><br><br><br>
<c:set var="p1" value="${requestScope['telefonos']}" />
		TUS DATOS<br> Id: ${cliente.cedula}<br> Nombre: ${cliente.nombre}<br>
	

		<table class=container>
				<tr>
					<td>fecha ingreso</td>
					<td>fecha salida</td>
					
				</tr>
			<c:forEach items="${tickets}" var="tickets">
				
				
				<tr>
					<td>${tickets.fechahoraingreso}</td>
					<td>${tickets.fechahorasalida}</td>
					
			
				</tr>
				
			</c:forEach>
		</table>
		<h1>listo</h1>

</body>
</html>