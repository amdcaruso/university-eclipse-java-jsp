<%@ page language="java" contentType="text/html; text/css; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Random"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Exercicio 01</title>
		<style>
	   	  table{
		  	border:1px solid black;
		  	width: 20%; 
	   	  }
	   	  tr{
		  	border:1px solid black;
		  	width: 10%; 
	   	  }
	   	  td{
		  	border:1px solid black;
		  	width: 10%; 
	   	  }
		 </style>
</head>
<body>
	<%
	     
		Random number = new Random();
		int randomNumber = number.nextInt(10);
		
		out.write("<table>" + "<tr>"
				+ "<td>Tabuada do " + randomNumber + "</td></tr>" 
				+ "</table>");

		for (int i = 1; i <= 10; i++) {

			out.write("<table>" + "<tr>"
					+ "<td>" + randomNumber + " </td>"
					+ "<td> X </td>" + "<td>" + i
					+ "</td>" + "<td> = </td>"
					+ "<td>" + randomNumber * i + "</td>" 
					+ "</table>");
		}
	%>
</body>
</html>