<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
String username = (String)session.getAttribute("username");
String fill = "";
String href = "";
String display = "";
String display1 = "";
String display2 = "";
String category = "";
String cate = (String)request.getAttribute("category");
if(cate.equals("0")){category = "分享";}else if(cate.equals("1")){category = "新闻";}else if(cate.equals("2")){category = "笔记";}else if(cate.equals("3")){category = "展示";}else if(cate.equals("4")){category = "大事件";}
if(username == null){
	username = "请登录";
	href = "/ssm/login.jsp";
	display="display:none";
	}
else{
	href="javascript:;";
	fill = "<dl class='layui-nav-child'><dd><a href='account'>账号信息</a></dd><dd><a id='logout' href='javascript:;'>退出</a></dd></dl>";
}
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="renderer" content="webkit">
  	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  	<meta name="apple-mobile-web-app-status-bar-style" content="black"> 
  	<meta name="apple-mobile-web-app-capable" content="yes">
  	<meta name="format-detection" content="telephone=no">
    <title>${title}</title>
	<base href=" <%=basePath%>">
	<link rel="stylesheet" href="lib/layui/css/layui.css">
	<link rel="stylesheet" href="css/common.css">
	<link rel="stylesheet" href="css/detail.css">
</head>
<body>
	<header class="layui-bg-cyan">
		<nav class="layui-container">
<ul class="layui-nav layui-bg-cyan">
 			    	    <li style="margin-left:-20px" class="layui-nav-item">
					    	<a href="frontend">BLOG</a>
					  	</li>
					  	<li style="<%=display%>"class="layui-nav-item layui-this">
					    	<a href="userweb">个人主页</a>
					  	</li>
					  	<li class="layui-nav-item"><a href="javascript:;">分类</a>
					  	<dl class="layui-nav-child">
					  		<dd><a href="cate?category=0">分享</a></dd>
					  	<dd><a href="cate?category=1">新闻</a></dd>
					  	<dd><a href="cate?category=2">笔记</a></dd>
					  	<dd><a href="cate?category=3">展示</a></dd>
					  	<dd><a href="cate?category=4">大事件</a></dd>
					  	</dl>
					  	</li>
  <li style="float:right;margin-right:-20px" class="layui-nav-item">
    <a href="<%=href%>"><img src="images/default.jpg" class="layui-nav-img"><%=username%></a>
<%=fill%>
  </li>
</ul>
		</nav>
	</header>
	<div class="layui-container">
		<div class="layui-row layui-col-space20">
			<div class="layui-col-md8">
				<div class="layui-row">
					<div class="layui-col-md12">
						<c:forEach items="${cs}" var="c" varStatus="st"> 
						<div class="main">
							<div class="title">
								<p>${c.title}</p>
								<div class="layui-row stat">
									<div class="layui-col-md3 layui-col-xs12">发布时间：<em>${c.date}</em></div>
									<div class="layui-col-md2 layui-col-xs6">分类：<a><%=category%></a></div>
									<div class="layui-col-md2 layui-col-xs6">作者：<a>${c.username}</a></div>
									<div class="layui-col-md5 layui-col-xs12">
										<div class="layui-row">
											<div class="layui-col-md6 layui-col-xs6">
												<i class="layui-icon layui-icon-reply-fill"></i>
												<em>0条评论</em>
											</div>
											<div class="layui-col-md6 layui-col-xs6">
												<i class="layui-icon layui-icon-read"></i>
												<em>${c.views}</em>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="content">
							 ${c.content}
							</div>
							<div class="copyright">
								<p>转载声明：本站文章若无特别说明，皆为转载</p>
							</div>
							<div class="Label">
								<i class="layui-icon layui-icon-note"></i>
							</div>
						</div>
						</c:forEach>
						
						
					</div>
					<div class="layui-col-md12 margin20"></div>
					<div class="layui-col-md12"><div style="border-radius:25px" class="layui-card"><div class="layui-card-body title"><p>评论</p></div></div></div>
					<div class="layui-col-md12 margin20"></div>
					<div class="layui-col-md12"><div class="layui-card"><textarea id="demo" style="display: none;"></textarea></div></div>
					<div class="layui-col-md12 margin20"></div>
					<div style="width:100px;margin: 0 auto;" ><button style="  text-align: center;" class="layui-btn">发表评论</button></div>
					
					
					<div class="layui-col-md12 margin20"></div>
				</div>
	        </div>


	        <div class="layui-col-md4">
				<div class="layui-row">
					<div class="layui-col-md12">
						<div style="border-radius: 25px;" class="layui-card">
						  	<div class="layui-card-header">
								<span class="layui-breadcrumb" lay-separator="|">
									<a href="javascript:;">站点统计</a>
									<a href="javascript:;">联系站长</a>
								</span>
						  	</div>
						  	<div class="layui-card-body" id="stat">
						  		<table class="layui-table">
								  	<colgroup>
								    	<col width="120">
								    	<col width="230">
								  	</colgroup>
								  	<tbody>
								    	<tr>
								      		<td>运行时间：</td>
								      		<td>30 天</td>
								    	</tr>
								    	<tr>
								      		<td>发表文章：</td>
								      		<td>${articlecount} 篇</td>
								    	</tr>
								    	<tr>
								      		<td>注册用户：</td>
								      		<td>${usercount} 人</td>
								    	</tr>
								  	</tbody>
								</table>
						  	</div>		
						</div>
					</div>
					<div class="layui-col-md12 margin20"></div>
					<div class="layui-col-md12">
						<div style="border-radius: 25px;" class="layui-card">
						  	<div class="layui-card-header">
								<span>
									热门文章
								</span>
						  	</div>
						  	<div class="layui-card-body">
								<table class="layui-table" lay-skin="nob">
								  	<tbody>
								    	<tr><td><a href="javascript:;">用layui做一个独立博客网站（响应式模板）</a></td></tr>
								  	</tbody>
								</table>
						  	</div>
						</div>
					</div>
				</div>
	        </div>
		</div>
	</div>
</body>
<script src="lib/layui/layui.all.js"></script>
<script> 
layui.use([ 'layedit','form', 'layer' ], function() {
	$ = layui.jquery;
	var layer = layui.layer;
	layui.carousel.render({
	    elem: '#carousel'
	    ,width: '100%' //设置容器宽度
	    ,arrow: 'always' //始终显示箭头
	    //,anim: 'updown' //切换动画方式
  	});
  	layui.laypage.render({
	    elem: 'pages' //注意，这里的 test1 是 ID，不用加 # 号
	    ,count: 123 //数据总数，从服务端得到
  	});
  	 var layedit = layui.layedit;
  	layedit.build('demo', {
  	  tool: ['strong','italic','underline','left', 'center', 'right','link','unlink', '|', 'face'],height: 150
  	});      
  	$( "#logout" ).click(function() {
  	  layer.confirm("确定退出吗", {
			    yes:function(){
					$.ajax({
						type : "POST",
						contentType : "application/json",
						url : "/ssm/logout",
						data : "",
						dataType : "json",
						success : function(data) {
							var obj = JSON.parse(data);
							if (obj.result == "success") {	
								window.location.reload();
							} else if (obj.result == "fail") {
								layer.alert("error-debug1")
							}
						},
						error : function(e) {
							layer.alert("error-debug2");
							window.location.href = "/ssm/frontend";
						}
					});
			    }
			});
  	  
  	});
});</script>
</html>