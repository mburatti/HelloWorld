<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.*" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dados Recebidos</title>
</head>
<body>
<h1>Dados Recebidos</h1>
<p>
<% 
	Enumeration e = request.getParameterNames();
	out.println("<br><b>Parametros Recebidos:</b>");
	for(;e.hasMoreElements();){
		out.println("["+e.nextElement()+"]");
	}
%>
</p>
<p>1</p>
<p><b>Exemplo de public String getParameter(String key):</b>
<%
	out.println("<br>Valor dado para o parâmetro "+"[nome]:"+request.getParameter("nome"));			
%>
</p>

<p>2</p>
<p><b>Exemplo de Public String[ ] getParameterValues(String Key)</b>
<%
	String[] cursos = request.getParameterValues("curso");
	for(int i=0; i<cursos.length; i++){
		out.println("<br>curso #"+i+" valor = "+cursos[i]);
	}
%>
</p>

<p>3</p>
<p><b>Exemplo de getHeaderNames() e getHeader(key)</b>
<%
	Enumeration h = request.getHeaderNames();
	Object aux;
	for(;h.hasMoreElements();){
		aux = h.nextElement();
		out.println("<br>Header ["+aux+"]="+request.getHeader((String)aux));
	}
%>	
</p>

<p>4</p>
<p><b>Exemplo de getCookies()</b>
<%
	javax.servlet.http.Cookie[] c = request.getCookies();
	for(int i=1;i<c.length;i++){
		out.println("<br>Cookie "+c[i]);
	}
%>
</p>

<p>5</p>
<p><b>Exemplo de outros metodos</b>
<%
	out.println("request.getMethod(): "+request.getMethod()+"</br>");
	out.println("request.getRequestURL(): "+request.getRequestURL()+"</br>");
	out.println("request.getQueryString(): "+request.getQueryString()+"</br>");
	out.println("request.getRemoteAddr(): "+request.getRemoteAddr()+"</br>");
	out.println("request.getRemoteHost(): "+request.getRemoteHost()+"</br>");
	out.println("request.getRemoteUser(): "+request.getRemoteUser()+"</br>");
	out.println("request.getSession(true): "+request.getSession(true)+"</br>");
%>
</p>

<p><a href="index.jsp">Voltar</a></p>
</body>
</html>