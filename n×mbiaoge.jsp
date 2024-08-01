<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Created Table</title>
</head>
<body>

<%
    // 获取请求参数
    int hang = Integer.parseInt(request.getParameter("count"));
    int lie = Integer.parseInt(request.getParameter("num"));
%>

<h2>创建的表格：</h2>

<table border="1">
    <%
        // 创建表格
        for (int i = 0; i < hang; i++) {
            out.println("<tr>");
            for (int j = 0; j < lie; j++) {
            	if (j % 2 == 0){
            		out.println("<td bgcolor = '#009900'>行 " + (i + 1) + " 列 " + (j + 1) + "</td>");
            	}else{
            		out.println("<td bacolor = '#109900'>行 " + (i + 1) + " 列 " + (j + 1) + "</td>");
            	}
                
            }
            out.println("</tr>");
        }
    %>
</table>

</body>
</html>
