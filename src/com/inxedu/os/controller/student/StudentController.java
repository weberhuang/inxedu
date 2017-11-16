package com.inxedu.os.controller.student;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.common.entity.PageEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.inxedu.os.common.constants.CacheConstans;
import com.inxedu.os.common.controller.BaseController;
import org.springframework.cache.EHCacheUtil;
import com.inxedu.os.entity.student.Student;
import com.inxedu.os.entity.student.QueryStudent;
import com.inxedu.os.entity.website.WebsiteImages;
import com.inxedu.os.service.student.StudentService;
import com.inxedu.os.service.website.WebsiteImagesService;

/**
 * 前台学员资讯
 */
@Controller
@RequestMapping("/student")
public class StudentController extends BaseController {
	private static Logger logger = LoggerFactory.getLogger(StudentController.class);
	// 学员列表
	private static String listPage = getViewPath("/web/student/student-list");
	// 好文推荐
	private static String queryStudentRecommend = getViewPath("/web/student/student-recommend");
	// 学员详情
	private static String studentInfo = getViewPath("/web/student/student-info");
	
	@Autowired
	private StudentService studentService;
	@Autowired
	private WebsiteImagesService websiteImagesService;

	/**
	 * 分页查询学员列表
	 */
	@RequestMapping("/studentlist")
	public ModelAndView showStudentList(HttpServletRequest request, @ModelAttribute("queryStudent") QueryStudent queryStudent, @ModelAttribute("page") PageEntity page) {
		ModelAndView model = new ModelAndView();
		try {
			// 查询已经发布的学员资讯
			queryStudent.setPublishState(2);
			queryStudent.setType(2);
			page.setPageSize(10);
			List<Student> studentList = studentService.queryStudentPage(queryStudent, page);
			model.addObject("studentList", studentList);
			model.addObject("page", page);
			model.setViewName(listPage);

		} catch (Exception e) {
			model.setViewName(this.setExceptionRequest(request, e));
			logger.error("showStudentList()--error", e);
		}
		return model;
	}

	/**
	 * 修改学员点击数量
	 */
	@RequestMapping("/updateStudentClickNum/{studentId}")
	@ResponseBody
	public Map<String, Object> updateStudentClickNum(HttpServletRequest request, @PathVariable("studentId") int studentId) {
		try {
			Map<String, String> map = new HashMap<String, String>();
			map.put("num", "+1");
			map.put("type", "clickNum");
			map.put("studentId", studentId + "");
			studentService.updateStudentNum(map);
			Student student = studentService.queryStudentById(studentId);
			this.setJson(true, null, student);
		} catch (Exception e) {
			this.setAjaxException();
			logger.error("updateStudentClickNum()--error", e);
		}
		return json;
	}

	/**
	 * 查询好文推荐（学员按浏览书排行）
	 */
	@RequestMapping("/ajax/recommend")
	public String queryStudentRecommend(HttpServletRequest request) {
		try {
			// 查询排行学员
			List<Student> studentList=(List<Student>)EHCacheUtil.get(CacheConstans.STUDENT_GOOD_RECOMMEND);
			if (studentList==null||studentList.size()==0) {
				QueryStudent query = new QueryStudent();
				query.setType(2);
				query.setCount(8);
				query.setOrderby(1);
				studentList = studentService.queryStudentList(query);
				EHCacheUtil.set(CacheConstans.STUDENT_GOOD_RECOMMEND, studentList,CacheConstans.RECOMMEND_COURSE_TIME);//缓存一小时
			}
			request.setAttribute("studentList", studentList);
			
			// 获得广告图
			Map<String, List<WebsiteImages>> websiteImages = websiteImagesService.queryImagesByType();
			request.setAttribute("websiteImages", websiteImages);
		} catch (Exception e) {
			this.setAjaxException();
			logger.error("queryStudentRecommend()--error", e);
		}
		return queryStudentRecommend;
	}
	/**
	 * 学员详情
	 */
	@RequestMapping("/studentinfo/{id}.html")
	public String studentInfo(HttpServletRequest request, @PathVariable("id") int id) {
		try {
			// 查询学员详情
			Student student = studentService.queryStudentById(id);
			String content = studentService.queryStudentContentByStudentId(id);
			request.setAttribute("content", content);
			request.setAttribute("student", student);
		} catch (Exception e) {
			logger.error("studentInfo()--error", e);
			return this.setExceptionRequest(request, e);
		}
		return studentInfo;
	}

}
