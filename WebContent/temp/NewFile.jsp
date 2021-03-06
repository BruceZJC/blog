<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>layui 页面元素规范与说明</title>
<meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="apple-mobile-web-app-status-bar-style" content="black"> 
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="format-detection" content="telephone=no">
  
  <link rel="stylesheet" href="//res.layui.com/layui/dist/css/layui.css?t=1568076536509"  media="all">
  <link rel="stylesheet" href="//res.layui.com/static/css/global.css?t=1568076536509-11" media="all">
</head>
<body>



<div class="layui-header header header-doc" autumn>
  <div class="layui-main">
    <a class="logo" href="/">
      <img src="//res.layui.com/static/images/layui/logo.png" alt="layui">
    </a>
    <div class="layui-form component" lay-filter="LAY-site-header-component"></div>
    <ul class="layui-nav">
      <li class="layui-nav-item layui-this">
        <a href="/doc/">文档<!--  --></a> 
      </li>
      <li class="layui-nav-item ">
        <a href="/demo/">示例<!-- <span class="layui-badge-dot"></span> --></a>
      </li>
      
      
      
      
      <li class="layui-nav-item layui-hide-xs">
        <a href="//fly.layui.com/" target="_blank">社区</a>
      </li>
      
      <li class="layui-nav-item">
        <a href="javascript:;"><span class="layui-badge-dot" style="margin: -5px 0 0 -15px;"></span>周边</a>
        <dl class="layui-nav-child">
          <dd lay-unselect>
            <a href="//fly.layui.com/extend/" target="_blank">扩展组件</a>
          </dd>
          <dd lay-unselect>
            <a href="//fly.layui.com/store/" target="_blank">模板市场</a>
            <hr>
          </dd>
          
          <dd class="layui-hide-sm layui-show-xs" lay-unselect>
            <a href="//fly.layui.com/" target="_blank">社区交流</a>
            <hr>
          </dd>
          <dd lay-unselect><a href="/admin/" target="_blank">后台模板 <span class="layui-badge-dot"></span></a></dd>
          <dd lay-unselect><a href="/layim/" target="_blank">即时聊天</a><hr></dd>
          
          <dd lay-unselect><a href="/alone.html" target="_blank" lay-unselect>独立组件</a></dd>
          <dd lay-unselect><a href="https://fly.layui.com/jie/24209/" target="_blank">Axure 组件</a><hr></dd>
          
          <dd lay-unselect>
            <a href="https://www.layuicdn.com/?from=layui" target="_blank" id="layui-spm-event-layuicdn" rel="nofollow">
              layui cdn
            </a>
          </dd>
          <dd lay-unselect>
            <a href="http://lowcode.magicalcoder.com/layui?from=layui" target="_blank" id="layui-spm-event-magicalcoder" rel="nofollow">
              layui 布局器 
              <span class="layui-badge-dot"></span>
            </a>
          </dd>
          
        </dl>
      </li>
      
      <li class="layui-nav-item layui-hide-xs" lay-unselect>
        <a href="/admin/">后台模板<span class="layui-badge-dot" style="margin-top: -5px;"></span></a>
      </li>
    </ul>
  </div>
</div>
<!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
<!--[if lt IE 9]>
  <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
  <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
<![endif]--> 
<ul class="site-dir">
  <li><a href="#css"><cite>CSS规范</cite></a></li>
  <li><a href="#html"><cite>HTML规范</cite></a></li>
  <li><a href="#attr"><cite>常用公共属性</cite></a></li>
</ul>
<div class="layui-main site-inline">
  <div class="site-tree">
  <div class="layui-form" style="height: 38px; margin: 10px 13px 0 0;">
    <select lay-filter="tabVersion">
      <option value="new">2.x</option>
      <option value="v1">1.0.9</option>
    </select>
  </div>
  <ul class="layui-tree">
  
    <li><h2>基础说明</h2></li>
  
    <li class="site-tree-noicon ">
      <a href="/doc/">
        <cite>开始使用</cite>
        <em>Getting Started</em>
      </a>
    </li>
    <li class="site-tree-noicon ">
      <a href="/doc/base/infrastructure.html">
        <cite>底层方法</cite>
        <em>基础支撑</em>
      </a>
    </li>
    <li class="site-tree-noicon layui-this">
      <a href="/doc/base/element.html">
        <cite>页面元素</cite>
        <em>规范 / 公共类 / 属性</em>
      </a>
    </li>
    <li class="site-tree-noicon ">
      <a href="/doc/base/modules.html">
        <cite>模块规范</cite>
        <em>使用 / 扩展</em>
      </a>
    </li>
    <li class="site-tree-noicon ">
      <a href="/doc/base/faq.html">
        <cite>常见问题</cite>
        <em>FAQ</em>
      </a>
    </li>
    <li class="site-tree-noicon ">
      <a href="/doc/base/changelog.html">
        <cite>更新日志</cite>
        
        <span class="layui-badge-dot" style="position: relative; top: -3px; left: -3px;"></span>
        
      </a>
    </li>
    
    <li><h2>页面元素</h2></li>
    
    
    <li class="site-tree-noicon ">
      <a href="/doc/element/layout.html">
        <cite>布局</cite>
        <em>栅格 / 后台布局</em>
      </a>
    </li>
    <li class="site-tree-noicon ">
      <a href="/doc/element/color.html">
        <cite>颜色</cite>
        <em>主题色设计感 / 内置背景色</em>
      </a>
    </li>
    <li class="site-tree-noicon ">
      <a href="/doc/element/icon.html">
        <cite>图标</cite>
        <em>字体图标</em>
      </a>
    </li>
    <li class="site-tree-noicon ">
      <a href="/doc/element/anim.html">
        <cite>动画</cite>
        <em>内置 CSS3 动画</em>
      </a>
    </li>
    
    <li class="site-tree-noicon ">
      <a href="/doc/element/button.html">
        <cite>按钮</cite>
        <em>button 组</em>
      </a>
    </li>
    <li class="site-tree-noicon ">
      <a href="/doc/element/form.html">
        <cite>表单</cite>
        <em>form 元素集合</em>
      </a>
    </li>
    <li class="site-tree-noicon ">
      <a href="/doc/element/nav.html">
        <cite>导航</cite>
        <em>菜单 / 面包屑</em>
      </a>
    </li>
    <li class="site-tree-noicon ">
      <a href="/doc/element/tab.html">
        <cite>选项卡</cite>
        <em>Tabs 切换</em>
      </a>
    </li>
    <li class="site-tree-noicon ">
      <a href="/doc/element/progress.html">
        <cite>进度条</cite>
        <em>progress</em>
      </a>
    </li>
    <li class="site-tree-noicon ">
      <a href="/doc/element/panel.html">
        <cite>面板</cite>
        <em>折叠 / 手风琴</em>
      </a>
    </li>
    <li class="site-tree-noicon ">
      <a href="/doc/element/table.html">
        <cite>表格</cite>
        <em>静态 table</em>
      </a>
    </li>
    <li class="site-tree-noicon ">
      <a href="/doc/element/badge.html">
        <cite>徽章</cite>
        <em>小圆点 / 小边框</em>
      </a>
    </li>
    <li class="site-tree-noicon ">
      <a href="/doc/element/timeline.html">
        <cite>时间线</cite>
        <em>timeline</em>
      </a>
    </li>
    <li class="site-tree-noicon ">
      <a href="/doc/element/auxiliar.html">
        <cite>辅助</cite>
        <em>引用 / 字段集 / 横线等</em>
      </a>
    </li>
   
    
    <li><h2>内置模块</h2></li>
    
    <li class="">
      <a href="/doc/modules/layer.html">
        <i class="layui-icon" style="top: 3px;">&#xe638;</i><cite>弹出层</cite>
        <em>layer</em>
      </a>
    </li>
    <li class="">
      <a href="/doc/modules/laydate.html">
        <i class="layui-icon" style="top: 3px;">&#xe637;</i><cite>日期与时间选择</cite>
        <em>laydate</em>
      </a>
    </li>
    <li >
      <a href="/doc/modules/layim.html">
        <i class="layui-icon" style="position: relative; top: 3px;">&#xe63a;</i>
        <cite>即时通讯</cite>
        <em>layim</em>
      </a>
    </li>
    <li class="">
      <a href="/doc/modules/laypage.html">
        <i class="layui-icon" style="top: 2px;">&#xe633;</i><cite>分页</cite>
        <em>laypage</em>
      </a>
    </li>
    <li class="">
      <a href="/doc/modules/laytpl.html">
        <i class="layui-icon" style="top: 3px;">&#xe628;</i><cite>模板引擎</cite>
        <em>laytpl</em>
      </a>
    </li>
    <li class="">
      <a href="/doc/modules/table.html">
        <i class="layui-icon" style="top: 4px; font-size: 24px; margin-right: -4px;">&#xe62d;</i>
        <cite>数据表格</cite>
        
          <span class="layui-badge-dot" style="position: relative; top: -3px; left: -3px;"></span>
        
        <em>table</em>
      </a>
    </li>
    <li class="">
      <a href="/doc/modules/form.html">
        <i class="layui-icon" style="top: 2px;">&#xe63c;</i>
        <cite>表单</cite>
        <em>form</em>
      </a>
    </li>
    <li class="">
      <a href="/doc/modules/upload.html">
        <i class="layui-icon" style="font-size: 18px;">&#xe62f;</i>
        <cite>文件上传</cite>
        <em>upload</em>
      </a>
    </li>
    <li class="">
      <a href="/doc/modules/transfer.html">
        <i class="layui-icon layui-icon-transfer" style="font-size: 18px; top: 2px;"></i>
        <cite>穿梭框</cite>
        
          <span class="layui-badge-dot" style="position: relative; top: -3px; left: -3px;"></span>
        
        <em>transfer</em>
      </a>
    </li>
    
    <li class="">
      <a href="/doc/modules/tree.html">
        <i class="layui-icon" style="top: 2px;">&#xe62e;</i>
        <cite>树形组件</cite>
        
          <span class="layui-badge-dot" style="position: relative; top: -3px; left: -3px;"></span>
        
        <em>tree</em>
      </a>
    </li>
    
    <li class="">
      <a href="/doc/modules/colorpicker.html">
        <i class="layui-icon layui-icon-theme" style="top: 1px; font-size: 18px;"></i>
        <cite>颜色选择器</cite>
        <em>colorpicker</em>
      </a>
    </li>
    <li class="">
      <a href="/doc/modules/element.html">
        <i class="layui-icon" style="top: 1px; font-size: 18px;">&#xe62a;</i>
        <cite>常用元素操作</cite>
        <em>element</em>
      </a>
    </li>
    <li class="">
      <a href="/doc/modules/slider.html">
        <i class="layui-icon layui-icon-slider" style="top: 1px; font-size: 18px;"></i>
        <cite>滑块</cite>
        <em>slider</em>
      </a>
    </li>
    <li class="">
      <a href="/doc/modules/rate.html">
        <i class="layui-icon" style="top: 1px; font-size: 22px;">&#xe67b;</i>
        <cite>评分</cite>
        <em>rate</em>
      </a>
    </li>
    <li class="">
      <a href="/doc/modules/carousel.html">
        <i class="layui-icon" style="top: 2px;">&#xe634;</i>
        <cite>轮播</cite>
        <em>carousel</em>
      </a>
    </li>
    
    <li class="">
      <a href="/doc/modules/flow.html">
        <i class="layui-icon">&#xe636;</i>
        <cite>流加载</cite>
        <em>flow</em>
      </a>
    </li>
    <li class="">
      <a href="/doc/modules/util.html">
        <i class="layui-icon">&#xe631;</i>
        <cite>工具集</cite>
        <em>util</em>
      </a>
    </li>
    <li class="">
      <a href="/doc/modules/code.html">
        <i class="layui-icon" style="top: 1px;">&#xe635;</i>
        <cite>代码修饰器</cite>
        <em>code</em>
      </a>
    </li>
  </ul>
</div>

  <div class="site-content">
    <h1 class="site-h1">页面元素规范与说明</h1>
    <blockquote class="layui-elem-quote">Layui提倡返璞归真，遵循于原生态的元素书写规则，所以通常而言，你仍然是在写基本的HTML和CSS代码，不同的是，在HTML结构上及CSS定义上需要小小遵循一定的规范。</p>
    </blockquote>
    
    

<div style="margin: 15px 0; text-align: center; background-color: #F2F2F2;">
  <ins class="adsbygoogle" style="display:inline-block;width:728px;height:90px" data-ad-client="ca-pub-6111334333458862" data-ad-slot="9841027833"></ins>
</div>


    
    
    <div class="site-title">
      <fieldset><legend><a name="css">CSS内置公共基础类</a></legend></fieldset>
    </div>
    <table class="layui-table">
      <colgroup>
        <col width="150">
        <col>
      </colgroup>
      <thead>
        <tr>
          <th>类名（class）</th>
          <th>说明</th>
        </tr> 
      </thead>
      <tbody>
        <tr>
          <td colspan="2" style="text-align: center">布局 / 容器</td>
        </tr>
        <tr>
          <td>layui-main</td>
          <td>用于设置一个宽度为 1140px 的水平居中块（无响应式）</td>
        </tr>
        <tr>
          <td>layui-inline</td>
          <td>用于将标签设为内联块状元素</td>
        </tr>
        <tr>
          <td>layui-box</td>
          <td>用于排除一些UI框架（如Bootstrap）强制将全部元素设为box-sizing: border-box所引发的尺寸偏差</td>
        </tr>
        <tr>
          <td>layui-clear</td>
          <td>用于消除浮动（一般不怎么常用，因为layui几乎没用到浮动）</td>
        </tr>
        <tr>
          <td>layui-btn-container</td>
          <td>用于定义按钮的父容器。（layui 2.2.5 新增）</td>
        </tr>
        <tr>
          <td>layui-btn-fluid</td>
          <td>用于定义流体按钮。即宽度最大化适应。（layui 2.2.5 新增）</td>
        </tr>
        
        <tr>
          <td colspan="2" style="text-align: center">辅助</td>
        </tr>
        <tr>
          <td>layui-icon</td>
          <td>用于图标</td>
        </tr>
        <tr>
          <td>layui-elip</td>
          <td>用于单行文本溢出省略</td>
        </tr>
        <tr>
          <td>layui-unselect</td>
          <td>用于屏蔽选中</td>
        </tr>
        <tr>
          <td>layui-disabled</td>
          <td>用于设置元素不可点击状态</td>
        </tr>
        <tr>
          <td>layui-circle</td>
          <td>用于设置元素为圆形</td>
        </tr>
        <tr>
          <td>layui-show</td>
          <td>用于显示块状元素</td>
        </tr>
        <tr>
          <td>layui-hide</td>
          <td>用于隐藏元素</td>
        </tr>
        
        <tr>
          <td colspan="2" style="text-align: center">文本</td>
        </tr>
        <tr>
          <td>layui-text</td>
          <td>定义一段文本区域（如文章），该区域内的特殊标签（如a、li、em等）将会进行相应处理</td>
        </tr>
        <tr>
          <td>layui-word-aux</td>
          <td>灰色标注性文字，左右会有间隔</td>
        </tr>
        
        <tr>
          <td colspan="2" style="text-align: center">背景色</td>
        </tr>
        <tr>
          <td>layui-bg-red</td>
          <td>用于设置元素赤色背景</td>
        </tr>
        <tr>
          <td>layui-bg-orange</td>
          <td>用于设置元素橙色背景</td>
        </tr>
        <tr>
          <td>layui-bg-green</td>
          <td>用于设置元素墨绿色背景（主色调）</td>
        </tr>
        <tr>
          <td>layui-bg-cyan</td>
          <td>用于设置元素藏青色背景</td>
        </tr>
        <tr>
          <td>layui-bg-blue</td>
          <td>用于设置元素蓝色背景</td>
        </tr>
        <tr>
          <td>layui-bg-black</td>
          <td> 用于设置元素经典黑色背景</td>
        </tr>
        <tr>
          <td>layui-bg-gray</td>
          <td>用于设置元素经典灰色背景</td>
        </tr>
      </tbody>
    </table>
    <div class="site-text">
      <p>其它的类一般都是某个元素或模块所特有，因此不作为我们所定义的公共类。</p>
    </div>
    
    <div class="site-title">
      <fieldset><legend><a name="css">CSS命名规范</a></legend></fieldset>
    </div>
    <div class="site-text">
      <p>class命名前缀：<em>layui</em>，连接符：<em>-</em>，如：<em>class="layui-form"</em></p>
      <p>命名格式一般分为两种：一：<em>layui-模块名-状态或类型</em>，二：<em>layui-状态或类型</em>。因为有些类并非是某个模块所特有，他们通常会是一些公共类。如：一（定义按钮的原始风格）：<em>class="layui-btn layui-btn-primary"</em>、二（定义内联块状元素）：<em>class="layui-inline"</em></p>
      <p>大致记住这些简单的规则，会让你在填充HTML的时候显得更加得心应手。另外，如果你是开发Layui拓展（模块），你最好也要遵循于类似的规则，并且请勿占用Layui已经命名好的类，假设你是在帮Layui开发一个markdown编辑器，你的css书写规则应该如下：</p>
      <pre class="layui-code" lay-title="CSS">
.layui-markdown{border: 1px solid #e2e2e2;}
.layui-markdown-tools{}
.layui-markdown-text{}
      </pre>
    </div>
    
     
    
    <div class="site-title">
      <fieldset><legend><a name="html">HTML规范：结构</a></legend></fieldset>
    </div>
    <div class="site-text">
      <p>Layui在解析HTML元素时，必须充分确保其结构是被支持的。以Tab选项卡为例：</p>
      <pre class="layui-code" lay-title="HTML">
&lt;div class=&quot;layui-tab&quot;&gt;
  &lt;ul class=&quot;layui-tab-title&quot;&gt;
    &lt;li class=&quot;layui-this&quot;&gt;标题一&lt;/li&gt;
    &lt;li&gt;标题二&lt;/li&gt;
    &lt;li&gt;标题三&lt;/li&gt;
  &lt;/ul&gt;
  &lt;div class=&quot;layui-tab-content&quot;&gt;
    &lt;div class=&quot;layui-tab-item layui-show&quot;&gt;内容1&lt;/div&gt;
    &lt;div class=&quot;layui-tab-item&quot;&gt;内容2&lt;/div&gt;
    &lt;div class=&quot;layui-tab-item&quot;&gt;内容3&lt;/div&gt;
  &lt;/div&gt;
&lt;/div&gt;
      </pre>
      <p>你如果改变了结构，极有可能会导致Tab功能失效。所以在嵌套HTML的时候，你应该细读各个元素模块的相关文档（如果你不是拿来主义）</p>
    </div>
    
    <div class="site-title">
      <fieldset><legend><a name="attr">HTML规范：常用公共属性</a></legend></fieldset>
    </div>
    <div class="site-text">
      <p>很多时候，元素的基本交互行为，都是由模块自动开启。但不同的区域可能需要触发不同的动作，这就需要你设定我们所支持的自定义属性来作为区分。如下面的 <em>lay-submit</em>、<em>lay-filter</em>即为公共属性（即以 <em>lay-</em> 作为前缀的自定义属性）：</p>
      <pre class="layui-code">
&lt;button class="layui-btn" lay-submit lay-filter="login">登入&lt;/button>      
      </pre>
      <p>目前我们的公共属性如下所示（即普遍运用于所有元素上的属性）</p>
      <table class="layui-table">
        <thead>
          <tr>
            <th style="width: 100px;">属性</th>
            <th>描述</th>
          </tr> 
        </thead>
        <tbody>
          <tr>
            <td>lay-skin=" "</td>
            <td>定义相同元素的不同风格，如checkbox的开关风格</td>
          </tr>
          <tr>
            <td>lay-filter=" "</td>
            <td>事件过滤器。你可能会在很多地方看到他，他一般是用于监听特定的自定义事件。你可以把它看作是一个ID选择器</td>
          </tr>
          <tr>
            <td>lay-submit</td>
            <td>定义一个触发表单提交的button，不用填写值</td>
          </tr>
          <tr>
        </tbody>
      </table>
      <p>额，好像有点少的样子（反正你也基本不会看文档。。(づ╥﹏╥)づ）。其它的自定义属性基本都在各自模块的文档中有所介绍。</p>
    </div>
    
    <div class="site-title">
      <fieldset><legend><a name="other">结语</a></legend></fieldset>
    </div>
    <div class="site-text">
      <p>其实很多时候并不想陈列条条框框（除了一些特定需要的），所以你会发现本篇的篇幅较短。（哈哈哈哈哈，其实是写文档写得想吐了）</p>
    </div>
    
    <div class="layui-elem-quote">
  <p>layui - 用心与你沟通</p>
</div>
    
  </div>
</div>
  
<div class="layui-footer footer footer-doc">
  <div class="layui-main">
    <p>&copy; 2019 <a href="/">layui.com</a> MIT license</p>
    <p>
      <a href="http://fly.layui.com/case/2019/" target="_blank">案例</a>
      <a href="http://fly.layui.com/jie/3147/" target="_blank">支持</a>
      <!--<a href="javascript:;" site-event="contactInfo">联系</a>-->
      <a href="https://github.com/sentsin/layui/" target="_blank" rel="nofollow">GitHub</a>
      <a href="https://gitee.com/sentsin/layui" target="_blank" rel="nofollow">码云</a>
      <a href="http://fly.layui.com/jie/2461/" target="_blank" class="layui-hide-xs">公众号</a>
      <a href="http://www.miitbeian.gov.cn/" target="_blank" rel="nofollow">赣ICP备13006272号-2</a>
    </p>
    <div class="site-union">
      <p class="site-union-desc">
        <span>
          感谢以下平台提供云加速支持
        </span>
      </p>
      <p>    
        <a href="https://console.upyun.com/register/?invite=SJ0wu6g2-" target="_blank" rel="nofollow" sponsor="upyun">
          <img src="//res.layui.com/static/images/other/upyun.png?t=1">
        </a>    
        <a href="https://www.maoyuncloud.com/?from=layui" target="_blank" rel="nofollow" sponsor="maoyun">
          <img src="//cdn.layui.com/upload/2019_5/168_1559291577683_9348.png">
        </a>
      </p>
    </div>
  </div>
</div>
<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<div class="site-tree-mobile layui-hide">
  <i class="layui-icon">&#xe602;</i>
</div>
<div class="site-mobile-shade"></div>
<script src="//res.layui.com/layui/dist/layui.js?t=1568076536509" charset="utf-8"></script>
<script>
window.global = {
  pageType: 'doc'
  ,preview: function(){
    var preview = document.getElementById('LAY_preview');
    return preview ? preview.innerHTML : '';
  }()
};
layui.config({
  base: '//res.layui.com/static/lay/modules/layui/'
  ,version: '1568076536509'
}).use('global');
</script>
 
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?d214947968792b839fd669a4decaaffc";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>

<script>
</script>
</body>
</html>