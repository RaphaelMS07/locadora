<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/main" var="main"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="/Locadora/CSSs/presquisa-dropdown.css">
	<title>Adicionar Jogo</title>
</head>
<body>
	<c:import url="logout.jsp"/>
	<form action="${main}?action=AdicionarJogo" method="post">
		<div class="class_pesquisa">
			<input type="hidden" name="id" value="${usuarioLogado.id}" readonly><br>
			<label for="nome" class="legenda2" >Nome do Jogo </label>
			<input type="text" name="nome" value="" id="nome"><br>
			<div id='idPesquisa' class="hidden"></div>		
		</div>
		<input type="hidden" name="id_produto" id="id_produto"><br>
		C�digo do produto: <input type="text" name="cod_produto" id="cod_produto"><br>
		Valor: <input type="number" name="valor" value="" id="valor"><br>
		Valor custo: <input type="number" name="valor_custo" value="" id="valor_custo"><br>
		Valor aluguel: <input type="number" name="valor_aluguel" value="" id="valor_aluguel"><br>
		Valor multa: <input type="number" name="valor_multa" value="" id="valor_multa"><br>
		Quantidade: <input type="text" name="quantidade" value="1" id="quantidade"  ><br>
		Tipo <input type="text" name="tipo" value="" id="tipo"><br>
		<br>
		N� Serial <input type="text" name="num_serial" id="num_serial"><br>
		Franquia <input type="text" name="franquia" id="franquia"><br>
		generos <input type="text" name="generos" id="generos"><br>
		premios <input type="text" name="premios" id="premios"><br>
		notas <input type="text" name="notas" id="notas"><br>
		
		produtor<input type="text" name='produtor' id='produtor'><br>
		Distribuidor <input type='text' name='destribuidor' id='destribuidor'><br>
		Faixa et�ria <input type='text' name='faixa_etaria' id='faixa_etaria'><br>
		Integridade <input type='text' name='integridade' id='integridade'><br>
		Data de Lan�amento <input type='date' name='data_lancamento' id='data_lancamento'><br>
		
		<input type="submit" value="Salvar Jogo">
		
	</form>
</body>
<script src="/Locadora/Scripts/viewer.js"></script>
<script src="/Locadora/Scripts/DesenhaDropdown.js"></script>
<script src="/Locadora/Scripts/Pesquisa.js"></script>
<script>	
	var pesquisa = new Pesquisa(${produtos}, ${jogos});
	
	pesquisa.pesquisar()
</script>
</html>