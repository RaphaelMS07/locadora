<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/main" var="linkMain" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Catalogo de filmes</title>
</head>
<body>
	<c:import url="cabecalho.jsp" />
	<br>
	<div id="todos_filmes">
	Filmes disponiveis:
		<ul>
		
			
			<c:forEach items="${filmes}" var="filme">
				 <c:if test="${not empty filmes}">
						<li>${filme.nome}</li>
						<a href="${main}?id_filme=${filme.idFilme}&action=InfoFilme">Info</a>
						
					</c:if>
				<c:if test="${empty filmes }">Lista vazia</c:if>
			</c:forEach>
		</ul>	
	
	</div>

</body>
</html>