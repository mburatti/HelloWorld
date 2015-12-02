<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="calculo.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Calcula Fatorial</title>
	</head>
	<body>
		<p>Calcula Fatorial:</p>
		<%
		String parametro = request.getParameter("numero");		
		
			if(parametro!=null){
				double num = Double.valueOf(parametro).doubleValue();
				Fatorial fat = new Fatorial();
				out.println("<p>O fatorial de "+num+" é "+fat.calcule(num)+"</p>");
			}else{
				out.println("<p>Necessito de um parametro para calcular o fatorial</p>");
			}
		%>
		<p><a href="index.jsp">Voltar</a></p>
	</body>
</html>