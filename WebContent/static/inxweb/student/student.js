//好文推荐
function studentRecommend() {
	$.ajax({
		url : baselocation + '/student/ajax/recommend',
		type : 'post',
		async : true,
		dataType : 'text',
		success : function(result) {
			$(".studentRecommend").html(result);
		}
	});
}

// 增加文章浏览量
function updateStudentClickNum() {
	jQuery.ajax({
		url : baselocation+'/student/updateStudentClickNum/' + studentId,
		type : 'post',
		dataType : 'json',
		success : function(result) {
			if (result.success == true) {
				jQuery(".clickNum").text(result.entity.clickNum);
				$(".praiseCount").html(result.entity.praiseCount);
			}
		}
	});
}
