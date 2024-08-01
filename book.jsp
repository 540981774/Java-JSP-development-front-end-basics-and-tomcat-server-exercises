<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%	request.setCharacterEncoding("UTF-8");
 	String username = request.getParameter("username");
 if(username != null && username.length()>0){
 	session.setAttribute("username", username);
 	}
   	
 %>
<form action="count1.jsp" method="post">
		<p><span>请选择您要购买的书籍：</span></p>
		<input type="checkbox" name="book" value="Java教程"  id="Java" >
        <label for="Java">Java教程</label>
        <input type="checkbox" name="book"  value="数据库原理" id="shujuku">
        <label for="shujuku">数据库原理</label>
        <input type="checkbox" name="book"  value="操作系统" id="caozuoxitong">
        <label for="caozuoxitong">操作系统</label>
		<input type="checkbox" name="book"  value="C语言教程" id="Cyuyanjiaocheng">
		<label for="Cyuyanjiaocheng">C语言教程</label>
        <br>
        <input type="submit" value="提交">
</form>
        <p>去结账：<a href="count1.jsp">欢迎去count1.jsp</a>
        
    	


</body>
</html>