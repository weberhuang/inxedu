<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学员列表</title>
<script type="text/javascript" src="${ctx}/static/admin/student/student.js"></script>
<script src="${ctximg}/static/common/jquery-ui-1.10.4/js/jquery-ui-1.10.4.custom.js?v=${v}"></script>
<script src="${ctximg}/static/common/jquery-ui-1.10.4/js/jquery.ui.datepicker-zh-CN.js?v=${v}"></script>
<script type="text/javascript" src="${ctximg}/static/common/jquery-ui-1.10.4/js/jquery-ui-timepicker-addon.js?v=${v}"></script>
<script type="text/javascript" src="${ctximg}/static/common/jquery-ui-1.10.4/js/jquery-ui-timepicker-zh-CN.js?v=${v}"></script>
</head>
<body>
	<div class="pad20">
		<form action="${ctx}/admin/student/showlist" method="post" id="searchForm">
			<input type="hidden" id="pageCurrentPage" name="page.currentPage" value="1" />
			<input placeholder="标题/作者/来源" type="text" name="queryStudent.queryKey" value="${queryStudent.queryKey}" />
			<select name="queryStudent.type">
				<option value="0">请选择类型</option>
				<option value="2">学员</option>
			</select>
			创建时间:
			<input placeholder="开始创建时间" name="queryStudent.beginCreateTime"
				value="<fmt:formatDate value="${queryStudent.beginCreateTime}" pattern="yyyy-MM-dd HH:mm:ss"/>" id="beginCreateTime" type="text"
				readonly="readonly" style="width: 128px;"/>-
			<input placeholder="结束创建时间" id="endCreateTime" name="queryStudent.endCreateTime"
				value="<fmt:formatDate value="${queryStudent.endCreateTime}" pattern="yyyy-MM-dd HH:mm:ss"/>" type="text" readonly="readonly" style="width: 128px;"/>
			<a title="查找用户" onclick="javascript:$('#searchForm').submit();" class="button tooltip" href="javascript:void(0)">
				<span class="ui-icon ui-icon-search"></span> 查找学员
			</a>
			<a title="清空" onclick="javascript:$('#searchForm input:text').val('');$('#searchForm select').val(0);" class="button tooltip" href="javascript:void(0)">
				<span class="ui-icon ui-icon-cancel"></span> 清空
			</a>
			<a title="批量删除" onclick="deleteStudent()" class="button tooltip" href="javascript:void(0)">
				<span></span> 批量删除
			</a>
		</form>
		<form action="${ctx}/admin/student/delete" id="deleteForm" method="post">
			<table cellspacing="0" cellpadding="0" border="0" class="fullwidth">
				<thead>
					<tr>
						<td align="center">
							<input name="allck" type="checkbox" onclick="selectAll(this)" />
						</td>
						<td align="center">标题</td>
						<td align="center">作者</td>
						<td align="center">来源</td>
						<td align="center">类型</td>
						<td align="center">创建时间</td>
						<td align="center">发布时间</td>
						<td align="center">点击量</td>
						<td align="center" width="232">操作</td>
					</tr>
				</thead>

				<tbody>
					<c:forEach items="${studentList}" var="student">
						<tr class="odd">
							<td align="center">
								<input type="checkbox" name="articelId" value="${student.studentId}" />
							</td>
							<td align="center">${student.title}</td>
							<td align="center">${student.author}</td>
							<td align="center">${student.source}</td>
							<td align="center">
								<c:if test="${student.type==1}">公告</c:if>
								<c:if test="${student.type==2}">学员</c:if>
							</td>
							<td align="center">
								<fmt:formatDate value="${student.createTime}" pattern="yyyy/MM/dd HH:mm:ss" />
							</td>
							<td align="center">
								<fmt:formatDate value="${student.publishTime}" pattern="yyyy/MM/dd HH:mm:ss" />
							</td>
							<td align="center">${student.clickNum}</td>
							<td align="center">
								<a href="${ctx}/admin/student/initupdate/${student.studentId}" class="button tooltip">修改</a>
								<a href="javascript:void(0)" onclick="thisDelete(this)" class="button tooltip">删除</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</form>
		<jsp:include page="/WEB-INF/view/common/admin_page.jsp" />
	</div>
</body>
</html>