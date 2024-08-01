<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form>
<p></p>
</form>
<%
request.setCharacterEncoding("UTE-8");
String name,pass;

if(request.getParameter("btn")!=null)
{
	name=request.getParameter("name");
	pass=request.getParameter("level");
	if(name.equals("tom") && pass.equals("123456"))
	{%>
		session.setAttribute("s_name",name);
		session.setAttribute("s_pass",pass);
		 
		response.sendRedirect("succ.html");
	<%}
	else
	{%>
	<jsp:forward page="error.jsp">
		<jsp:param value="forword功能" name="link"/>
	</jsp:forward >
	<%}
}
%>

</body>
</html>