<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>login</title>
<link rel="stylesheet" href="css/tienda_login.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body class="bg-image">

	<div class="container">
		<div class="row">
			<div class="col">
			
			</div>
			<div class="col">
				<div class="text-end">
				
				</div>
				<h2 class="fw-bold text-center py-5">bienvenido</h2>
				<form action="usuario">
				<input type=hidden name=tipo value="iniciarSesion">
					<div class=mb-4>
						<label for="text" class="form-label"> usuario</label>
						<input type="text" class="form-control" name="nombre" placeholder="usuario" required="">
						<label for="password" class="form-label">password</label>
						<input type="password" class="form-control" name="clave" placeholder="contraseña" required="">
					<div class="mb-4 form-check">
						<input type="check-box" name="connected" class="form-check-input">
						<label for="connected" class="form-check-label"> Mantenerse conectado</label>
					</div>
					<div class="d-grid">
					<button type="submit" class="btn btn-primary">iniciar</button>
					
					</div>
					
					
					</div>
					<c:set var="mensaje" value="${requestScope.mensaje}" />
									<c:if test="${not empty mensaje}">
										<div class="alert alert-danger alert-dismissible">
											<p>${mensaje}</p>
										</div>
									</c:if>
				
				</form>
				
			</div>
		
		</div>
	
	</div>
									

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="js/tienda_login.js"></script>
</body>
</html>

