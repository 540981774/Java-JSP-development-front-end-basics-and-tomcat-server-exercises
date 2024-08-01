<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="head.html"  %>
<html>
<head>
    <title>three.jsp</title>
</head>
<body>
    <h2>This is three.jsp</h2>
    <p>传递过来的值是 <%= request.getAttribute("userNumber") %></p></body>
</html>
