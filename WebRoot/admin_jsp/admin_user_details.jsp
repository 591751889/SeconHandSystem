<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>后台用户管理详情</title>
	<link rel="stylesheet" href="css/reset.css" />
	<link rel="stylesheet" href="css/public.css" />
	<link rel="stylesheet" href="css/content.css" />
</head>
<body marginwidth="0" marginheight="0">
	<div class="container">
		<div class="public-nav">您当前的位置：<a href="admin_main.jsp" target="content">管理首页</a>><a href="">用户管理</a></div>
		<div class="public-content">
			<div class="public-content-header">
				<h3>用户详情信息
				<span><a href="javascript:history.back(-1);" class="buttom_style" >返回</a></span>
				</h3>
			</div>
			<div class="public-content-cont">
			<form action="updateUserDetail.action?" method="post" style="margin:0 auto;width:50%">
				<input type="hidden" name="uid" value="${param.uid}" id="uid"/>
				<div class="form-group">
					<label for="">用户名：</label>
					<input class="form-input-txt" type="text" name="username" value='<s:property value="#user.userName"/>' />
				</div>
				<div class="form-group">
					<label for="">密码：</label>
					<input class="form-input-txt" type="password" name="password" value='<s:property value="#user.password"/>' />
				</div>
				<div class="form-group">
					<label for="">班级：</label>
					<input class="form-input-txt" type="text" name="schoolclass" value='<s:property value="#user.schoolClass"/>'  />
				</div>
				<input type="hidden" name="sex" value='<s:property value="#user.sex"/>' id="sex"/>
				<div class="form-group">
					<label for="">性别：</label>
					<s:if test="#user.sex==0">
						<input class="form-input-txt" type="text" name="" value="男"  />
					</s:if>
					<s:elseif test="#user.sex==1">
						<input class="form-input-txt" type="text" name="" value="女"  />
					</s:elseif>
					
				</div>
				<div class="form-group">
					<label for="">电话：</label>
					<input class="form-input-txt" type="text" name="phone" value='<s:property value="#user.phone"/>' />
				</div>
				<div class="form-group">
					<label for="">地址：</label>
					<textarea class="form-input-textara" type="text" name="address"><s:property value="#user.address"/></textarea>
				</div>
				<div class="form-group">
					<label for="">问题：</label>
					<textarea class="form-input-textara" type="text" name="qusetion" ><s:property value="#user.qusetion"/></textarea>
				</div>
				<div class="form-group">
					<label for="">答案：</label>
					<textarea class="form-input-textara" type="text" name="answer" ><s:property value="#user.answer"/></textarea>
				</div>
				<input type="submit" class="sub-btn" value="提  交" />
				</form>
			</div>
		</div>
	</div>


</body>
<script type="text/javascript">
</script>
</html>