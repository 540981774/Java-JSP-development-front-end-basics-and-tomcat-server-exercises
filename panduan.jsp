<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>表单验证</title>
    <link rel="stylesheet" type="text/css" >
</head>
<body>

<%
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    String confirmPassword = request.getParameter("confirmPassword");
    String sex = request.getParameter("sex");

    String nameError = "";
    String passwordError = "";
    String confirmPasswordError = "";
    String sexError = "";

    if (name == null || name.trim().equals("")) {
        nameError = "姓名不能为空";
    }

    if (password == null || password.trim().equals("")) {
        passwordError = "密码不能为空";
    }

    if (confirmPassword == null || confirmPassword.trim().equals("")) {
        confirmPasswordError = "重复密码不能为空";
    }

    if (!password.equals(confirmPassword)) {
        confirmPasswordError = "密码和重复密码必须相同";
    }

    if (sex == null) {
        sexError = "请选择性别";
    }

    int passwordLength = password.length();
    if (passwordLength < 6 || passwordLength > 12) {
        passwordError = "密码长度必须在6到12位之间";
    }

    // 功能3：密码中必须包含数字、字母和中文
    boolean containsDigit = false;
    boolean containsLetter = false;
    boolean containsChinese = false;

    for (int i = 0; i < password.length(); i++) {
        char c = password.charAt(i);
        if (Character.isDigit(c)) {
            containsDigit = true;
        } else if (Character.isLetter(c)) {
            containsLetter = true;
        } else if (Character.UnicodeBlock.of(c) == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS) {
            containsChinese = true;
        }
    }

    if (!containsDigit || !containsLetter || !containsChinese) {
        passwordError = "密码必须包含数字、字母和中文";
    }
%>

<form action="processForm.jsp" method="post">
    <label for="name">姓名：</label>
    <input type="text" id="name" name="name" value="<%= name %>">
    <span class="error"><%= nameError %></span><br>

    <label for="password">密码：</label>
    <input type="password" id="password" name="password" value="<%= password %>">
    <span class="error"><%= passwordError %></span><br>

    <label for="confirmPassword">重复密码：</label>
    <input type="password" id="confirmPassword" name="confirmPassword" value="<%= confirmPassword %>">
    <span class="error"><%= confirmPasswordError %></span><br>

    <label>性别：</label>
    <input type="radio" id="male" name="sex" value="male" <%= "male".equals(sex) ? "checked" : "" %>>男
    <input type="radio" id="female" name="sex" value="female" <%= "female".equals(sex) ? "checked" : "" %>>女
    <span class="error"><%= sexError %></span><br>

    <input type="submit" value="提交">
</form>

</body>
</html>
