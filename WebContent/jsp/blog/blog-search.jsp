<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>欢迎页面</title>
<base href=" <%=basePath%>">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="css/font.css">
<link rel="stylesheet" href="css/xadmin.css">
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="lib/layui/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="js/xadmin.js"></script>
<!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
<!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	<div class="x-nav">
		<span class="layui-breadcrumb"> <a>SSM架构</a> <a>博客管理</a>
		</span> <a class="layui-btn layui-btn-primary layui-btn-small"
			style="line-height: 1.6em; margin-top: 3px; float: right"
			href="/ssm/blog-list?pagenum=1" title="刷新"> <i
			class="layui-icon" style="line-height: 38px">ဂ</i></a>
	</div>
	<div class="x-body">
		<div class="layui-row">
			<form class="layui-form layui-col-md12 x-so" method="POST"
				action="/ssm/blog-search">
				<input class="layui-input" placeholder="开始日" name="start" id="start">
				<input class="layui-input" placeholder="截止日" name="end" id="end">
				<input type="text" name="id" placeholder="请输入id" autocomplete="off"
					class="layui-input"> <input type="submit" value="查找"
					class="layui-btn" lay-filter="sreach"><a
					href="/ssm/blog-list?pagenum=1" class="layui-btn">返回</a>
			</form>
		</div>
		<xblock>
		<button class="layui-btn"
			onclick="x_admin_show('添加用户','jsp/blog/blog-add.jsp')">
			<i class="layui-icon"></i>添加
		</button>
		<span class="x-right" style="line-height: 40px">共有数据：${count}条</span>
		</xblock>
		<table class="layui-table">
			<thead>
				<tr>
					<th>
						<div class="layui-unselect header layui-form-checkbox"
							lay-skin="primary">
							<i class="layui-icon">&#xe605;</i>
						</div>
					</th>
					<th>ID</th>
					<th>标题</th>
					<th>副标题</th>
					<th>作者</th>
					<th>文章概述</th>
					<th>状态</th>
					<th>发布时间</th>
                    <th>操作</th>
			</thead>
			<tbody>
				<c:forEach items="${cs}" var="c" varStatus="st">
					<tr>
						<td>
							<div class="layui-unselect layui-form-checkbox"
								lay-skin="primary" data-id='1'>
								<i class="layui-icon">&#xe605;</i>
							</div>
						</td>
						<td>${c.id}</td>
						<td>${c.title}</td>
						<td>${c.subtitle}</td>
						<td>${c.username}</td>
						<td>${c.article}</td>
						<td>${c.state}</td>
						<td>${c.date}</td>
						<td class="td-manage"><a title="查看"
							onclick="x_admin_show('编辑','/ssm/blog-getdata?id=${c.id}')"
							href="javascript:;"> <i class="layui-icon">&#xe63c;</i>
						</a> <a title="删除" onclick="blog_del('${c.id}')" href="javascript:;">
								<i class="layui-icon">&#xe640;</i>
						</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>


	</div>
	<script>
		layui.use('laydate', function() {
			var laydate = layui.laydate;

			//执行一个laydate实例
			laydate.render({
				elem : '#start' //指定元素
			});

			//执行一个laydate实例
			laydate.render({
				elem : '#end' //指定元素
			});
		});

		/*用户-删除*/
		function blog_del(id) {
			layer.alert('确认要删除吗？', {
			    yes:function(){
			    	window.location.href = "blog-delete?id=" + id;
					layer.alert('删除成功');
			    }
			});
		}
	</script>
</body>

</html>