<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Random"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Exercício 03</title>
<style>
table{
 border: 1px solid black;
 width: 20%;
}
tr{
 border: 1px solid black;
 width: 10%;
}
td{
 border: 1px solid black;
 width: 10%;
}
.TFtable0{
 background: #FAFAFA;
}
.TFtable1{
 background: #AAAAAA;
}
</style>

</head>
<body>
	<%
		out.write("<table>"
				+"<tr>"
				+"<td colspan ='2' style='font-weight:bold; text-align:center;'>TABELA ASCII "
				+"</td></tr>"
				+"<tr>"
				+"<td style='font-weight:bold;'>Código</td> "
				+"<td style='font-weight:bold;'>Caractere"
				+"</td></tr>"
				+"</table>");
	
		long randomNumberCounter = 0;

		for (int i = 1; i <= 5; i++) {
			Random number = new Random();
			int randomNumber = number.nextInt(255);
			char charValue = (char)randomNumber;
			
			out.write("<table class='TFtable"+i%2+"'>"
					+"<tr>"
					+"<td>" + randomNumber +" </td>"
					+"<td> " + charValue  +" </td>"
					+"</tr>"
					+"</table>");
		}	
	%>
</body>
</html>