<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图书列表</title>
</head>
<body>
<jsp:useBean id="Cn" class="sql.Conn" scope="page"></jsp:useBean>
<jsp:useBean id="Rs" class="sql.Select" scope="page"></jsp:useBean>
<% 
String url = "jdbc:mysql://127.0.0.1:3306/main";
String dbname = "root";
String dbpass = "2772319694"; // 这应该是配置或环境变量中的值，不应直接写在代码中
Cn.setConn(url, dbname, dbpass); // 完成数据库连接
String sql = "SELECT name, price FROM books WHERE price"; // 假设您的表叫books
ResultSet rs = null;
try {
    rs = Rs.executeQuery(Cn.getConn(), sql);
    while (rs != null && rs.next()) {
        out.print(rs.getString("name")); // 确保列名与数据库中的大小写匹配
        out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
        out.print(rs.getFloat("price"));
        out.print("<br>");
    }
} catch(SQLException e) {
    out.println("数据库查询错误: " + e.getMessage());
} finally {
    if (rs != null) {
        try { rs.close(); } catch(Exception e) { /* ignored */ }
    }
    // 如果您在Conn类中有关闭连接的方法，也应该在这里调用
}
%>
</body>
</html>