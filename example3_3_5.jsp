<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h2>答题结果：</h2>

    <%-- 获取用户的答案 --%>
    <%	
    	String examNumber = request.getParameter("examNumber");
        String answer1 = request.getParameter("answer1");
        String answer2 = request.getParameter("answer2");
    %>

    <p>问题1的答案： <%= answer1 %></p>
    <p>问题2的答案： <%= answer2 %></p>
    
    <form action="example3_3_6.jsp" method="post">
        <input type="submit" value="确认答案">
    </form>
    
    <br>
    <a href="example3_3_4.jsp">重新填题</a>
      
    <% 
 
    	session.setAttribute("examNumber", examNumber);
    	session.setAttribute("examanswer1", answer1);
    	session.setAttribute("examanswer2", answer2);
    	
    
    %>

    <br>
    <a href="example3_3_4.jsp">返回</a>
</body>
</html>