<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	HttpSession a = request.getSession();
%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>TRY1T</title>
<base href=" <%=basePath%>">
<meta name="keywords" content="blog" />
<meta name="description" content="blog" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/base.css" rel="stylesheet">
<link href="css/m.css" rel="stylesheet">
<script src="js/jquery-1.8.3.min.js"></script>
<script src="js/comm.js"></script>
<!--[if lt IE 9]>
<script src="js/modernizr.js"></script>
<![endif]-->
</head>
<body>
	<!--top begin-->
	<header id="header">
		<div class="navbox">
			<h2 id="mnavh">
				<span class="navicon"></span>
			</h2>
			<div class="logo">
				<a href="#">HANS ZHANG</a>
			</div>
			<nav>
				<ul id="starlist">
					<li><a href="jsp/frontend/frontend.jsp">首页</a></li>
					<li><a href="jsp/frontend/blog.jsp">Blog&项目展示&技术分享</a></li>
					<li><a href="jsp/frontend/about.jsp">关于我</a></li>
					<li><a href="jsp/backend.jsp">后端入口</a></li>	
				</ul>
			</nav>
			<div class="searchico"></div>
		</div>
	</header>
	<div class="searchbox">
		<div class="search">
			<form action="/e/search/index.php" method="post" name="searchform"
				id="searchform">
				<input name="keyboard" id="keyboard" class="input_text"
					value="请输入关键字词" style="color: rgb(153, 153, 153);"
					onFocus="if(value=='请输入关键字词'){this.style.color='#000';value=''}"
					onBlur="if(value==''){this.style.color='#999';value='请输入关键字词'}"
					type="text"> <input name="show" value="title" type="hidden">
				<input name="tempid" value="1" type="hidden"> <input
					name="tbname" value="news" type="hidden"> <input
					name="Submit" class="input_submit" value="搜索" type="submit">
			</form>
		</div>
		<div class="searchclose"></div>
	</div>
	<!--top end-->
	<article>
		<div class="whitebg about">
			<div class="ab_box">
				<i class="avatar_pic"><img src="images/avatar.jpg"></i>
				<h3>HANS ZHANG</h3>
				<p>90后端技术开发师</p>
			</div>
			<h2 class="gd_title">内心独白</h2>
			<p class="ab_dubai">我叫杨青青，我是一个80后草根女站长！09年入行。我一直潜心研究网页前端技术，一边工作一边积累经验，分享一些个人博客模板，以及网站优化等心得。我入行早，大家也亲切的叫我“青姐”。我的个人博客搜索“个人博客”、“博客”，一直都靠前。最有意思的是，我有三年的时间没有去更新它，依然排在前面。虽然期间有很多的不容易，但是我都没有放弃过。选了这一行
				，就深深的喜欢上它。我喜欢一句话“冥冥中该来则来，无处可逃”。我喜欢上了前端设计，喜欢坐在电脑前敲代码，喜欢跟一堆程序员聊天。这辈子，我也逃不出去了，深深的陷了进来。
			</p>
			<span class="ly_button"><a href="#/e/tool/gbook/?bid=1"
				target="_blank">留言</a></span>
			<h2 class="gd_title">心路历程</h2>
			<ul class="xinlu">
				<li><a href="/" target="_blank"><i><img
							src="images/1.jpg"></i>
						<p>我是怎么评价自己的？</p> <span>我性格属于好静的，喜欢写写画画，自从读了计算机专业，那就更好静了，我可以两星期都不出门，但是半刻钟也不能离开电脑。</span></a></li>
				<li><a href="/" target="_blank"><i><img
							src="images/2.jpg"></i>
						<p>个人博客，属于我的小世界！</p> <span>个人博客，用来做什么？我刚开始就把它当做一个我吐槽心情的地方，也就相当于一个网络记事本，写上一些关于自己生活工作中的小情小事，也会放上一些照片，音乐。每天工作回家后就能访问自己的网站，一边听着音乐，一边写写文章。</span></a></li>
				<li><a href="/" target="_blank"><i><img
							src="images/3.jpg"></i>
						<p>【爱设计】安静地做一个爱设计的女子</p> <span>自从入了这行，很多人跟我说可以做网络教程，我也有考虑，但最终没有实现，因为我觉得在这个教程泛滥的时代，直接做一套免费的原创个人博客模板更为实在。</span></a></li>
				<li><a href="/" target="_blank"><i><img
							src="images/4.jpg"></i>
						<p>【匆匆那些年】总结个人博客经历的这四年</p> <span>博客从最初的域名购买，到上线已经有四年的时间了，这四年的时间，有笑过，有怨过，有悔过，有执着过，也有放弃过…但最后还是坚持了下来，时间如此匆匆，等再回过头已来不及去弥补</span></a></li>
				<li><a href="/" target="_blank"><i><img
							src="images/ad.jpg"></i>
						<p>我是怎么评价自己的？</p> <span>我性格属于好静的，喜欢写写画画，自从读了计算机专业，那就更好静了，我可以两星期都不出门，但是半刻钟也不能离开电脑。</span></a></li>
				<li><a href="/" target="_blank"><i><img
							src="images/ad02.jpg"></i>
						<p>个人博客，属于我的小世界！</p> <span>个人博客，用来做什么？我刚开始就把它当做一个我吐槽心情的地方，也就相当于一个网络记事本，写上一些关于自己生活工作中的小情小事，也会放上一些照片，音乐。每天工作回家后就能访问自己的网站，一边听着音乐，一边写写文章。</span></a></li>
				<li><a href="/" target="_blank"><i><img
							src="images/b01.jpg"></i>
						<p>【爱设计】安静地做一个爱设计的女子</p> <span>自从入了这行，很多人跟我说可以做网络教程，我也有考虑，但最终没有实现，因为我觉得在这个教程泛滥的时代，直接做一套免费的原创个人博客模板更为实在。</span></a></li>
				<li><a href="/" target="_blank"><i><img
							src="images/b05.jpg"></i>
						<p>【匆匆那些年】总结个人博客经历的这四年</p> <span>博客从最初的域名购买，到上线已经有四年的时间了，这四年的时间，有笑过，有怨过，有悔过，有执着过，也有放弃过…但最后还是坚持了下来，时间如此匆匆，等再回过头已来不及去弥补</span></a></li>
			</ul>
			<h2 class="gd_title">我的博客</h2>
			<ul class="myblog">
				<li><b>创建时间</b>
					<p>2011年01月12日</p>
					<p>
						<a href="#" target="_blank" class="buttons">主页</a>
					</p></li>
				<li><b>主题模板</b>
					<p>
						<a href="#" target="_blank">《今夕何夕》</a>
					</p>
					<p>
						<a href="/" class="buttons">下载</a>
					</p></li>
				<li><b>网站程序</b>
					<p>帝国CMS7.5</p>
					<p>
						<a href="#" target="_blank" class="buttons">下载</a>
					</p></li>
				<li><b>服务器商</b>
					<p>阿里云服务器</p> <a href="/" class="buttons">1888代金券领取</a></li>
				<li><b>免费空间</b>
					<p>
						<a href="http://www.4562.com/?u=3CE3E8" target="_blank">金牛云服</a>
					</p> <a href="/" class="buttons">国内主机免费领</a></li>
			</ul>
			<h2 class="gd_title">加入我们</h2>
			<ul class="qq_join">
				<li>
					<section>
						<img src="images/qq1.png">
						<p>网页设计交流吧①</p>
						<p>QQ群号：280998807</p>
					</section>
				</li>
				<li>
					<section>
						<img src="images/qq2.png">
						<p>网页设计交流吧②</p>
						<p>QQ群号：291195645</p>
					</section>
				</li>
				<li>
					<section>
						<img src="images/joinwx.png">
						<p>
							关注官方<b>微信</b>公众号
						</p>
						<p>掌握最新的模板信息！</p>
					</section>
				</li>
				<li>
					<section>
						<img src="images/joinwxqun.png">
						<p>
							网页设计交流<b>微信群</b>
						</p>
						<p>目前只接受群主拉进群</p>
					</section>
				</li>
			</ul>
		</div>
	</article>
	<footer>
		<div class="box">
			<div class="wxbox">
				<ul>
					<li><img src="images/wxgzh.jpg"><span>微信公众号</span></li>
					<li><img src="images/wx.png"><span>我的微信</span></li>
				</ul>
			</div>
			<div class="endnav">
				<p>
					<b>TRY1T</b>
				</p>
				<p>
					Copyright © <a href="#" target="_blank">www.try1t.com</a> All
					Rights Reserved.
				</p>
			</div>
		</div>
		<a href="#">
			<div class="top"></div>
		</a>
	</footer>
</body>
</html>