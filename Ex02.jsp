<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Random"%>
<%@ page import="java.text.NumberFormat"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Exercicio 02</title>
<style>

table{
border: 1px solid black; width:30%
}
td{
border: 1px solid black; width:10%
}
tr{
border: 1px solid black; width:10%
}
</style>
</head>
<body>
	<%
		out.write("<table style=''>"
				+"<tr>"
				+"<td style='font-weight:bold; text-align:center;'>LISTA DE GASTOS "
				+"</td></tr>"
				+"</table>");
		
	    long randomNumberCounter = 0;

		for (int i = 1; i <= 5; i++) {
			Random number = new Random();
			int randomNumber = number.nextInt(1000000);
			//int valor = 1000;
			NumberFormat nf = NumberFormat.getCurrencyInstance();
			String valorFormatado = nf.format(randomNumber); 
			
			
			out.write("<table>"
					+"<tr>"
					+"<td> Gasto nº " + i +" </td>"
					+"<td>" + valorFormatado +" </td>"
					+"</tr>"
					+"</table>");
		randomNumberCounter += randomNumber;
		}
		NumberFormat nf = NumberFormat.getCurrencyInstance();
		String valorTotalFormatado = nf.format(randomNumberCounter); 
		out.write("<table>"
				+"<tr>"
				+"<td style='font-weight: bold;'> SOMA: </td>"
				+"<td style='font-weight:bold;'>" + valorTotalFormatado +" </td>"
				+"</tr>"
				+"</table>");
	%>
</body>
</html>