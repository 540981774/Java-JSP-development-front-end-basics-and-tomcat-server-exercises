  <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
div{border-radius:20px;
	border:2px solid rgb(255, 128, 192);
	width:500px;
	margin:auto;
	margin-bottom: 8px;}
h3{height: 40px;
	text-align: center;
	padding-left: 15px;
	border-top-left-radius:20px;
	border-top-right-radius:20px;
	background:linear-gradient(rgb(255, 128, 192),rgb(255, 255, 255));
	margin:0px 0px;
}
</style>
</head>
<body>
<div>
    <h3>显示注册信息</h3>

    <%-- 获取表单参数 --%>
    
   <% 
   request.setCharacterEncoding("UTF-8"); 
   
   %> 
    
  
  
    
    <%
        String name = request.getParameter("username");
        String gender = request.getParameter("gender");
        String password = request.getParameter("password");
        String[] interests = request.getParameterValues("xingge");
        String registrationDate = request.getParameter("registrationDate");
        String district = request.getParameter("district");
        String details = request.getParameter("details");
     
     %>
    
    
    

    <%-- 显示用户信息 --%>
<%	if(name==null) 
		out.print("请输入用户名");
	else{
		if(name.equals(""))
			out.print("不能输入空+<br>");
		else
			out.print("用户名:"+name+"<br>");
	}
%>
<%
int x;
x =password.length();
if(5<=x && x<0){
	out.print("密码长度超过了"+"<br>");
}else{
	out.print("正好"+"<br>");
}
%>

<% if(password !=null && !password.isEmpty()){
	for(char c:password.toCharArray()){
		if(Character.isDigit(c)){
			out.print("密码包含数字："+c+"<br>");
		}
	}
}else{
	out.print("密码为空");

}
%>


<%int password1 = Integer.parseInt(password);
	if(0x4e00<= password1 && password1 <=0x9fa5)
	out.print("password="+password1+"是中文");
	else
		out.print("password="+password1+"不是中文");
%>

    <p><strong>性别:</strong> <%= gender %></p>
    <p><strong>性格:</strong> <%= Arrays.toString(interests) %></p>
    <p><strong>生日:</strong> <%= registrationDate %></p>
    <p><strong>教育程度:</strong> <%= district %></p>
    <p><strong>详细信息:</strong> <%= details %></p>


</div>
</body>
</html>
