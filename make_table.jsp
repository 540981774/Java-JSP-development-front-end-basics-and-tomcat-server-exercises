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
<%
int count=Integer.parseInt(request.getParameter("count"));
int num=Integer.parseInt(request.getParameter("num"));

out.print("表格的行数="+count);
out.print("表格的列数="+num);

out.print("<table width='40%' border='1'  align='center'>");

for(int i=1;i<=count;i=i+1)
{
	out.print("<tr></tr>");
	for(int j=2;j<=num;j=j+2)
	{
		out.print("<td width='10px'>单元格</td><td width='10px'>单元格</td>");
	}
}


out.print("</table>");
%>

</body>
</html>