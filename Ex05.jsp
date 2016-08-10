<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Random"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Exercicio 05</title>
<style>
table{
 border: 1px solid black;
 width: 90%;
 font-weight: bold;
}
td{
 border: 1px solid black;
 width: 10%;
}
th{
 border: 1px solid black;
 width: 10%;
}
.tdA{
text-align: center;
}
</style>
</head>

<body>
<% 

out.write("<table>"
		+"<tr><td class='tdA' colspan = '6'>CÓDIGOS HEXADECIMAIS DAS CORES</td></tr>"
		+ "<tr>"
		+ "<td > Código </td>"
		+ "<td > Cor </td>"
		+ "<td > Código  </td>"
		+ "<td > Cor </td>"
		+ "<td > Código  </td>"
	    + "<td > Cor </td>"							
		+ "</tr>"
		+ "</table>");

		Random number = new Random();
		
		String table = "";
		
		for( int i = 0; i < 10; i++){ 
			table += "<tr>";
			for( int k = 0; k < 3;k++){
				int color = number.nextInt( 16777215 );
				String result = Integer.toHexString(color);
				table += "<td>" + result.toUpperCase()  +"</td>"
					+ "<td style='background-color: #" + result +" ;'></td>";
			}
			table += "</tr>";
		}
	out.write("<table>" 
			+ table
			+ "</table>");

%>

</body>
</html>