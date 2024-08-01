<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
<%//定界符（脚本文件，放在定界符里）

//定义输出
int count;
count=Integer.parseInt(request.getParameter("count"));

float money;
money=Float.parseFloat(request.getParameter("no"));

float sum;
//数据计算
sum=count*money;
//显示输出
out.println("加油量="+count+"<br>");
out.println("单价="+money+"<br>");
out.println("金额="+sum+"<br>");

%>

</body>
</html>