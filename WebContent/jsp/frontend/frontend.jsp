<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String username = (String) session.getAttribute("username");
	String url = (String) session.getAttribute("url");
	System.out.println(url);
	if (url == null) {
		url = "images/default.jpg";
	} else {
		url = "images/avatar/" + url;
	}
	String curr = request.getAttribute("current").toString();
	int current = Integer.parseInt(curr);
	int pages = (int) request.getAttribute("pages");
	String fill = "";
	String href = "";
	String display = "";
	String display1 = "";
	String display2 = "";
	if (username == null) {
		username = "请登录";
		href = "/ssm/login.jsp";
		display = "display:none";
	} else {
		href = "javascript:;";
		fill = "<dl class='layui-nav-child'><dd><a href='account'>个人中心</a></dd><dd><a id='logout' href='javascript:;'>退出</a></dd></dl>";
	}
	if (current == 1) {
		display1 = "display:none";
	}
	if (current == pages) {
		display2 = "display:none";
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
<title>TRY1T</title>
<base href=" <%=basePath%>">
<script src="js/jquery.session.js"></script>
<link rel="stylesheet" href="lib/layui/css/layui.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/xadmin.css">
<link rel="icon" href="images/icon.jpg">
</head>
<body style="overflow: hidden;">
	<header style="background-color: #254b50;" >
		<nav class="layui-container">
			<ul style="background-color: transparent" class="layui-nav">
				<li style="margin-left: -20px" class="layui-nav-item layui-this">
					<a href="frontend">TRY1T BLOG</a>
				</li>
				<li class="layui-nav-item"><a href="javascript:;">分类</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="cate?category=0">分享</a>
						</dd>
						<dd>
							<a href="cate?category=1">新闻</a>
						</dd>
						<dd>
							<a href="cate?category=2">笔记</a>
						</dd>
						<dd>
							<a href="cate?category=3">展示</a>
						</dd>
						<dd>
							<a href="cate?category=4">大事件</a>
						</dd>
					</dl></li>
				<li style="float: right; margin-right: -20px" class="layui-nav-item">
					<a href="<%=href%>"><img src="<%=url%>" class="layui-nav-img"><%=username%></a>
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
						<div style="border-radius: 10px;" class="layui-carousel"
							id="carousel">
							<div style="border-radius: 10px;" carousel-item>
								<div>
									<img src="images/2.jpg" alt="">
								</div>
								<div>
									<img src="images/1.jpg" alt="">
								</div>
							</div>
						</div>
					</div>
					<div class="layui-col-md12 margin20"></div>
					<c:forEach items="${cs}" var="c" varStatus="st">
						<div class="layui-col-md12">
							<div style="border-radius: 10px;" class="main list">

								<div class="subject">
									<a href="detail?id=${c.id}">${c.title}</a><em>&nbsp&nbsp${c.date}发布</em>
								</div>
								<div class="content layui-row">

									<div class="list-text">${c.content}</div>
									<div class="list-stat layui-row">

										<div class="layui-col-xs3 layui-col-md3 Label">
											<i class="layui-icon layui-icon-note"></i> <a></a>

										</div>

										<div class="layui-col-xs3 layui-col-md3">
											<i class="layui-icon layui-icon-reply-fill"></i> <em>${c.counts}条评论</em>
										</div>

										<div class="layui-col-xs3 layui-col-md3">
											<i class="layui-icon layui-icon-read"></i> <em>${c.views}次阅读</em>
										</div>

										<div class="layui-col-xs3 layui-col-md3 alink">
											<a href="detail?id=${c.id}" class="layui-btn layui-btn-xs">阅读原文</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="layui-col-md12 margin20"></div>
					</c:forEach>

					<div class="layui-col-md12 page">

						<a class="prev" href="/ssm/frontend?current=1">&lt;&lt;</a>
						&nbsp&nbsp <a style="<%=display1%>" class="num"
							href="/ssm/frontend?current=<%=current - 1%>"><%=current - 1%></a>&nbsp&nbsp
						<span class="current" style="background-color: #009688"><%=current%></span>
						&nbsp&nbsp <a style="<%=display2%>" class="num"
							href="/ssm/frontend?current=<%=current + 1%>"><%=current + 1%></a>&nbsp&nbsp
						<a class="next" href="/ssm/frontend?current=<%=pages%>">&gt;&gt;</a>

					</div>
				</div>
				<div class="layui-col-md12 margin20"></div>
			</div>

			<div class="layui-col-md4">
			    <div class="layui-row">
			    <div class="layui-col-md12">
						<div style="border-radius: 10px;" class="layui-card">
							<div class="layui-card-header">
								<span> 搜索 </span>
							</div>
							<div class="layui-card-body" style="text-align: center;">
								<input style="width: 75%; display: inline" type="text"
									id="search" name="search" placeholder="请输入查询内容"
									autocomplete="off" class="layui-input">&nbsp
								<button style="display: inline; margin-top: -4px"
									class="layui-btn" id="searchBtn">搜索</button>
							</div>
							<div class="margin10"></div>
						</div>
					</div>
					
					<div class="layui-col-md12 margin20"></div>
					<div class="layui-col-md12">
						<div style="border-radius: 10px;" class="layui-card">
							<div class="layui-card-header">
								<span> 标签 </span>
							</div>
							<div class="layui-card-body">
								<button style="margin:5px" type="button" class="layui-btn layui-btn-xs ">1按钮</button>
								<button style="margin:5px" type="button" class="layui-btn layui-btn-xs ">2按钮</button>
								<button style="margin:5px" type="button" class="layui-btn layui-btn-xs ">3按钮</button>
								<button style="margin:5px" type="button" class="layui-btn layui-btn-xs ">迷你按钮</button>
								<button style="margin:5px" type="button" class="layui-btn layui-btn-xs ">4按钮</button>
								<button style="margin:5px" type="button" class="layui-btn layui-btn-xs ">5按钮</button>
								<button style="margin:5px" type="button" class="layui-btn layui-btn-xs ">迷你按钮</button>
						        <button style="margin:5px" type="button" class="layui-btn layui-btn-xs ">6按钮</button>
							</div>
							<div class="margin10"></div>
						</div>
					</div>
					<div class="layui-col-md12 margin20"></div>
					<div class="layui-col-md12">
						<div style="border-radius: 10px;" class="layui-card">
							<div class="layui-card-header">
								<span class="layui-breadcrumb" lay-separator="|"> <a
									href="javascript:;">站点详情</a>
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
											<td>${articlecount}篇</td>
										</tr>
										<tr>
											<td>注册用户：</td>
											<td>${usercount}人</td>
										</tr>
									</tbody>
								</table>
								<div class="margin10"></div>
							</div>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</div>
	<!-- 尾部 -->
	<div class="footer"></div>
	<footer style="background-color:#254b50">
		<div class="layui-container">
			<div class="layui-row">
				<P>try1t.com All rights reserved</P>
			</div>
		</div>
	</footer>
</body>
<script src="lib/layui/layui.all.js"></script>

<script>
	layui.use([ 'form', 'layer' ], function() {
		$ = layui.jquery;
		var layer = layui.layer;
		var W = $('#carousel').width();
		var scale = 753.33/280;
		layui.carousel.render({
			elem : '#carousel',
			width : '100%' //设置容器宽度
			 ,height: (W/scale)+"px"
			 ,
			arrow : 'always' //始终显示箭头
		//,anim: 'updown' //切换动画方式
		});

		$("#searchBtn").click(function() {
			window.location.href = "search?content=" + $("#search").val();
		});

		$("#logout").click(function() {
			layer.confirm("确定退出吗", {
				yes : function() {
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
		
		 $(window).resize(function () {
		        window.location.reload()
		    });
	});
</script>
</html>