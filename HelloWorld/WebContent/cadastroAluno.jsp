<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro Aluno</title>
</head>
<body>
<h1>Cadastro de Alunos</h1>
<form action="dadosRecebidos.jsp" method="POST">
<b>Nome: </b><input type="text" name="nome" size="20" />
<br /><b>Sexo:</b>
	<input type="radio" name="sexo" value="M" checked /> Masculino
	<input type="radio" name="sexo" value="F" /> Feminino

<br/><b>Solicita Matricula nos Seguintes Cursos</b><br />
	<input type="checkbox" name="curso" value="java" /> Java</br>
	<input type="checkbox" name="curso" value="c" /> Programação C</br>
	<input type="checkbox" name="curso" value="linux" /> Linux</br>
	<input type="checkbox" name="curso" value="db" /> Banco de Dados</br>
	<input type="submit" value="Enviar" /></br>
</form>

<p><a href="index.jsp">Voltar</a></p>
</body>
</html>