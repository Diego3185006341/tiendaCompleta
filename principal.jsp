<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PRINCIPAL</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
	
	
	
<!-- CAPA CONTENEDORA PRINCIPAL -->

		<!-- CAPA CONTENEDORA CABEZOTE WEB -->

		
		<!-- CAPA CONTENEDORA MENU DE NAVEGACION WEB -->
	<nav class="navbar navbar-expand-lg navbar-dark"style="background-color: 	#808080;">
  		<div class="container-fluid">
    	<a class="navbar-brand" href="#">menu tienda</a>
   		 <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
     	 <span class="navbar-toggler-icon"></span>
    	</button>
   		 <div class="collapse navbar-collapse" id="navbarNav" >
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

	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>