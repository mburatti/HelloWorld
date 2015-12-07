<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="beans.*"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Beans Pessoa</title>
</head>
<body>
<%
	Pessoa p = new Pessoa();
	p.setNome("Michael C. Buratti");
	p.setIdade(36);
	p.setCpf("00702586943");	
%>
<center>
	<table border=0>
		<tr><th>Nome:</th><td><%= p.getNome() %></td></tr>
		<tr><th>Idade:</th><td><%= p.getIdade() %> anos</td></tr>
		<tr><th>CPF:</th><td><%= p.getCpf() %></td></tr>
	</table>
</center>
</body>
</html>