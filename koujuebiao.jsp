<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Multiplication Table</title>
</head>
<body>

<h2>乘法口诀表：</h2>

<table border="1">
    <%
    
    int hang = Integer.parseInt(request.getParameter("count"));
    
    int lie = Integer.parseInt(request.getParameter("num"));
    
    
    for (int i = 1; i <= hang; i++) {
            out.println("<tr>");
            for (int j = 1; j <= lie; j++) {
                out.println("<td>" + i + " × " + j + " = " + (i * j) + "</td>");
            }
            out.println("</tr>");
        }
    %>
</table>

</body>
</html>
