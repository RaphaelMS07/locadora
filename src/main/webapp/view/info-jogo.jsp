<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/main" var="linkMain" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Informações do filme</title>
<link rel="stylesheet" href="/Locadora/CSSs/menu.css">
</head>
	<body>
		
		
		<c:import url="cabecalho.jsp" />
		
		<div id="info_jogo">
			
			${jogo.nome} ${jogo.plataforma} ${jogo.generos} ${jogo.dataLancamento} 
			
			
		</div>
		<div id="id-jogo" class="hidden">${jogo.idJogo}</div>
		<div id="info_produto">	</div>
		<div id="info_aluguel">	</div>
		
		<a href="${main}?id_usuario=${usuarioLogado.id }&id_jogo=${jogo.idJogo}&action=AlugarJogo">Alugar</a>
	</body>
	<script src="/Locadora/Scripts/jquery.js"></script>
	<script id="script_produto">	
		var idJogo = document.getElementById('id-jogo').textContent
		
		var paramIdJogo = {
			action: "InfoProduto",
			id_jogo: idJogo
		}

		$.post("main", $.param(paramIdJogo), function(response) {
		  	$('#info_produto').append(response);
		});
	</script>
		<script id="script_aluguel">	
		
		
		var paramAluguel = {
			action: "InfoAluguel",			
		}
		$.post("main", $.param(paramAluguel), function(response) {
		  	$('#info_aluguel').append(response);
		});
		
	</script>
		
</html>