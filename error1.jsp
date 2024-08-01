<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

request.setCharacterEncoding("UTE-8");
String name=request.getParameter("name");
String pass=request.getParameter("level");
String link=request.getParameter("link");
out.print("密码"+pass);
out.print("<br>隐藏信息"+link);

%>

</body>
</html>