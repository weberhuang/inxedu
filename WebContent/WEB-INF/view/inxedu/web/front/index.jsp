<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/base.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>首页</title>
<script>
	var theme_color = '${theme_color}';
</script>
</head> 
<body>
	<div class="i-slide">
		<section>
			<!-- 如果需要导航按钮 -->
			<a class="arrow-left s-arrow" href="javascript:void(0)"></a>
			<a class="arrow-right s-arrow" href="javascript:void(0)"></a>
			<!-- 图片位置 -->
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<c:forEach var="image" items="${websiteImagesList}" varStatus="status">
						<div class="swiper-slide" style="background: <c:if test="${empty image.color}">#EF550F;</c:if><c:if test="${!empty image.color}">${image.color}</c:if>;">
							<img class="imgload" src="<%=staticImage%>${image.imagesUrl}" alt="${image.title}">
						</div>
					</c:forEach>
				</div>
			</div>
			<!-- 如果需要分页器 -->
			<div class="pagination"></div>			
		</section>
	</div>
	
	<!-- 课程列表、五大优势開始 -->
	<div>
			<section class="container">
			   <div class="swiper-slide" style="background:#FFFFFF" >
					<img class="imgload" style="height: 600px;width: 1200px" src="${ctx}/images/upload/image/20171023/topSalary.png" >
				</div>	
			</section>
			<section class="container">	
				<div class="swiper-slide" style="background:#FFFFFF">
					<img class="imgload" style="height: 560px;width: 1200px" src="${ctx}/images/upload/image/20171023/advanteges.png" >
				</div>
			</section>
		</div>
	<!-- 课程列表、五大优势结束 -->
		
   	<!-- /师资团队 开始 -->
		<div>
			<section class="container">
				<header class="comm-title">
		
					<h2 class="tac">	
					    <br/>
					    <br/>					 					
					    <p><span class="c-333">师资团队</span></p>
					</h2>
				</header>
				<div>
					<article class="i-teacher-list">
						<ul class="of">
							<c:forEach items="${teacherList}" var="teacher" varStatus="index">
								<li>
									<section class="i-teach-wrap">
										<div class="i-teach-pic">
											<a href="${ctx}/front/teacher/${teacher.id}" title="${teacher.name}">
												<c:if test="${not empty teacher.picPath&&teacher.picPath!=''}">
													<img alt="${teacher.name}" src="<%=staticImage%>${teacher.picPath}"   xsrc="${ctx}/static/inxweb/img/default-tea-img.gif">
												</c:if>
												<c:if test="${empty teacher.picPath||teacher.picPath==''}">
													<img alt="${teacher.name}" src="${ctx}/static/inxweb/img/default-img.gif" xsrc="${ctx}/static/inxweb/img/default-img.gif">
												</c:if>
											</a>
										</div>
										<div class="mt10 hLh30 txtOf tac">
											<a href="${ctx}/front/teacher/${teacher.id}" title="${teacher.name}" class="fsize18 c-666">${teacher.name}</a>
										</div>
										<div class="hLh30 txtOf tac">
											<span class="fsize14 c-999">${teacher.education }</span>
										</div>
										<div class="mt15 i-q-txt">
											<p class="c-999 f-fA">${teacher.career }</p>
										</div>
									</section>
								</li>
							</c:forEach>
						</ul>
						<div class="clear"></div>
					</article>
					<section class="tac pt20">
						<a href="${ctx}/front/teacherlist" title="全部讲师" class="comm-btn c-btn-2">全部讲师</a>
					</section>
				</div>
			</section>
		</div>
		<!-- /师资团队 结束 -->
		
	<!-- 合作院校、合作单位开始 -->
	<div>
			<section class="container">
				<header class="comm-title">
					<h2 class="tac">
						<span class="c-333">合作院校</span>
					</h2>
				</header>
				<div class="swiper-slide"  style="background:#FFFFFF">
					<img class="imgload" style="height: 480px;width: 1200px"  src="${ctx}/images/upload/image/20171023/acdemy.png" >
				</div>
		
			</section>
			<section class="container">
				<header class="comm-title">
					<h2 class="tac">
						<span class="c-333">合作企业</span>
					</h2>
				</header>
				<div class="swiper-slide" style="background:#FFFFFF">
					<img class="imgload" style="height: 400px;width: 1200px" src="${ctx}/images/upload/image/20171023/enterprise.png" >
				</div>
				
	
			</section>
		</div>
	<!-- 合作院校、合作企业结束 -->
	<!-- 底部图片开始 -->
	<div>
			<section class="container">
				<header class="comm-title">
					<h2 class="tac">
						<span class="c-333"></span>
					</h2>
				</header>
				<div class="swiper-slide" style="background:#FFFFFF">
					<img class="imgload" style="height: 560px;width: 1200px" src="${ctx}/images/upload/image/20171023/button.png" >
				</div>
		
			</section>
	
	</div>
	<!-- 底部图片结束 -->
	
	<!-- /网校课程 开始 -->
		<div>
			<section class="container">
				<header class="comm-title">
					<h2 class="tac">	
					    <br/>
					    <br/>					
						<p><span class="c-333">课程试听</span></p>
					</h2>
				</header>
				<div>
					<section class="c-tab-title">
						<a href="javascript:void(0)" title="精品课程" onclick="bna('FOLLOW',this)" class="current boutiqueCourse">精品课程</a>
						<a href="javascript:void(0)" title="最新课程" onclick="bna('NEW',this)">最新课程</a>
						<a href="javascript:void(0)" title="全部课程" onclick="bna('ALL',this)">全部课程</a>
					</section>
				</div>
				<div>
					<article class="comm-course-list">
						<ul class="of" id="bna">
						</ul>
						<div class="clear"></div>
					</article>
					<section class="tac pt20">
						<a href="${ctx }/front/showcoulist" title="全部课程" class="comm-btn c-btn-2">全部课程</a>
					</section>
				</div>
			</section>
		</div>
		<!-- /网校课程 结束 -->
		<!-- /课程互动 开始-->
		<div class="bg-fa of mt30">
			<section class="container">
				<article class="fl col-7">
					<div class="mr50">
						<header class="comm-title">
							<h2 class="fl tac">
								<span class="c-333">课程互动</span>
							</h2>
						</header>
						<div class="i-question-list">
							<ul id="iQuestion">
								<c:forEach var="com" items="${commentList}" varStatus="status">
									<li>
										<section class="i-q-l-wrap">
											<div class="u-face">
												<c:if test="${empty com.picImg }">
													<img width="50" height="50" class="picImg" src="${ctx }/static/inxweb/img/avatar-boy.gif">
												</c:if>
												<c:if test="${!empty com.picImg }">
													<img width="50" height="50" class="picImg" src="<%=staticImage%>${com.picImg }">
												</c:if>
											</div>
											<section class="hLh20 of">
												<span class="fr"><tt class="c-ccc f-fG"><fmt:formatDate value="${com.addTime }" pattern="yyyy/MM/dd HH:mm" /></tt></span> 
												<span class="fsize16 c-666">
												 	<c:if test="${empty com.userName }">
														${com.email}
													</c:if>
													<c:if test="${!empty com.userName }">
														${com.userName}
													</c:if>
												</span> 
											    <span class="fsize14 c-999 ml5 f-fA">评论课程：</span>
											</section>
											<section class="hLh20 of mt10">
												<a class="c-master fsize14" href="${ctx}/front/couinfo/${com.courseId}">《${com.courseName}》</a>
											</section>
											<section class="i-q-txt">
												<p>
													<span class="c-999 f-fA"> ${com.content} </span>
												</p>
											</section>
										</section>
									</li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</article>
				<aside class="fl col-3">
					<header class="comm-title">
						<!-- <span class="fr"><a class="c-master" title="" href="">换一换</a></span> -->
						<h2 class="fl tac">
							<span class="c-333">学生动态</span>
						</h2>
					</header>
					<div class="stud-act-list">
						<section>
							<ul id="s-action" class="studentDynamicHtml">
								<li>
									<div class="u-face">
										<img src="${ctx}/static/inxweb/img/avatar-boy.gif" width="50" height="50" alt="">
									</div>
									<section class="hLh30 txtOf">
										<span class="c-ccc fr">1分钟前</span> <span class="c-333 fsize16 fl">李小醒目梦空</span>
									</section>
									<section class="hLh20 txtOf">
										<span class="c-999">购买了</span> <span class="c-master">“史上最牛的Liunx基础教程”</span>
									</section>
								</li>
							</ul>
						</section>
					</div>
				</aside>
				<div class="clear"></div>
			</section>
		</div>
		<!-- /课程互动 结束-->
	
	
	</div>
	<script type="text/javascript" src="${ctx}/static/inxweb/js/swiper-2.1.0.js"></script>
	<script type="text/javascript" src="${ctx}/static/inxweb/front/index.js"></script>
	<script type="text/javascript" src="${ctx}/static/inxweb/front/index_theme_color.js"></script><!-- 换肤 -->
	<script>
		$(function() {
			sSwiperFun(); //幻灯片调取
			upSlideFun("#iQuestion"); //向上滚动互动
			scrollLoad(); //响应滚动加载课程图片
			$(".boutiqueCourse").click();//网校课程-精品课程
			huanyihuan();
			studentDynamic();//学生动态
		});
	</script>
</body>
</html>