<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="head.html" %>
<html>
<head>
    <title>two.jsp</title>
</head>
<body>
<%

    String numberString = request.getParameter("number");

        int number = Integer.parseInt(numberString);
        
        request.setAttribute("userNumber",number);
        

        if (number > 50 && number <= 100) {%>
        	<jsp:forward page='two.jsp'></jsp:forward> 
        <% } else if (number > 0 && number <= 50) {%>
        	<jsp:forward page='three.jsp'></jsp:forward> 
        <%} else {%>
        	<jsp:forward page='error.jsp'></jsp:forward> ;
        <%}
 
%>
</body>
</html>