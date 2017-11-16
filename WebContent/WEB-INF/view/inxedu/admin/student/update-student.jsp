<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改学员</title>
<script src="${ctximg}/static/common/jquery-ui-1.10.4/js/jquery-ui-1.10.4.custom.js"></script>
<script src="${ctximg}/static/common/jquery-ui-1.10.4/js/jquery.ui.datepicker-zh-CN.js"></script>
<script type="text/javascript" src="${ctximg}/static/common/jquery-ui-1.10.4/js/jquery-ui-timepicker-addon.js"></script>
<script type="text/javascript" src="${ctximg}/static/common/jquery-ui-1.10.4/js/jquery-ui-timepicker-zh-CN.js"></script>

<script type="text/javascript" src="${ctx}/static/admin/student/student.js"></script>
<link rel="stylesheet" type="text/css" href="${ctx}/kindeditor/themes/default/default.css" />
<script type="text/javascript" src="${ctx}/kindeditor/kindeditor-all.js"></script>

<link rel="stylesheet" href="${ctx}/static/common/nice-validator/jquery.validator.css"></link>
<script type="text/javascript" src="${ctx}/static/common/nice-validator/jquery.validator.js"></script>
<script type="text/javascript" src="${ctx}/static/common/nice-validator/local/zh-CN.js"></script>

<script type="text/javascript">
	$(function() {
		initKindEditor_addblog('content', 580, 400, 'studentContent', 'true');
		initSimpleImageUpload('imageFile', 'student', callback);

		$("#publishTime").datetimepicker({
			regional : "zh-CN",
			changeMonth : true,
			dateFormat : "yy-mm-dd",
			timeFormat : "HH:mm:ss"
		});

	});
</script>
</head>
<body>
	<div class="pad20" style="background-color: #f0f0f0;">
		<form action="${ctx}/admin/student/updatestudent" method="post" id="studentForm" data-validator-option="{stopOnError:false, timely:false}">
			<input type="hidden" name="student.studentId" value="${student.studentId}">
			<input type="hidden" name="student.imageUrl" value="${student.imageUrl}">
			<table style="line-height: 35px;">
				<tr>
					<td>
						<font color="red">*</font>标题
					</td>
					<td>
						<input name="student.title" type="text" data-rule="标题:required;" value="${student.title}" style="width: 580px;" />
					</td>
				</tr>
				<tr>
					<td>摘要：</td>
					<td>
						<textarea name="student.summary" style="width: 580px; height: 90px;" data-rule="required;" >${student.summary}</textarea>
					</td>
				</tr>
				<tr>
					<td>
						<font color="red">*</font>学员类型：
					</td>
					<td>
						<select name="student.type">
							<option <c:if test="${student.type==2}">selected="selected"</c:if> value="2">学员</option>
						</select> 作者：
						<input name="student.author" value="${student.author}" type="text" style="width: 100px;" />
						来源：
						<input type="text" value="${student.source}" name="student.source" />
					</td>
				</tr>
				<tr>
					<td>封面图片：</td>
					<td>
						<c:choose>
							<c:when test="${student.imageUrl==null || student.imageUrl==''}">
								<img id="showImage" width="180" height="100" src="${ctx }/static/admin/assets/logo.png">
							</c:when>
							<c:otherwise>
								<img id="showImage" width="180" height="100" src="<%=staticImage%>${student.imageUrl}">
							</c:otherwise>
						</c:choose>
						<input type="button" value="上传" id="imageFile" />
						<font color="red">(请上传宽高为： 640*357 的图片)</font>
					</td>
				</tr>
				<tr>
					<td>点击数：</td>
					<td>
						<input name="student.clickNum" id="clickNum"   type="text" style="width: 140px;" value="${student.clickNum}" data-rule="required;" onkeyup="this.value=this.value.replace(/\D/g,'')"/>
					</td>
				</tr>
				<tr>
					<td>发布时间：</td>
					<td>
						<input name="student.publishTime" data-rule="required;" id="publishTime" readonly="readonly" type="text" style="width: 140px;" value="<fmt:formatDate value="${student.publishTime}" pattern="yyyy-MM-dd HH:mm:ss"/>" />
					</td>
				</tr>
				<tr>
					<td>
						<font color="red">*</font>内容：
					</td>
					<td>
						<textarea name="studentContent.content" id="content" data-rule="required;">${content}</textarea>
					</td>
				</tr>
				<tr>
					<td>排序值：</td>
					<td>
						<input name="student.sort" id="sort" data-rule="required;"  type="text" style="width: 140px;" value="${student.sort }"  onkeyup="this.value=this.value.replace(/\D/g,'')" data-rule="required;"/>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input onclick="saveStudent()" class="button" type="button" value="修改">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>