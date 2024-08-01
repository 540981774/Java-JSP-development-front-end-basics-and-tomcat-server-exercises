<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>Insert title here</title>



</head>
<body>

<%
String name=session.getAttribute("s_name").toString();
String pass=session.getAttribute("s_pass")+"";
out.print("用户"+name+"欢迎来购物<p>");
out.print("图书<p>音像");
%>

</body>
</html>