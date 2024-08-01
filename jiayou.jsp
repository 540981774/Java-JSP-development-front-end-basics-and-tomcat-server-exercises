<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>加油站 - 处理页面</title>
      <style type="text/css">
     div{border-radius:20px;
	border:2px solid #3FF;
	width:500px;
	height:400px;
	margin:auto;}
	h2{border: none;
		border-top:2px solid #000;
		text-align: center;}
	.w{border: none;
	text-align: center;
	}
	.x{text-align: center;
		margin: 100px auto;}
	strong{
	display: inline-block;
          margin-left: 20px;
          margin-top:10px;
	}
     
     </style>
</head>
<body>
<div>
    <h2>加油站 - 处理页面</h2>
<%
        String gasoline = request.getParameter("gasoline");
        String quantity = request.getParameter("quantity");
        String price="";
%>        
<p class="w"><%
        double quantity_price=Double.parseDouble(quantity);
        if("92".equals(gasoline)){
            quantity_price=quantity_price*7.31;
        }else if("95".equals(gasoline)){
            quantity_price=quantity_price*7.79;
        }else if("98".equals(gasoline)){
        	quantity_price=quantity_price*8.77;
        }else{
        	 out.println("<p style='color: red;'>未选择有效的汽油类型。</p>");
        }
       
%>
</p>
  <p><strong>汽油类型：</strong> <%= gasoline %>号</p>
  <p><strong>加油量为：</strong> <%= quantity%>升</p>
  <p><strong>支付金额：</strong> <%= quantity_price %></p>

    <p class="x"><a href="jiayou.html">返回首页</a></p>
    </div>
</body>
</html>
