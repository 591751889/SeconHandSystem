<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="css/comment.css">
<link rel="stylesheet" type="text/css" href="css/dialog.css">
<script type="text/javascript" src="js/dialog.js"></script>
<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
<script type="text/javascript" src="js/dialog-plus.js"></script>
<link href="css/order_my.css" rel="stylesheet" type="text/css" />
<title>评论页</title>
</head>
<body>
 <ul>
   <div id="nav">
     <span>您的位置： </span>
     <span style="color:#16a085">评价发布</span>
  </div> 
 	<td style="text-align: center">请为本次购物打分</td>
	<li class="feed" style="margin: 0 auto;padding-top:30px;text-align: center"> 
		<div class="box1"> 
		<s:form action="product_addEvaluation"  method="post" onsubmit="alert('评价成功！')">
			<input type="hidden" name="username" value="${param.creatorName}" id="username"/>
 			<input type="hidden" name="Oid" value="${param.id}" id="Oid"/>
 			<input type="hidden" name="Oid" value="${param.uid}" id="Oid"/>
			<input type="radio" name="star" id="good" value="2">好评
			<input type="radio" name="star" id="normal" value="1" >中评
			<input type="radio" name="star" id="bad" value="0">差评
			<div style="margin:0 auto;"><button type="submit" style="width:50px;height:25px;">确定</button></div>
		</s:form>
	  </div>
		<div class="clear"> </div>
	</li>
 
 </ul> 
 </body> 
<script type="text/javascript">
</script>
</html>