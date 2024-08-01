<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>在此处插入标题</title>
</head>
<body>
接收表单的输入内容<p></p>
<% 
String name_j;//接受文本框name的值
String grade_j;//接受文本框grade的值
String level_j;//接受文本框level的值

//接受的数据是包含中文，必须统一编码，放在接受表单值之前
request.setCharacterEncoding("UTF-8");

//接受语句，按照表单名称，接受表单值
name_j=request.getParameter("name");//接受语法
grade_j=request.getParameter("grade");//接受语法
level_j=request.getParameter("level");//接受语法

//添加一个判断，如果接受的是null空，给一个提示，否则接受的结果
if(name_j == null)//接受的name_j是null
	out.println("接受的结果是null，请返回输入ex6.html"); //如果条件是真，表示为null，执行提示
else
{//如果为假，不是null，则显示：输出的结果
out.println("姓名："+name_j+"<p>");
out.println("成绩："+grade_j+"<p>");
out.println("等级："+level_j+"<p>");

//判断：用户名是否正确“Tom”，如果正确：登录成功；如果错误：显示失败
if(name_j.equals("Tom"))//字符串.equals("值")等同"值".equals(字符串)
		out.println("登陆成功");//如果正确：登录成功
else
	out.println("登录失败");//如果错误：显示失败
	
	//成绩*0.6，占%0.6
	double grade_d=Double.parseDouble(grade_j);//把字符串String 转换为double
	if(grade_d>=90 && grade_d<100){
		level_j="A";
	}else if(grade_d>=80 && grade_d<90){
		level_j="B";
	}else if(grade_d>=70 && grade_d<80){
		level_j="C";
	}else if(grade_d>=60 && grade_d<70){
		level_j="D";
	}else{
		level_j="E";
	}
	out.println("输出接受的结果，成绩"+grade_d);
	out.println("等级"+level_j+"<p>");
	 
}
%>
</body>
</html>