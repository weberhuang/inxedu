<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="/base.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>学员详情</title>
<script src="${ctx }/static/inxweb/student/student.js" type="text/javascript"></script>
<script src="${ctx }/static/inxweb/comment/comment.js" type="text/javascript"></script>
<script type="text/javascript">
	//全局变量 
	var otherId = '${student.studentId}';
	var studentId = '${student.studentId}';
	var type = 1;
	$(function() {
		//添加浏览量
		updateStudentClickNum();
		//好文推荐
		studentRecommend();
		queryComment();
	});
</script>
</head>
<body>
	<div class="bg-fa of">
		<section class="container">
			<section class="i-article">
				<div class="fl col-7">
					<section class="mr30">
						<section class="path-wrap">
							<a href="${ctx }" title="首页" class="c-999 fsize14">首页</a>
							\
							<a href="${ctx}/student/studentlist" title="" class="c-999 fsize14">学员展示列表</a>
							\ <span class="c-333 fsize14">${student.title }</span>
						</section>
						<article class="article-infor-box pt10 pr20">
							<h3 class="hLh30 txtOf">
								<span class="i-art-title">${student.title }</span>
							</h3>
							<section class="hLh30 txtOf mt5 pr10 pb20 mreadnum">
								<div class="fr">
									<span> <a class="noter-dy vam" title="评论" href="#i-art-comment">
											<em class="icon18">&nbsp;</em>(<span class="totalResultComment">0</span>)
										</a> <tt title="赞一下" onclick="addPraise('${student.studentId}',3)" class="noter-zan vam ml10 f-fM">
											<em class="icon18">&nbsp;</em>(<span class="addPraise${student.studentId}_3 praiseCount">0</span>)
										</tt>
									</span>
								</div>
								<span class="fl"> <tt class="c-999 f-fM">来源：${student.source }</tt> <tt class="c-999 f-fM ml20">
										<!-- 1小时前发布 -->
										<fmt:formatDate value="${student.publishTime }" pattern="yyyy-MM-dd HH:mm" />发布
									</tt> <tt class="c-999 f-fM ml20">
										阅读：<span class="clickNum"></span>人
									</tt>
								</span>
							</section>
							<div id="art-infor-body">${content }</div>
							<section class="mt20 hLh30">
								<div class="fr">
									<div class="bdsharebuttonbox">
										<a href="#" class="bds_more" data-cmd="more"></a>
										<a title="分享到QQ空间" href="#" class="bds_qzone" data-cmd="qzone"></a>
										<a title="分享到新浪微博" href="#" class="bds_tsina" data-cmd="tsina"></a>
										<a title="分享到腾讯微博" href="#" class="bds_tqq" data-cmd="tqq"></a>
										<a title="分享到人人网" href="#" class="bds_renren" data-cmd="renren"></a>
										<a title="分享到微信" href="#" class="bds_weixin" data-cmd="weixin"></a>
									</div>
									<script>
										window._bd_share_config = {
											"common" : {
												"bdSnsKey" : {},
												"bdText" : "",
												"bdMini" : "2",
												"bdMiniList" : false,
												"bdPic" : "",
												"bdStyle" : "1",
												"bdSize" : "32"
											},
											"share" : {}
										};
										with (document)
											0[(getElementsByTagName('head')[0] || body)
													.appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='
													+ ~(-new Date() / 36e5)];
									</script>
								</div>
								<span class="fl"> <tt class="c-999 f-fM">
										评论：<span class="totalResultComment">0</span>人
									</tt> <tt class="c-999 f-fM ml20">
										点赞：<span class="addPraise${student.studentId}_3 praiseCount">0</span>人
									</tt> <tt class="c-999 f-fM ml20">
										阅读：<span class="clickNum"></span>人
									</tt>
								</span>
							</section>
						</article>
						<!-- 学员展示评论 开始 -->
						<div class="mt50 pr20 mb50 commentHtml"></div>
					</section>
				</div>
				<aside class="fl col-3 studentRecommend"></aside>
				<div class="clear"></div>
			</section>
		</section>
		<!-- /学员展示列表 结束 -->
	</div>
</body>
</html>