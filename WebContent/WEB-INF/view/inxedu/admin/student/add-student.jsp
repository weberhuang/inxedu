<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加学员</title>
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
			regional:"zh-CN",
	        changeMonth: true,
	        dateFormat:"yy-mm-dd",
	        timeFormat: "HH:mm:ss"
	    });
	});
</script>

</head>
<body>
	<div class="pad20" style="background-color: #f0f0f0;">
		<form action="${ctx}/admin/student/addstudent" method="post" id="studentForm" data-validator-option="{stopOnError:false, timely:false}">
			<input type="hidden" name="student.imageUrl">
			<table style="line-height: 35px;">
				<tr>
					<td>
						<font color="red">*</font>标题
					</td>
					<td>
						<input name="student.title" data-rule="标题:required;" type="text" style="width: 580px;" />
					</td>
				</tr>
				<tr>
					<td>摘要：</td>
					<td>
						<textarea name="student.summary" style="width: 580px; height: 90px;" data-rule="required;"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						<font color="red">*</font>学员类型：
					</td>
					<td>
						<select name="student.type">
							<option value="2">学员</option>
						</select> 作者：
						<input name="student.author" value="" type="text" style="width: 100px;" />
						来源：
						<input type="text" value="" name="student.source" />
					</td>
				</tr>
				<tr>
					<td>点击数：</td>
					<td>
						<input name="student.clickNum" id="clickNum"   type="text" style="width: 140px;" value="0"  onkeyup="this.value=this.value.replace(/\D/g,'')" data-rule="required;"/>
					</td>
				</tr>
				<tr>
					<td>发布时间：</td>
					<td>
						<input name="student.publishTime" id="publishTime"   readonly="readonly"  type="text" style="width: 140px;" data-rule="required;"/>
					</td>
				</tr>
				<tr>
					<td>封面图片：</td>
					<td>
						<img id="showImage" width="180" height="100" src="${ctx }/static/admin/assets/logo.png">
						<input type="button" value="上传" id="imageFile" />
						<font color="red">(请上传宽高为： 640*357 的图片)</font>
					</td>
				</tr>
				<tr>
					<td>
						<font color="red">*</font>内容：
					</td>
					<td>
						<textarea name="studentContent.content" id="content" data-rule="required;"></textarea>
					</td>
				</tr>
				<tr>
					<td>排序值：</td>
					<td>
						<input name="student.sort" id="sort"   type="text" style="width: 140px;" value="0"  onkeyup="this.value=this.value.replace(/\D/g,'')" data-rule="required;"/>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input onclick="saveStudent()" class="button" type="button" value="保存">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>