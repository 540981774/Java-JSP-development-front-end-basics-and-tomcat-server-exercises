<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>成功页面</title>
</head>
<body>
	<h2>恭喜你，猜对了！</h2>


    <%
        int count = (int)session.getAttribute("count");
        long startTime = (long)session.getAttribute("startTime");
        long endTime = (long)session.getAttribute("endTime");
        int numberToGuess = (int)session.getAttribute("numberToGuess");
    %>

    <p>您共猜了 <%= count %> 次</p>
    <p>用时<%= (endTime - startTime) / 1000 %>秒。</p>
    <p>这个数字就是 <%= numberToGuess %></p>

</body>
</html>
