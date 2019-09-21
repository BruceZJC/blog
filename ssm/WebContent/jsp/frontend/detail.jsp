<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
		+ path + "/";
String username = (String)session.getAttribute("username");
String fill = "";
String href = "";
if(username == null){
	username = "请登录";
	href = "/";
	}
else{
	href="javascript:;";
	fill = "<dl class='layui-nav-child'><dd><a href='javascript:;'>账号信息</a></dd><dd><a href='javascript:;'>退出</a></dd></dl>";
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
	<link rel="stylesheet" href="lib/layui/css/layui.css">
	<link rel="stylesheet" href="css/common.css">
	<link rel="stylesheet" href="css/detail.css">
	<script src="js/jquery.session.js"></script>
</head>
<body>
<header class="layui-bg-cyan">
		<nav class="layui-container">
			<ul class="layui-nav layui-bg-cyan">
 			    	    <li class="layui-nav-item layui-this">
					    	<a href="frontend">TRY1T BLOG</a>
					  	</li>
					  	<li class="layui-nav-item">
					    	<a href="">个人主页</a>
					  	</li>
  <li style=" float:right;" class="layui-nav-item">
    <a href=""><img src="images/default.jpg" class="layui-nav-img"><%=username%></a>
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
									<div class="layui-col-md2 layui-col-xs6">分类：<a href="#">PHP</a></div>
									<div class="layui-col-md2 layui-col-xs6">作者：<a href="#">${c.username}</a></div>
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
								<p>转载声明：本站文章若无特别说明，皆为原创，转载请注明来源：TRY1T博客，谢谢！^^</p>
							</div>
							<div class="operation">
								<a href="javascript:;" class="layui-btn layui-btn-normal">点赞</a>
							</div>
							<div class="Label">
								<i class="layui-icon layui-icon-note"></i>
								<a href="javascript:;">PHP</a>
								<a href="javascript:;">Discuz</a>
							</div>
						</div>
						</c:forEach>
					</div>
					<div class="layui-col-md12 margin20"></div>
					<div class="layui-col-md12">
						<div class="layui-card">
						  	<div class="layui-card-header">
								<span>
									相关推荐
								</span>
						  	</div>
						  	<div class="layui-card-body">
						  		<div class="layui-row">
						  			<div class="layui-col-md4">
										<div class="layui-card">
										  	<a href="" class="layui-card-body recommend">
										    	<img src="#">
										    	<p>用layui做一个独立博客网站（响应式模板）</p>
										  	</a>
										</div>
					  				</div>
						  		</div>
						  	</div>
						</div>
					</div>
				</div>
	        </div>


	        <div class="layui-col-md4">
				<div class="layui-row">
					<div class="layui-col-md12">
						<div class="layui-card">
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
								      		<td>0 天</td>
								    	</tr>
								    	<tr>
								      		<td>发表文章：</td>
								      		<td>0 篇</td>
								    	</tr>
								    	<tr>
								      		<td>注册用户：</td>
								      		<td>0 人</td>
								    	</tr>
								  	</tbody>
								</table>
						  	</div>
						  	<div class="layui-card-body" id="binfo" style="display: none;">
						  		<table class="layui-table">
								  	<colgroup>
								    	<col width="120">
								    	<col width="230">
								  	</colgroup>
								  	<tbody>
								    	<tr>
								      		<td>QQ：</td>
								      		<td>1185013588</td>
								    	</tr>
								    	<tr>
								      		<td>Wechat：</td>
								      		<td></td>
								    	</tr>
								    	<tr>
								      		<td>qqGroup：</td>
								      		<td></td>
								    	</tr>
								  	</tbody>
								</table>
						  	</div>
						</div>
					</div>
					<div class="layui-col-md12 margin20"></div>
					<div class="layui-col-md12">
						<div class="layui-card">
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
					<div class="layui-col-md12 margin20"></div>
					<div class="layui-col-md12">
						<div class="layui-card">
						  	<div class="layui-card-header">
								<span>
									捐助本站
								</span>
						  	</div>
						  	<div class="layui-card-body" style="text-align: center;">
						    	<br/>
						    	<p>无论多少，都是心意!</p>
						  	</div>
						</div>
					</div>
				</div>
	        </div>
		</div>
	</div>

	<!-- 尾部 -->
	<div class="footer"></div>
	<footer class="layui-bg-cyan">
		<div class="layui-container">
			<div class="layui-row">
				<P>try1t.com All rights reserved</P>
			</div>
		</div>
	</footer>
</body>
<script src="lib/layui/layui.all.js"></script>
</html>