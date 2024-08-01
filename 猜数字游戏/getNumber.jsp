<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>猜数字游戏</title>
</head>
<body>

    <h2>猜数字游戏</h2>

    <% 
        int number = (int)(Math.random() * 100) + 1; // 产生随机数
        session.setAttribute("number", number);
        session.setAttribute("count", 0);
        session.setAttribute("startTime", System.currentTimeMillis());
    %>

    <form action="result.jsp" method="post">
        <label for="guess">输入一个1～100的整数：</label>
        <input type="text" id="guess" name="guess" required>
        <br>
        <input type="submit" value="猜一猜">
    </form>

</body>
</html>
