<%@ page import="java.util.List, br.com.alura.gerenciador.servlet.Empresa"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de Empresas</title>
</head>
<body>
	<c:if test="${ not empty empresa }">
		Empresa ${ empresa } cadastrada com sucesso!!! <!-- Expression Language -->
	</c:if>	
	<h3>Empresas</h3>
		
	<ul>
		<c:forEach items="${ empresas }" var="empresa">
			
			<li>
				${ empresa.nome } - <fmt:formatDate value="${ empresa.dataAbertura }" pattern="dd/MM/yyyy" /> 
				<a href="/gerenciador/mostraEmpresa?id=${ empresa.id }">editar</a>
				<a href="/gerenciador/removeEmpresa?id=${ empresa.id }">remove</a>
			</li>
		</c:forEach>
	</ul>
	
	
</body>
</html>

