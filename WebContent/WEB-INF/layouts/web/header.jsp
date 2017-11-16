<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="/base.jsp"%>
<!-- /global header begin-->
<header id="header">
	<section class="container">
		<h1 id="logo" align="right">
			<a href="${ctx }/" title="${websitemap.web.company}">
				<img src="${ctx}/images/upload/websiteLogo/20150820/1440035056371.png" width="100%" alt="${websitemap.web.company}">
			</a>
		</h1>
		<h1  style="position:absolute;left:420px;top:40px;" >
			中国数据人才唯一培养单位！
		</h1>
		<h1 id="logo2" align="right" >
			 <a  href="${ctx }/" title="${websitemap.web.company}" >
				<img src="${ctx}/images/upload/websiteLogo/20150820/1440035056372.png" width="25%" alt="${websitemap.web.company}">
			</a>
		</h1>

			<div class="h-r-nsl">
			<ul class="nav">
				<c:forEach items="${navigatemap.INDEX}" var="indexNavigate">
					<li><a href="${ctx}${indexNavigate.url}" title="${indexNavigate.name}" <c:if test="${indexNavigate.newPage==0}">target="_blank"</c:if>>${indexNavigate.name}</a></li>
				</c:forEach>
			</ul>
		
		</div>
		<aside class="mw-nav-btn">
			<div class="mw-nav-icon"></div>
		</aside>
		<div class="clear"></div>
	</section>
</header>
<!-- /global header end-->
<div class="h-mobile-mask"></div>
<div class="head-mobile">
	<div class="head-mobile-box">
		<section class="clearfix">
			<div class="u-face-pic">
				<img src="${ctx }/static/inxweb/img/avatar-boy.gif" alt="" class="userImgPhoto">
				<a href="${ctx }/uc/initUpdateUser/1" title="" class="c-fff">修改头象</a>
			</div>
			<h4 class="hLh30 txtOf">
				<span class="fsize16 c-ccc userNameClass">
					<span class="vam ml5" style="cursor:pointer;" onclick="lrFun()">登录</span>
				</span>
			</h4>
			<div class="hLh30">
				<a href="${ctx }/uc/initUpdateUser/0" title="个人资料设置" class="c-999">个人资料设置</a>
			</div>
		</section>
		<nav class="mw-nav">
			<ul class="clearfix">
				<c:forEach items="${navigatemap.INDEX}" var="indexNavigate">
					<li><a href="${ctx}${indexNavigate.url}" title="${indexNavigate.name}" <c:if test="${indexNavigate.newPage==0}">target="_blank"</c:if>>${indexNavigate.name}</a></li>
				</c:forEach>
			</ul>
		</nav>
		<section class="u-m-dd">
			<ul>
				<li>
					<span>Wo的学习</span> 
					<ol>
						<li class="current"><a href="javascript:void()" onclick="mobileHrefCheckLogin('${ctx }/uc/index')" title="">Wo的课程</a></li>
						<li><a href="javascript:void()" onclick="mobileHrefCheckLogin('${ctx }/uc/order/myOrderList/SUCCESS')" title="">Wo的订单</a></li>
						<li><a href="javascript:void()" onclick="mobileHrefCheckLogin('${ctx }/front/showcoulist')" title="">选课中心</a></li>
						<li><a href="javascript:void()" onclick="mobileHrefCheckLogin('${ctx }/uc/myFavorites')" title="">Wo的收藏</a></li>
					</ol>
				</li>
			</ul>
			<ul>
				<li>
					<span>Wo的问答</span>
					<ol>
						<li><a href="javascript:void()" onclick="mobileHrefCheckLogin('${ctx }/uc/myquestions/list')" title="">Wo的提问</a></li>
						<li><a href="javascript:void()" onclick="mobileHrefCheckLogin('${ctx }/uc/myrepquestions/list')" title="">Wo的回答</a></li>
					</ol>
				</li>
			</ul>
			<ul>
				<li>
					<span>Wo的资料</span>
					<ol>
						<li><a href="javascript:void()" onclick="mobileHrefCheckLogin('${ctx }/uc/initUpdateUser/0')" title="">基本资料</a></li>
						<li><a href="javascript:void()" onclick="mobileHrefCheckLogin('${ctx }/uc/initUpdateUser/1')" title="">个人头象</a></li>
						<li><a href="javascript:void()" onclick="mobileHrefCheckLogin('${ctx }/uc/initUpdateUser/2')" title="">密码设置</a></li>
					</ol>
				</li>
			</ul>
			<ul>
				<li>
					<span>Wo的消息</span>
					<ol>
						<li><a href="javascript:void()" onclick="mobileHrefCheckLogin('${ctx }/uc/letter')" title="">系统消息</a></li>
					</ol>
				</li>
			</ul>
		</section>
	</div>
</div>
<script>
	$(function() {
		wmNavFun(); // 手机端导航方法
		goTopFun(); //返回顶部
	})
</script>