<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Main Page</title>
</head>
<body>

    <h2>修改用户</h2>
    
<form action="book.jsp">
    <p>Welcome, <%= session.getAttribute("username") %>!</p>
    <input type="text" name="username">
    <input type="submit" value="修改">

</form>
    <p><a href="login1.jsp">返回用户信息</a></p>

</body>
</html>
