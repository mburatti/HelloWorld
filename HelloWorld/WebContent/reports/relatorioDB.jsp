<%@ page language="java" 
	contentType="text/html; charset=ISO-8859-1"
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
<title>Relatorio de Produtos</title>
</head>
<body>
<center><h1>Relatorio de Produtos</h1></center>
<br />
<%
	String pesquisa = "select * from produtos";
	Conectar.open();
	ResultSet rec;
	rec = Conectar.executeQuery(pesquisa);
	
	out.println("<center><table BORDER=\"0\" CELLPADDING=\"5\" CELLSPACING=\"0\" BORDERCOLOR=\"FF9999\"><tr><th>Codigo</th><th>Nome</th><th>Valor</th></tr>");
	
	while(rec.next()){
		out.println("<tr><td>"+rec.getString("codigo")+
				"</td><td>"+rec.getString(2)+
				"</td><td>"+rec.getString(3)+"</td></tr>");		
	}
	out.println("</table>");
	Conectar.close();
%>
</body>
</html>