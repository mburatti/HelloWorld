<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="beans.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	Pessoa p = (Pessoa)session.getAttribute("pessoa");
	if(p==null){p = new Pessoa();}
	
	String nome = (String)request.getParameter("nome");
	String idade = (String)request.getParameter("idade");
	String cpf = (String)request.getParameter("cpf");
	
	if(nome!=null){p.setNome(nome);}
	if(idade!=null){p.setIdade(Integer.parseInt(idade.trim()));}
	if(cpf!=null){p.setCpf(cpf.trim());}	
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pessoas with Session Beans</title>
</head>
<body>


</body>
</html>