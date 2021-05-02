<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/novaEmpresa" var="linkServletNovaEmpresa"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form action="${ linkServletNovaEmpresa }" method="post"> <!-- O "action" defina a url pra onde vocêe vai enviar a requisição ao subter o formulário. E o "name" é o nome do parametro -->
		Nome: <input type="text" name="nome" />
		Data de Abertura: <input type="text" name="data" />
		<input type="submit" />
	</form>
</body>
</html>