<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="/base.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>部分学员列表</title>
</head>
<body>
	<div id="aCoursesList" class="bg-fa of">
		<section class="container">
			<section class="i-article">
				<div class="fl col-7">
					<section class="mr30">
						<header class="comm-title all-article-title">
							<h2 class="fl tac">
								<span class="c-333">学员</span>
							</h2>
							<section class="c-tab-title">
								<a href="javascript: void(0)">&nbsp;</a>
							</section>
						</header>
						<!-- /无数据提示 开始-->
						<c:if test="${empty studentList }">
							<section class="no-data-wrap">
								<em class="icon30 no-data-ico">&nbsp;</em> <span class="c-666 fsize14 ml10 vam">没有相关数据，小编正在努力整理中...</span>
							</section>
						</c:if>
						<!-- /无数据提示 结束-->
						<student class="i-article-list">
							<!-- /学员展示列表 开始-->
							<ul>
								<c:if test="${not empty studentList }">
									<c:forEach var="student" items="${studentList }">
										<li>
											<aside class="i-article-pic">
												<img xSrc="<%=staticImage%>${student.imageUrl }" src="${ctx }/static/inxweb/img/default-img.gif" alt="${student.title }">
											</aside> <!-- ${ctx }/web/article/showInfor/${article.articleId } -->
											<h3 class="hLh30 txtOf">
												<a href="${ctx }/student/studentinfo/${student.studentId}.html" title="${student.title }" class="i-art-title">${student.title }</a>
											</h3>
											<section class="i-q-txt mt5">
												<p>
													<span class="c-999 f-fA">${student.summary }</span>
												</p>
											</section>
											<section class="hLh30 txtOf mt5 pr10">
												<span class="fr"><tt class="c-999 f-fM">
														<!-- 1小时前发布 -->
														<fmt:formatDate value="${student.publishTime }" pattern="yyyy-MM-dd HH:mm" />
													</tt></span>
												<div class="fl">
													<span> <a class="noter-dy vam" title="回答" href="${ctx }/student/studentinfo/${student.studentId}.html">
															<em class="icon18">&nbsp;</em>(<span>${student.commentNum }</span>)
														</a> <tt title="赞一下" class="noter-zan vam ml10 f-fM" onclick="addPraise('${student.studentId}',3)">
															<em class="icon18">&nbsp;</em>(<span class="addPraise${student.studentId}_3 praiseCount">${student.praiseCount }</span>)
														</tt>
													</span>
												</div>
											</section>
										</li>
									</c:forEach>
								</c:if>
							</ul>
							<!-- /学员展示列表 结束-->
						</student>
						<!-- 公共分页 开始 -->
						<form action="${ctx }/student/studentlist" method="post" id="searchForm">
							<input type="hidden" name="page.currentPage" id="pageCurrentPage" value="1">
						</form>
						<div class="paging">
							<jsp:include page="/WEB-INF/view/common/front_page.jsp"></jsp:include>
							<div class="clear"></div>
						</div>
						<!-- 公共分页 结束 -->
					</section>
				</div>
				<!-- 好文推荐 -->
				<aside class="fl col-3 studentRecommend"></aside>
				<div class="clear"></div>
			</section>
		</section>
		<!-- /学员展示列表 结束 -->
	</div>
	<script src="${ctx }/static/inxweb/student/student.js" type="text/javascript"></script>
	<script>
		$(function() {
			studentRecommend();//好文推荐
			scrollLoad(); //响应滚动加载课程图片
		});
	</script>
</body>
</html>