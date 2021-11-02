<%@page import="controlador.Conexion"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="modelo.UsuarioDAO,modelo.*,java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<title>tienda virtual</title>
<!--  <link rel="stylesheet" href="css/estilos_1.css">-->
<link rel="stylesheet" href="css/estilos_2.css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/5c755a5e47.js" crossorigin="anonymous"></script>
</head>

<body>

		<nav class="navbar navbar-expand-lg navbar-dark"style="background-color: 			#808080;">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">menu tienda</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav"  height="300px">
      <ul class="navbar-nav">
      <li class="nav-item">
          <a style="margin-left:10px; border:none" class="btn btn-outline-light" href="principal.jsp">Inicio</a>
        </li>
        <li class="nav-item">
          <a style="margin-left:10px; border:none" class="btn btn-outline-light" href="usuario.jsp">Usuarios</a>
        </li>
        <li class="nav-item">
           <a style="margin-left:10px; border:none" class="btn btn-outline-light" href="Clientes.jsp">clientes</a>
        </li>
        <li class="nav-item">
      <a style="margin-left:10px; border:none" class="btn btn-outline-light" href="Clientes.jsp">proveedores</a>
        </li>
        <li class="nav-item">
       	<a style="margin-left:10px; border:none" class="btn btn-outline-light" href="Clientes.jsp">productos</a>
        </li>
         <li class="nav-item">
            <a style="margin-left:10px; border:none" class="btn btn-outline-light" href="usuario?tipo=cerrarSesion">ventas</a>
        
        </li>
         <li class="nav-item">
            <a style="margin-left:10px; border:none" class="btn btn-outline-light" href="usuario?tipo=cerrarSesion">reportes</a>
        
        </li>
     
            
           <li class="nav-item" >
            <a style="margin-left:10px; border:none" class="btn btn-outline-light" href="usuario?tipo=cerrarSesion">cerrar sesion</a>
        
        </li>
        </ul>
         
    </div>
  </div>
</nav>

<%
//Conexion con=new Conexion();
//con.conexiondb();

String cedula="",email="",nombre="",password="",usuario="";
if(request.getParameter("cedula")!=null){
cedula=request.getParameter("cedula");
email=request.getParameter("email");
nombre=request.getParameter("nombre");
password=request.getParameter("password");
usuario=request.getParameter("usuario");
}
%>
<div class= "usuario">
<form action="servletusuario" method="post">


<table width="55%" align="center" class="table">
  <thead>
    <tr>
      <th colspan="5" scope="col"><center>
        <h2>Formulario de  Registro Usuarios</h2></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th colspan="5" scope="row">
      	<input type="submit" name="registrar" value="Registrar" class="btn btn-primary" />
        <input type="submit" name="consultar" value="Consultar" class="btn btn-secondary" />
        <input type="submit" name="actualizar" value="Actualizar" class="btn btn-success" />
        <input type="submit" name="eliminar" value="Eliminar" class="btn btn-danger" /></th>
    </tr>
    <tr>
      <th scope="row" >cedula</th>
     
      <td >email</td>
      <td >nombre</td>
       <td ></td>
      </tr>
    <tr>
      <th scope="row"><input type="number" name="cedula"  value="<%=cedula%>" placeholder = " # CEDULA" /></th>
      <td><input type="text" name="email"  value="<%=email%>"placeholder = "email" /></td>
      <td><input type="text" name="nombre"  value="<%=nombre%>"placeholder = "nombre" /></td>
      <td></td>
      </tr>
    <tr>
      <th width="36%" scope="row">clave</th>
      <td width="28%">usuario</td>
      <td></td>
      <td></td>
      </tr>
    <tr>
      <th scope="row"><input type="password" name="password"  value="<%=password%>" placeholder = " password" /></th>
      <td><input type="text" name="usuario"  value="<%=usuario%>"placeholder = "Usuario" /></td>
      <td></td>
      <td></td>
      </tr>
    <tr>
      <th scope="row">&nbsp;</th>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      </tr>
  </tbody>
</table>


</form>
</div>

<div class="row">

	<c:set var="mensaje_error" value="${requestScope.mensaje_error}" />
	<c:if test="${not empty mensaje_error}">
		<div class="alert alert-danger alert-dismissible">
			<p>${mensaje_error}</p>
		</div>
	</c:if>

</div>

<div class="row">

	<c:set var="mensaje_success" value="${requestScope.mensaje_success}" />
	<c:if test="${not empty mensaje_success}">
		<div class="alert alert-success alert-dismissible">
			<p>${mensaje_success}</p>
		</div>
	</c:if>

</div>

<div class="row">

	<c:set var="mensaje_warning" value="${requestScope.mensaje_warning}" />
	<c:if test="${not empty mensaje_warning}">
		<div class="alert alert-warning alert-dismissible">
			<p>${mensaje_warning}</p>
		</div>
	</c:if>

</div>

<br>
<br>
<th><center>
<h3>LISTADO DE USUARIOS</h3></th>
  
<%
List<UsuarioDTO> lista=UsuarioDAO.consultar();
request.setAttribute("lista",lista);
%>

<table  class="table" align="center" width="100%" >
<thead class="table" style="background-color:		#C0C0C0;">
<th>Identificación</th><th>email usuario</th><th>nombre usuario</th><th>usuario</th></thead>
<c:forEach items="${lista}" var="usu">
<tr><td><strong>${usu.getCedula_usuario()}</strong></td><td>${usu.getEmail_usuario()}</td><td>${usu.getNombre_usuario()}</td>
<td>${usu.getUsuario()}</td>

</tr>
</c:forEach>
</table>



<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>

</body>
</html>