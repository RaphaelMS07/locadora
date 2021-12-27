<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/main" var="linkMain" />

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Menu do usuario</title>
	<link rel="stylesheet" href="/Locadora/CSSs/menu.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
	<header>

		<c:import url="cabecalho.jsp" />
	</header>
	<div id=lista_opcoes>
		<a href="${main}?id=${usuarioLogado.id}&action=AlterarUsuario">Alterar dados pessoais</a>
		<c:if test="${usuarioLogado.nivelAcesso > 2}"><a href="${main}?action=ListarUsuarios" class="nivel${usuarioLogado.nivelAcesso}"> Listar usuarios</a></c:if>
		
		<a href="view/adicionar-credito.jsp">Adicionar Credito</a>
		
	</div>

</body>
</html>