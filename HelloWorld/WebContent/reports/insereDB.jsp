<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.sql.*"
    import="java.util.*"
    import="java.text.*"
    import="db.*"    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resultado da Inserção</title>
</head>
<body>
<% 
		String editaNome = request.getParameter("editaNome");
		String editaValor = request.getParameter("editaValor");
		if(editaValor==null){editaValor="0.0";}
		if(editaNome==null){editaNome="";}		
%>

	<form action="insereDB.jsp" method="POST">		
		Produto <input type="text" name="nome" value="<%out.println(editaNome);%>" />
		Valor <input type="text" name="valor" value="<%out.println(editaValor);%>"  />
		<input type="submit" value="Inserir"/>
	</form>

<%
		String nome = request.getParameter("nome");
		String valor = request.getParameter("valor");
	
		Conectar.open();

		if(nome!=null){
			Conectar.executeInsert(nome,Double.parseDouble(valor));
		} else {
			out.println("O Nome não pode ser nulo!");
		}
		
		ResultSet rec;
		rec = Conectar.executeQuery("select * from produtos");
		
		out.println("<center><table BORDER=\"0\" CELLPADDING=\"5\" CELLSPACING=\"0\" BORDERCOLOR=\"FF9999\"><tr><th>Codigo</th><th>Nome</th><th>Valor</th></tr>");
		while(rec.next()){
			out.println("<tr><td>"+rec.getString("codigo")+
					"</td><td>"+rec.getString("nome")+
					"</td><td>"+rec.getString("valor")+"</td></tr>");		
		}
		out.println("</table>");
		Conectar.close();
		
%>
</body>
</html>