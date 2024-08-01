<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>猜数字结果</title>
</head>
<body>

    <h2>猜数字结果</h2>

    <%
        int numberToGuess = (int)session.getAttribute("numberToGuess");
        int count = (int)session.getAttribute("count") + 1;
        long startTime = (long)session.getAttribute("startTime");
        long endTime = System.currentTimeMillis();
        session.setAttribute("endTime", endTime);

        int guess = Integer.parseInt(request.getParameter("guess"));
        session.setAttribute("guess", guess);

        if (guess == numberToGuess) {
    %>
            <p>恭喜你，猜对了！</p>

            <a href="success.jsp">点击这里进入成功页面</a>
    <%
        } else {
            session.setAttribute("count", count);

          if (guess < numberToGuess) {
    %>
                    <p>所猜的数比实际的数小，请再猜：</p>
    <%
                } else {
    %>
                    <p>所猜的数比实际的数大，请再猜：</p>
    <%
                }
        
    %>
                <form action="result.jsp" method="post">
                    <label for="guess">输入一个1～100的整数：</label>
                    <input type="text" id="guess" name="guess" required>
                    <br>
                    <input type="submit" value="猜一猜">
                </form>
    <%
        }    
        
    %>

</body>
</html>
