<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Random"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Exerc�cio 04</title>
<style>
table{
 border: 1px solid black;
 width: 50%;
}
tr{
 border: 1px solid black;
 width: 10%;
}
td{
 border: 1px solid black;
 width: 10%;
}
</style>
</head>
<body>
	<%

		out.write("<table>"
				+"<tr>"
				+"<td colspan ='2' style='font-weight:bold; text-align:center;'>TRIGONOMETRIA "
				+"</td></tr>"
				+"</table>");

			Random number = new Random();
			double angle = number.nextInt(360);
			double seno = Math.sin(angle);
			double cosseno = Math.cos(angle);
			double tangente = Math.tan(angle);
			
			out.write("<table>"
					+"<tr>"
					+"<td> Angulo</td>"
					+"<td> " + angle  +" </td>"
					+"</tr>"
					+"<tr>"
				    +"<td> Seno</td>"
					+"<td> " + seno  +" </td>"
					+"</tr>"
					+"<tr>"
				    +"<td> Cosseno</td>"
					+"<td> " + cosseno  +" </td>"
					+"</tr>"
					+"<tr>"
					+"<td> Tangente</td>"
					+"<td> " + tangente  +" </td>"
					+"</tr>"
					+"</table>");
	
	%>
</body>
</html>