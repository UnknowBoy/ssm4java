<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!--<meta http-equiv="Access-Control-Allow-Origin" content="*">-->
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="Bookmark" href="/static/img/favicon.ico">
<link rel="Shortcut Icon" href="/static/img/favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5shiv.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->

<link rel="stylesheet" type="text/css"
	href="/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css"
	href="/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css"
	href="/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css"
	href="/static/h-ui.admin/skin/green/skin.css" id="skin" />
<link rel="stylesheet" type="text/css"
	href="/static/h-ui.admin/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->

<title>RS-ERP</title>
</head>

<body>
	<header class="navbar-wrapper">
		<div class="navbar navbar-fixed-top">
			<div class="container-fluid cl">
				<a class="logo navbar-logo f-l mr-10 hidden-xs" href="index.html"><img
					style="width: 400px" src="/static/h-ui.admin/images/erplogo.png"></a>
				<a class="logo navbar-logo-m f-l mr-10 visible-xs" href="index.html">RS-ERP</a>
				<a aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs"
					href="javascript:;">&#xe667;</a>
				<nav class="nav navbar-nav">
					<ul class="cl">
						<li class="dropDown dropDown_hover"><a href="javascript:;"
							class="dropDown_A"><i class="Hui-iconfont">&#xe600;</i> 新增 <i
								class="Hui-iconfont">&#xe6d5;</i></a>
							<ul class="dropDown-menu menu radius box-shadow">
								<li><a href="javascript:;"
									onclick="article_add('添加资讯','article-add.html')"><i
										class="Hui-iconfont">&#xe616;</i> 资讯</a></li>
								<li><a href="javascript:;"
									onclick="picture_add('添加资讯','picture-add.html')"><i
										class="Hui-iconfont">&#xe613;</i> 图片</a></li>
								<li><a href="javascript:;"
									onclick="product_add('添加资讯','product-add.html')"><i
										class="Hui-iconfont">&#xe620;</i> 产品</a></li>
								<li><a href="javascript:;"
									onclick="member_add('添加用户','member-add.html','','510')"><i
										class="Hui-iconfont">&#xe60d;</i> 用户</a></li>
							</ul>
						<li class="navbar-levelone current"><a href="javascript:;">WMS系统</a></li>
						<li class="navbar-levelone"><a href="javascript:;">TMS系统</a></li>
						<li class="navbar-levelone"><a href="javascript:;">ERP系统</a></li>
						<li class="navbar-levelone"><a href="javascript:;">权限管理</a></li>
						</li>
					</ul>
				</nav>
				<nav id="Hui-userbar"
					class="nav navbar-nav navbar-userbar hidden-xs">
					<ul class="cl">
						<li>超级管理员</li>
						<li class="dropDown dropDown_hover"><a href="#"
							class="dropDown_A">${user.userName } <i class="Hui-iconfont">&#xe6d5;</i></a>
							<ul class="dropDown-menu menu radius box-shadow">
								<li><a href="javascript:;" onClick="myselfinfo()">个人信息</a></li>
								<li><a href="#">切换账户</a></li>
								<li><a href="logout">退出</a></li>
							</ul></li>
						<li id="Hui-msg"><a href="#" title="消息"><span
								class="badge badge-danger">1</span><i class="Hui-iconfont"
								style="font-size: 18px">&#xe68a;</i></a></li>
						<li id="Hui-skin" class="dropDown right dropDown_hover"><a
							href="javascript:;" class="dropDown_A" title="换肤"><i
								class="Hui-iconfont" style="font-size: 18px">&#xe62a;</i></a>
							<ul class="dropDown-menu menu radius box-shadow">
								<li><a href="javascript:;" data-val="default"
									title="默认（黑色）">默认（黑色）</a></li>
								<li><a href="javascript:;" data-val="blue" title="蓝色">蓝色</a>
								</li>
								<li><a href="javascript:;" data-val="green" title="绿色">绿色</a>
								</li>
								<li><a href="javascript:;" data-val="red" title="红色">红色</a></li>
								<li><a href="javascript:;" data-val="yellow" title="黄色">黄色</a>
								</li>
								<li><a href="javascript:;" data-val="orange" title="橙色">橙色</a>
								</li>
							</ul></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>
	<aside class="Hui-aside">
		<div class="menu_dropdown bk_2">
			<dl id="menu-wms">
				<c:forEach var="menuMap1" items="${WMS_menus}" varStatus="vs1">
					<dt class=menu1>
						<i class="Hui-iconfont">&#xe608;</i> ${menuMap1.key } <i
							class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
					</dt>
					<dd class=content1>
						<dl>
							<c:forEach var="menuMap2" items="${menuMap1.value}"
								varStatus="vs2">
								<dt class="menu2" style="margin-left: 20px">
									<i class="Hui-iconfont">&#xe677;</i>${menuMap2.key }<i
										class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
								</dt>
								<dd class="content2">
									<ul>
										<c:forEach var="menuList3" items="${menuMap2.value}"
											varStatus="vs3">
											<li><a data-href="${menuList3.urlAddr }" data-title="${menuList3.menuName }" >${menuList3.menuName }</a></li>
										</c:forEach>
									</ul>
								</dd>
							</c:forEach>
						</dl>
					</dd>
				</c:forEach>
			</dl>
		</div>
		<div class="menu_dropdown bk_2" style="display: none">
			<dl id="menu-tms">
				<c:forEach var="menuMap1" items="${TMS_menus}" varStatus="vs1">
					<dt class=menu1>
						<i class="Hui-iconfont">&#xe608;</i> ${menuMap1.key } <i
							class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
					</dt>
					<dd class=content1>
						<dl>
							<c:forEach var="menuMap2" items="${menuMap1.value}"
								varStatus="vs2">
								<dt class="menu2" style="margin-left: 20px">
									<i class="Hui-iconfont">&#xe677;</i>${menuMap2.key }<i
										class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
								</dt>
								<dd class="content2">
									<ul>
										<c:forEach var="menuList3" items="${menuMap2.value}"
											varStatus="vs3">
											<li><a data-href="${menuList3.urlAddr }" data-title="${menuList3.menuName }" >${menuList3.menuName }</a></li>
										</c:forEach>
									</ul>
								</dd>
							</c:forEach>
						</dl>
					</dd>
				</c:forEach>
			</dl>
		</div>
		<div class="menu_dropdown bk_2" style="display: none">
			<dl id="menu-erp">
				<c:forEach var="menuMap1" items="${ERP_menus}" varStatus="vs1">
					<dt class=menu1>
						<i class="Hui-iconfont">&#xe608;</i> ${menuMap1.key } <i
							class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
					</dt>
					<dd class=content1>
						<dl>
							<c:forEach var="menuMap2" items="${menuMap1.value}"
								varStatus="vs2">
								<dt class="menu2" style="margin-left: 20px">
									<i class="Hui-iconfont">&#xe677;</i>${menuMap2.key }<i
										class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
								</dt>
								<dd class="content2">
									<ul>
										<c:forEach var="menuList3" items="${menuMap2.value}"
											varStatus="vs3">
											<li><a data-href="${menuList3.urlAddr }" data-title="${menuList3.menuName }" >${menuList3.menuName }</a></li>
										</c:forEach>
									</ul>
								</dd>
							</c:forEach>
						</dl>
					</dd>
				</c:forEach>
			</dl>
		</div>
		<div class="menu_dropdown bk_2" style="display: none">
			<dl id="menu-authority">
				<c:forEach var="menuMap1" items="${AUTHORITY_menus}" varStatus="vs1">
					<dt class=menu1>
						<i class="Hui-iconfont">&#xe608;</i> ${menuMap1.key } <i
							class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
					</dt>
					<dd class=content1>
						<dl>
							<c:forEach var="menuMap2" items="${menuMap1.value}"
								varStatus="vs2">
								<dt class="menu2" style="margin-left: 20px">
									<i class="Hui-iconfont">&#xe677;</i>${menuMap2.key }<i
										class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
								</dt>
								<dd class="content2">
									<ul>
										<c:forEach var="menuList3" items="${menuMap2.value}"
											varStatus="vs3">
											<li><a data-href="${menuList3.urlAddr }" data-title="${menuList3.menuName }" >${menuList3.menuName }</a></li>
										</c:forEach>
									</ul>
								</dd>
							</c:forEach>
						</dl>
					</dd>
				</c:forEach>
			</dl>
		</div>
	</aside>
	<div class="dislpayArrow hidden-xs">
		<a class="pngfix" href="javascript:void(0);"
			onClick="displaynavbar(this)"></a>
	</div>
	<section class="Hui-article-box">
		<div id="Hui-tabNav" class="Hui-tabNav hidden-xs">
			<div class="Hui-tabNav-wp">
				<ul id="min_title_list" class="acrossTab cl">
					<li class="active"><span title="我的桌面" data-href="welcome">我的桌面</span>
						<em></em></li>
				</ul>
			</div>
			<div class="Hui-tabNav-more btn-group">
				<a id="js-tabNav-prev" class="btn radius btn-default size-S"
					href="javascript:;"><i class="Hui-iconfont">&#xe6d4;</i></a> <a
					id="js-tabNav-next" class="btn radius btn-default size-S"
					href="javascript:;"><i class="Hui-iconfont">&#xe6d7;</i></a>
			</div>
		</div>
		<div id="iframe_box" class="Hui-article">
			<div class="show_iframe">
				<div style="display: none" class="loading"></div>
				<iframe scrolling="yes" frameborder="0" src="welcome"></iframe>
			</div>
		</div>
	</section>

	<div class="contextMenu" id="Huiadminmenu">
		<ul>
			<li id="closethis">关闭当前</li>
			<li id="closeall">关闭全部</li>
		</ul>
	</div>
	<!--_footer 作为公共模版分离出去-->
	<script type="text/javascript" src="/lib/jquery/1.9.1/jquery.min.js"></script>
	<!--<script type="text/javascript" src="https://github.com/douglascrockford/JSON-js/blob/master/json2.js"></script>-->
	<script type="text/javascript" src="/lib/layer/2.4/layer.js"></script>
	<script type="text/javascript" src="/static/h-ui/js/H-ui.min.js"></script>
	<script type="text/javascript"
		src="/static/h-ui.admin/js/H-ui.admin.js"></script>
	<script type="text/javascript" src="/static/h-ui.admin/js/jsMenu.js"></script>
	<!--/_footer 作为公共模版分离出去-->

	<!--请在下方写此页面业务相关的脚本-->
	<script type="text/javascript"
		src="/lib/jquery.contextmenu/jquery.contextmenu.r2.js"></script>
	<script type="text/javascript">
		$(".Hui-aside").Huifold({
			titCell : '.menu_dropdown .menu1',
			mainCell : '.menu_dropdown .content1',
		});
		$(".Hui-aside").Huifold({
			titCell : '.menu_dropdown .menu2',
			mainCell : '.menu_dropdown .content2',
		});
		$(function() {
			/*$("#min_title_list li").contextMenu('Huiadminmenu', {
			bindings: { 'closethis': function(t) { console.log(t); if(t.find("i")){
			t.find("i").trigger("click"); } }, 'closeall': function(t) {
			alert('Trigger was '+t.id+'\nAction was Email'); }, } });*/

			$("body").Huitab({
				tabBar : ".navbar-wrapper .navbar-levelone",
				tabCon : ".Hui-aside .menu_dropdown",
				className : "current",
				index : 0,
			});
		});
		/*个人信息*/
		function myselfinfo() {
			layer.open({
				type : 1,
				area : [ '300px', '200px' ],
				fix : false, //不固定 maxmin: true, shade: 0.4, title: '查看信息',
				content : '<div>管理员信息</div>'
			});
		}
		/*资讯-添加*/
		function article_add(title, url) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
		}
		/*图片-添加*/
		function picture_add(title, url) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
		}
		/*产品-添加*/
		function product_add(title, url) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
		}
		/*用户-添加*/
		function member_add(title, url, w, h) {
			layer_show(title, url, w, h);
		}
	</script>
</body>

</html>