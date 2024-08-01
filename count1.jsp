<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

    	<%
    	request.setCharacterEncoding("UTF-8");
    	String username = (String)session.getAttribute("username");
    	String[] selectedBook = request.getParameterValues("book");
        %>

	<p>这里是结账处，您的姓名以及选择的书籍：</p><br>
	<p>您的姓名： <%= session.getAttribute("username") %>!</p>
    <p>购物车的商品：<%= Arrays.toString(selectedBook)  %></p>
    <p>继续购买书籍：<a href="book.jsp">欢迎去book.jsp</a>
    <p>修改用户信息：<a href="main.jsp">欢迎去main.jsp</a>    


</body>
</html>