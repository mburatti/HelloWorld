<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ERRO</title>
</head>
<body>
<h1>Erro na Solicitação</h1>
<%
	String tipo="";
	String causa="Desconhecida";
	String oQueFazer="Não Definido";
	
	if(exception!=null){
		tipo = exception.getClass().toString();
		if(tipo.indexOf("java.lang.NullPointerException")>=0){
			causa = "Faltou informar um dado";
			oQueFazer = "Volte e informe todos os dados";
		}
		
		if(tipo.indexOf("java.lang.NumberFormatException")>=0){
			causa = "Numero Invalido";
			oQueFazer = "Informe numeros válidos, use ponto para casas decimais";
		}
		
		out.println("<br>Tipo de Erro: "+tipo);
		out.println("<br>Causa: "+causa);
		out.println("<br>O que fazer: "+oQueFazer);
	}
	
	String host = request.getHeader("referer");
	out.println("<br/><a href="+host+">voltar</a>");
%>
</body>
</html>