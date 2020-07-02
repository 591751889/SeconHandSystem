<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="model.User" %>
<!--商品详情页面 -->
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>商品详情-页面</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
 
<!--引入Css样式类库文件-->  
<link rel="stylesheet" href="css/product_detail.css">

</head>
<body>

   <jsp:include page="topbar.jsp"></jsp:include>  
   <div class="Detailspage"> 
		<ul class="goodsphotos">
			
				<div class="bigphoto" ><img id="proLogo" style="width: 400px;height:400px; margin:0 auto;" src="../images/logo-l.png"></div>
				
				<ol class="maintheme">
					<div class="title"><a href="#"><p id="title"></p></a></div>
					<div class="image01"><img src=""></div>
					<div class="describe"><p id="describe"></p></div>
					<div class="price-service">
						<p class="price-discribe">售价</p>
						<p class="price">￥<span id="pro_price"></span></p>
						<div class="service01">
							<p class="service_describe01">卖家</p>
							<p class="service_describe02" id="username"></p>
							<p class="service_describe01">已获评价数(条)</p>
							<p class="service_describe02" id="evaluationCount"></p>
							<p class="service_describe01">好评率</p>
							<p class="service_describe02" id="starPercent"></p>%
						</div>
						<div class="service02">
							<p class="service_describe01">发布时间</p>
							<p class="service_describe02" id="time"></p>
						</div>
						<div class="service02">
							<p class="service_describe01">信息类型</p>
							<p class="service_describe02" id="info_type"></p>
						</div>
						<div class="service02">
							<p class="service_describe01">库存</p>
							<p class="service_describe02" id="hassum" value=""></p>
						</div>
						
					</div>
					
					<div class="amount">
						<p class="count">数量</p>
						<div class="reduce"><img src="../images/jian.jpg" onclick="sub()"  />
						</div>
						<form>	
                        <input class="input" value="1" id="needNum"  onkeyup="value=value.replace(/[^(\d)]/g,'')"></form>
						<div class="add"><img src="../images/jia.jpg" onclick="add()" /></div>

					</div>
					<div class="purchase"><a href="javascript:selflog_show();"><img src="../images/addtocart.png"></a></div>
					<div class="purchase"><a href="product_getCommentList.action?id=${param.id }"><img src="../images/comment.png"></a></div>
				
			</ol>	
			
		</ul>
		
		
		
	</div>
	
</body>
<script type="text/javascript">
$(document).ready(function(){
	loadData();
	});
var id=${param.id};
var hassum;
var username;
function loadData(){
	$.ajax({
		   url: "product_getProductDetail.action",
		   type: "POST",
		   dataType:"json",
		   data:{"id":id},
		   success: function(result){
			   hassum=result.proHassum;
			   username=result.user.userName;
				$.ajax({
					   url: "product_searchEvaluationCount.action",
					   type: "POST",
					   dataType:"json",
					   data:{"username":username},
					   success: function(data){
						   hassum=data.proHassum;
						   $("#evaluationCount").html(data);
					   }
				});
				$.ajax({
					   url: "product_searchEvaluationStar.action",
					   type: "POST",
					   dataType:"json",
					   data:{"username":username},
					   success: function(data){
						   $("#starPercent").html(data);
					   }
				});
		     $("#title").html(result.proName);
		     $("#proLogo").attr("src",'../upload/'+result.proPicture);
		     $("#describe").html(result.proDesc);
		     $("#pro_price").html(result.proPrice);
		     $("#username").html(result.user.userName);
		     $("#time").html(result.createTime);
		     if(result.type==0){
		    	 $("#info_type").html("求购");
			 }else{
				 $("#info_type").html("求售");
				 }
		     
		     $("#hassum").html(hassum);
		     $("#hassum").val(hassum);
		   }
		});
	}
	function selflog_show()
	{ 
		var hassum = parseInt( $("#hassum").val());
		var num = parseInt($("#needNum").val());
		if(num>hassum){
			alert("库存不足!请重试！");
		}else{
		$.ajax({
			url:"product_addToCart.action",
			type: "post",
			data:{"id":id,"num":num},
			success:function(msg){
				alert("添加成功!");
				},
			error:function(msg){
				alert("您尚未登录！");
				setTimeout("linkToLogin();",2000);
				}
			});
		}
	}

	function linkToLogin(){
		window.location.href="user_login.jsp";
		}
	function add(){
	   var num = parseInt($("#needNum").val());
	   if(num<=hassum)
	   {
		   $("#needNum").val(++num);
	   }
	}
	function sub(){
	   var num = parseInt($("#needNum").val());
	   if(num>1)
	   {
	      $("#needNum").val(--num);
	   }
	}

</script>

</html>