$(function(){
	$("input[name='studentId']:checkbox").click(function(){
		var selectlen = $("input[name='studentId']:checked").length;
		var alllen = $("input[name='studentId']").length;
		if(alllen>0 && alllen==selectlen){
			$('input[name="allck"]:checkbox').attr('checked',true);
		}else{
			$('input[name="allck"]:checkbox').attr('checked',false);
		}
	});
	
	/* 时间控件 */
	$("#beginCreateTime,#endCreateTime").datetimepicker({
		regional:"zh-CN",
        changeMonth: true,
        dateFormat:"yy-mm-dd",
        timeFormat: "HH:mm:ss"
    });
});

/**
 * 单条记录的删除
 */
function thisDelete(em){
	$("input:checkbox").attr('checked',false);
	var checkbox= $($(em).parent("td").parent('tr').children('td')[0]).children('input:checkbox');
	$(checkbox).attr('checked',true);
	deleteStudent();
}

/**
 * 删除
 */
function deleteStudent(){
	var arr = $("input[name='studentId']:checked");
	if(arr==null || arr.length==0){
		alert('请选择要删除学员！');
		return false;
	}
	if( !confirm('确认要删除选择学员？')){
		return false;
	}
	$("#deleteForm").submit();
}
/**
 * 全选或反选 
 */
function selectAll(em){
	$("input[name='studentId']").attr('checked',$(em).attr('checked'));
}
/**
 * 保存学员
 */
function saveStudent(){
	/*var title = $("input[name='student.title']").val();
	if(title==null || $.trim(title)==''){
		alert("请填写学员标题！");
		return false;
	}
	var studentType = $("select[name='student.type']").val();
	if(studentType==0){
		alert("请选择学员类型！");
		return false;
	}
	var content = $("#content").val();
	if(content==null || $.trim(content)==''){
		alert('请填写学员内容！');
		return false;
	}*/
	$("#studentForm").submit();
}

/**
 * 图片上传回调函数
 * @param imgUrl 上传成功的图片路径
 */
function callback(imgUrl){
	$("input[name='student.imageUrl']").val(imgUrl);
	$("#showImage").attr("src",imagesPath+imgUrl)
}