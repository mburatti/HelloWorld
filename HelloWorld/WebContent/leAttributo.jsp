<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.*" %>

<%
   response.setHeader( "Pragma", "no-cache" );
   response.setHeader( "Cache-Control", "no-cache" );
   response.setDateHeader( "Expires", 0 );
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Atributos Lidos</title>
</head>
<body>
<%
	Enumeration atributos = session.getAttributeNames();
	Object escondido;
	
	for(;atributos.hasMoreElements();){
		escondido = atributos.nextElement();
		out.println("<br>Atributo armazenado: ["+escondido+"]");
		out.println(" ; Valor = "+session.getAttribute((String)escondido));
	}
%>
<p><a href="index.jsp">Voltar</a></p>
</body>
</html>