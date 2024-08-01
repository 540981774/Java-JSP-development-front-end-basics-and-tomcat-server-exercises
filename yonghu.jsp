<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Arrays" %>

<!DOCTYPE html>





<html>
<head>
    <meta charset="utf-8">
    <title>表单处理结果</title>
    <style type="text/css">
        /* 样式可以保持不变，或根据需要进行修改 */
        div{border-radius:20px;
            border:2px solid #3FF;
            width:500px;
            margin:auto;}
        h3{height: 40px;
            padding-left: 15px;
            border-top-left-radius:20px;
            border-top-right-radius:20px;
            background:linear-gradient(#0FC,#0CF);
            margin:0px 0px;
        }
        fieldset{border: none;
            border-top:2px solid #000;}
        .w{text-align: center;
            margin: 20px auto;}
    </style>
</head>
<body>
<div>
    <h3>用户信息</h3>
    <%-- 获取表单参数 --%>
    <%
        String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String passwordError = "";

        
        if (name == null || name.trim().equals("")) {
        	out.print("姓名不能为空"+"<br>") ;
        }else{
        	out.print("姓名："+name +"<br>");
        }

        if (password == null || password.trim().equals("")) {
        	out.print("密码不能为空"+"<br>") ;
        }

        if (confirmPassword == null || confirmPassword.trim().equals("")) {
        	out.print("重复密码不能为空"+"<br>");
        }

        if (!password.equals(confirmPassword)) {
            out.print("密码和重复密码必须相同"+"<br>");
        }

        if (gender == null) {
        	out.print("请选择性别"+"<br>");
        }else{
        	out.print("性别:"+gender+"<br>");
        }
        
        int passwordLength = password.length();
        if (passwordLength < 6 || passwordLength > 12) {
            out.append("密码长度必须在6到12位之间"+"<br>");
        }
        
        boolean password1 = false;
        boolean password2 = false;
        boolean password3 = false;


        for (int i = 0; i < password.length(); i++) {
            char c = password.charAt(i);
            if (Character.isDigit(c)) {
            	password1 = true;
            } else if (Character.isLetter(c)) {
            	password2 = true;
            } else if (Character.UnicodeBlock.of(c) == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS) {
            	password3 = true;
            }
        }

        if (!password1 || !password2 || !password3) {
        	passwordError = "密码必须包含数字、字母和中文";
        }
        
       


        
        
        
     %>
     




</div>
</body>
</html>
