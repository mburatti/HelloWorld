<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	session.setAttribute("compositor","Antonio Carlos Jobim");
	session.setAttribute("musica","Gatora de Ipanema");
	session.setAttribute("estilo","Bossa Nova");	
%>

<form action='leAttributo.jsp' method='POST'>
	<input type='SUBMIT' value='CONTINUE'></input>
</form>

<p><a href="index.jsp">Voltar</a></p>
</body>
</html>