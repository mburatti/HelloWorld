<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="sessionTime.jsp" method="get">
	<input type="text" size="3" name="tempoSessao" />
	<input type="submit" value="Enviar" /> 
</form>

<%
	out.println("Tempo se sessão antigo era "+session.getMaxInactiveInterval()+"s");

	String parametro = request.getParameter("tempoSessao");
	if(parametro!=null){
		try{
			session.setMaxInactiveInterval(Double.valueOf(parametro).intValue());			
		}catch(NumberFormatException err){
			out.println("<p>Erro de conversão, valor padrão 60 selecionado</p>");
			session.setMaxInactiveInterval(60);
		}		
	}
	
	out.println("e agora o tempo de sessão é "+session.getMaxInactiveInterval()+"s");
%>
</br><a href="index.jsp">Voltar</a>
</body>
</html>