<%@ page language="java"%>
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>classexercise.jsp</title>
</head>
<body>
<%
String error = request.getParameter("error");
if(error != null)
{
	out.println(error);
}
%>
<br>
<form method="get" action="createtable.jsp">
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">Enter your&nbsp; name<br>
</td>
<td style="vertical-align: top;"><input name="nameField"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Enter number of rows<br>
</td>
<td style="vertical-align: top;"><input name="rowField" value="1"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Enter number of columns<br>
</td>
<td style="vertical-align: top;"><input name="columnField"
value="1"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">
 <input name="submitField"
type="submit"><br>

</td>
<td style="vertical-align: top;"><input name="resetField"
type="reset"><br>
</td>
</tr>
</tbody>
</table>
</form>
</body>
</html>
