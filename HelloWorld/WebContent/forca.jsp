<%@ page language="java" 
	contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
	errorPage="erro.jsp"    
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="forca.jsp">
	<h1>Calculo de Força</h1>
	<p>Massa <input type="text" name="massa" size="5" />
	Aceleração <input type="text" name="aceleracao" size="5" /></p>
	<input type="submit" />
</form>
</br>
<%	 
	try{
		Double Massa = Double.valueOf(request.getParameter("massa")).doubleValue();
		Double Aceleracao = Double.valueOf(request.getParameter("aceleracao")).doubleValue();
		out.println("Força = "+(Massa*Aceleracao));	
	}
	catch(NullPointerException npe){
		out.println("<br/>Null Pointer");	
	}
	catch(NumberFormatException nfe){
		out.println("<br/>Number Format Exception");
	}
	
%>
</body>
</html>