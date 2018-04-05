<%@ page language="java" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>createtable.jsp</title>
</head>
<body style="color: white; background-color: black;" alink="#000099"
link="#000099" vlink="#990099">
<%
String val = request.getParameter("nameField"); 
out.println("Hello " + val + " here is your table:");
%>

<br>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<%-- <tr>
<td style="vertical-align: top;"><br>
</td>
</tr> --%>
<%int rows = Integer.parseInt(request.getParameter("rowField"));
  int columns = Integer.parseInt(request.getParameter("columnField"));
  if(columns < 1)
  {
	response.sendRedirect("classexercise.jsp?error=Hello, PLEASE PROVIDE A COLUMN VALUE >= 1");  
  }
  else if(rows < 1)
  {
	  response.sendRedirect("classexercise.jsp?error=Hello, PLEASE PROVIDE A ROW VALUE >= 1");
  }
  
  
   for (int i =1; i<rows + 1; i++)
   {
	   out.println("<tr>");
   for (int j = 1; j<columns + 1; j++)
   {
	   out.println("<td>" + i + " , " + j + "</td>");
   }
   out.println("</tr>");
   }
   %>
</tbody>
</table>
<br>
<br>
</body>
</html>