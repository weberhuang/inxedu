<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="/base.jsp"%>
<!DOCTYPE html>
<html>
<head>
<!-- Meta -->
<meta charset="utf-8" http-equiv="Content-Type" />
<!-- End of Meta -->

<!-- Page title -->
<title>${websitemap.web.company}-${websitemap.web.title}</title>
<!-- End of Page title -->
<meta name="author" content="${websitemap.web.author}" />
<meta name="keywords" content="${websitemap.web.keywords}" />
<meta name="description" content="${websitemap.web.description}" />
<link rel="shortcut icon" href="${ctx}/favicon.ico" type="image/x-icon">

<script type="text/javascript" src="${ctx}/static/admin/js/easyTooltip.js"></script>
<script type="text/javascript" src="${ctx}/static/admin/js/jquery-ui-1.7.2.custom.min.js"></script>
<script type="text/javascript" src="${ctx}/static/admin/js/jquery.wysiwyg.js"></script>
<script type="text/javascript" src="${ctx}/static/admin/js/hoverIntent.js"></script>
<script type="text/javascript" src="${ctx}/static/admin/js/superfish.js"></script>
<script type="text/javascript" src="${ctx}/static/admin/js/custom.js"></script>
<!-- End of Libraries -->
<script type="text/javascript">
	 /*sMenu*/
	 $(function() {
	     $("#ui-sMenu>div").each(function() {
	         var _this = $(this),
	                 _oT = _this.find("h3"),
	                 _oTi = _oT.find(".ui-icon"),
	                 _oC = _oT.next("div");
	         _oT.click(function() {
	             if(_oC.is(":hidden")) {
	                 _oT.removeClass("ui-state-default ui-corner-all").addClass("ui-state-active ui-corner-top");
	                 _oTi.removeClass("ui-icon-triangle-1-e").addClass("ui-icon-triangle-1-s");
	                 _oC.slideDown("fast");
	             } else {
	                 _oT.removeClass("ui-state-active ui-corner-top").addClass("ui-state-default ui-corner-all");
	                 _oTi.removeClass("ui-icon-triangle-1-s").addClass("ui-icon-triangle-1-e");
	                 _oC.slideUp("fast");
	             }
	         });
	     });
	 });
</script>
</head>
<body>
	<!-- Container -->
	<div class="tHeader headerimg">
		<div id="container">
			<!-- Header -->
			<div id="header">

				<!-- Top -->
				<div id="top">
					<!-- Logo -->
					<div class="logo">
						<a href="http://demo1.inxedu.com/" target="_blank" title="融信教育 - 中国数据人才唯一培养单位！" class="tooltip">
							<img src="${ctx}/static/admin/assets/logo.png" height="60" alt="融信教育 - 中国数据人才唯一培养单位！" />
						</a>
					</div>
					<!-- End of Logo -->

					<!-- Meta information -->
					<div class="meta">
						<p>欢迎来到${websitemap.web.company}后台管理系统!</p>
						<ul>
							<li>
								<a href="${ctx}/admin/outlogin" title="退出系统" class="tooltip">
									<span class="ui-icon ui-icon-power"></span>
									退出系统
								</a>
							</li>
							<li>
								<a href="${ctx}/admin/sysrole/showroleList" target="content" title="权限设置" class="tooltip">
									<span class="ui-icon ui-icon-wrench"></span>
									权限设置
								</a>
							</li>
							<li>
								<a href="" title="${sysuser.loginName}" class="tooltip">
									<span class="ui-icon ui-icon-person"></span>${sysuser.loginName}</a>
							</li>
						</ul>
					</div>
					<!-- End of Meta information -->
				</div>
				<!-- End of Top-->

			</div>
		</div>
	</div>
	<!-- End of Header -->
	<div id="container">

		<!-- Background wrapper -->
		<div id="bgwrap">
			<!-- Main Content -->
			<div id="content">
				<div id="main">
					<iframe name="content" scrolling="auto" frameborder="0" src="${ctx}/admin/main/index" height="750" width="100%"></iframe>
				</div>
			</div>
			<!-- End of Main Content -->

			<!-- Sidebar -->
			<div id="sidebar">

				<h2>菜单目录 / MENU</h2>
				<!-- Accordion -->
				<div id="ui-sMenu" class="ui-accordion ui-widget ui-helper-reset">
					<c:forEach items="${userFunctionList}" var="uf" varStatus="index">
						<c:choose>
							<c:when test="${index.index==0}">
								<div>
									<h3 class="ui-accordion-header ui-helper-reset ui-state-active ui-corner-top">
										<span class="ui-icon ui-icon-triangle-1-s"></span>
										<c:choose>
											<c:when test="${uf.functionUrl==null || uf.functionUrl==''}">
												<a href="javascript:void(0)" title="${uf.functionName}" class="tooltip">${uf.functionName}</a>
											</c:when>
											<c:otherwise>
												<a href="${ctx}${uf.functionUrl}" target="content" title="${uf.functionName}" class="tooltip">${uf.functionName}</a>
											</c:otherwise>
										</c:choose>
									</h3>
									<div class="ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom" style="display: block;">
										<c:if test="${uf.childList!=null && uf.childList.size()>0}">
											<c:forEach items="${uf.childList}" var="cuf">
												<dl class="acd-sub-dl">
													<c:choose>
														<c:when test="${cuf.functionUrl==null || cuf.functionUrl==''}">
															<dt>
																<a href="javascript:void(0)" title="${cuf.functionName}">${cuf.functionName}</a>
															</dt>
														</c:when>
														<c:otherwise>
															<dt>
																<a href="${ctx}${cuf.functionUrl}" target="content" title="${cuf.functionName}">${cuf.functionName}</a>
															</dt>
														</c:otherwise>
													</c:choose>
													<c:if test="${cuf.childList!=null && cuf.childList.size()>0}">
														<c:forEach items="${cuf.childList}" var="ccuf">
															<c:choose>
																<c:when test="${ccuf.functionUrl==null || ccuf.functionUrl==''}">
																	<dd>
																		<a href="javascript:void(0)" title="${ccuf.functionName}">${ccuf.functionName}</a>
																	</dd>
																</c:when>
																<c:otherwise>
																	<dd>
																		<a href="${ctx}${ccuf.functionUrl}" target="content" title="${ccuf.functionName}">${ccuf.functionName}</a>
																	</dd>
																</c:otherwise>
															</c:choose>
														</c:forEach>
													</c:if>
												</dl>
											</c:forEach>
										</c:if>
									</div>
								</div>
							</c:when>
							<c:otherwise>
								<div>
									<h3 class="ui-accordion-header ui-helper-reset ui-state-default ui-corner-all">
										<span class="ui-icon ui-icon-triangle-1-e"></span>
										<c:choose>
											<c:when test="${uf.functionUrl==null || uf.functionUrl==''}">
												<a href="javascript:void(0)" title="${uf.functionName}" class="tooltip">${uf.functionName}</a>
											</c:when>
											<c:otherwise>
												<a href="${ctx}${uf.functionUrl}" target="content" title="${uf.functionName}" class="tooltip">${uf.functionName}</a>
											</c:otherwise>
										</c:choose>
									</h3>
									<div class="ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom">
										<c:if test="${uf.childList!=null && uf.childList.size()>0}">
											<c:forEach items="${uf.childList}" var="cuf">
												<dl class="acd-sub-dl">
													<c:choose>
														<c:when test="${cuf.functionUrl==null && cuf.functionUrl==''}">
															<dt>
																<a href="javascript:void(0)" title="${cuf.functionName}">${cuf.functionName}</a>
															</dt>
														</c:when>
														<c:otherwise>
															<dt>
																<a href="${ctx}${cuf.functionUrl}" target="content" title="${cuf.functionName}">${cuf.functionName}</a>
															</dt>
														</c:otherwise>
													</c:choose>
													<c:if test="${cuf.childList!=null && cuf.childList.size()>0}">
														<c:forEach items="${cuf.childList}" var="ccuf">
															<c:choose>
																<c:when test="${ccuf.functionUrl==null || ccuf.functionUrl==''}">
																	<dd>
																		<a href="javascript:void(0)" title="${ccuf.functionName}">${ccuf.functionName}</a>
																	</dd>
																</c:when>
																<c:otherwise>
																	<dd>
																		<a href="${ctx}${ccuf.functionUrl}" target="content" title="${ccuf.functionName}">${ccuf.functionName}</a>
																	</dd>
																</c:otherwise>
															</c:choose>
														</c:forEach>
													</c:if>
												</dl>
											</c:forEach>
										</c:if>
									</div>
								</div>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</div>
				<!-- End of Accordion-->

				<!-- <h2>便捷日历 / Calendar</h2> -->
				<!-- Datepicker -->
				<!-- <div id="datepicker"></div> -->
				<!-- End of Datepicker -->

				<!-- Statistics -->
				<h2>数据统计 / DATA</h2>
				<p>
					<b>文章数:</b> ${articleCount}
				</p>
				<p>
					<b>课程数:</b> ${courseCount}
				</p>
				<p>
					<b>用户数:</b> ${userCount}
				</p>
			</div>
			<!-- End of Sidebar -->

		</div>
		<!-- End of bgwrap -->
	</div>
	<!-- End of Container -->

	<!-- Footer -->
	<div id="footer">
		<%-- <p class="mid">
			<c:forEach items="${navigatemap.TAB}" var="indexNavigate" varStatus="index">
				<a href="${indexNavigate.url}" title="${indexNavigate.name}" <c:if test="${indexNavigate.newPage==0}">target="_blank"</c:if>
					class="tooltip">${indexNavigate.name}</a>
				<c:if test="${index.index+1 < navigatemap.TAB.size()}">&middot;</c:if>
			</c:forEach>
		</p> --%>
		<p class="mid">${websitemap.web.copyright}</p>
		<p class="mid">
			Powered By <a target="_blank" href="http://www.rxzxedu.com/" style="color: #666;">${websitemap.web.company}</a>
		</p>
	</div>
</body>
</html>


