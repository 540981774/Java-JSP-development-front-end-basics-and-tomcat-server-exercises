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
        
        String examNumber = session.getAttribute("examNumber").toString();
        String answer1 = session.getAttribute("examanswer1").toString();
        String answer2 = session.getAttribute("examanswer2").toString();
%>

<%
        int score = 0;

        // 简单的计分逻辑，可以根据实际需求修改
        if ("A".equals(answer1)) {
            score += 2;
        }

        if ("True".equals(answer2)) {
            score += 2;
        }
    %>

    <h2>考试成绩：</h2>
    <p>考号： <%= examNumber %> </p>
    <p>你的成绩是： <%= score %> 分</p>
    <br>
    <a href="example3_3_4.jsp">返回</a>
  

</body>
</html>