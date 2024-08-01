<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" %>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Date d =new Date();
out.print("当前秒数"+d.getSeconds());
response.setHeader("refresh","3");
/* response.sendRedirect("表单.html"); */
%>

</body>
</html>