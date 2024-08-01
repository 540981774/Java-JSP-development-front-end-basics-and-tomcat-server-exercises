<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <form action="example3_3_5.jsp" method="post">
        <label for="examNumber">考号：</label>
        <input type="text" name="examNumber" required>
        <br>
        
        <p><span>一、单项选择题（每题2分）</span><br><br>
        <span>1.下列哪个方法是获取session中关键字是key的对象（）</span>
        <br>
        	<input type="radio"  name="answer1"  id="nan" value="A">
			<label for="nan">A.public void setAttribute(String key, object obj)</label>
		<br>
    		<input type="radio"  name="answer1" value="B">
			<label for="nv">B.public void removeAttribute(String key)</label>
		<br>
    		<input type="radio"  name="answer1"  value="C">
			<label for="nv">C.public Enumeration getAttributeNames()</label>
		<br>
    		<input type="radio"  name="answer1"  value="D">
			<label for="nv">D.public Object getAttribute(String key)</label>
		<br> <br>	
		
		<span>二、判断题（每题2分）</span>
        <br> <br>
        <span>1.同一客户在多个Web服务目录中，所对应的session对象是互不相同的。</span>
        <br>
        	<input type="radio"  name="answer2" value="True" >
			<label for="nan">True</label>
			<input type="radio"  name="answer2" value="False" >
			<label for="nan">False</label>
		</p>
        

        <input type="submit" value="提交">
        <input  type="reset"  value="重置">
    </form>
</body>
</html>