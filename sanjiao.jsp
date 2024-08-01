<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Triangle Result</title>
</head>
<body>

<%
    // 获取用户输入的边长
    int side1 = Integer.parseInt(request.getParameter("side1"));
    int side2 = Integer.parseInt(request.getParameter("side2"));
    int side3 = Integer.parseInt(request.getParameter("side3"));

    // 检查是否构成三角形
    boolean isTriangle = (side1 + side2 > side3) && (side2 + side3 > side1) && (side3 + side1 > side2);

    // 显示结果
    if (isTriangle) {
        out.println("<h1>这三条边可以构成一个三角形！</h1>");
    } else {
        out.println("<h1>这三条边不能构成一个三角形。</h1>");
    }

%>

</body>
</html>
