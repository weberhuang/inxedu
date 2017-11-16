package com.inxedu.os.controller.student;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.common.entity.PageEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.inxedu.os.common.constants.CacheConstans;
import com.inxedu.os.common.controller.BaseController;
import org.springframework.cache.EHCacheUtil;
import com.inxedu.os.common.util.WebUtils;
import com.inxedu.os.entity.student.Student;
import com.inxedu.os.entity.student.StudentContent;
import com.inxedu.os.entity.student.QueryStudent;
import com.inxedu.os.service.student.StudentService;

@Controller
@RequestMapping("/admin/student")
public class AdminStudentController extends BaseController {

	private static Logger logger = LoggerFactory.getLogger(AdminStudentController.class);
	// 学员添加页面
	private static String addStudentPage = getViewPath("/admin/student/add-student");
	// 学员列表
	private static String studentListPage = getViewPath("/admin/student/student-list");
	// 更新学员
	private static String updatePage = getViewPath("/admin/student/update-student");

	@Autowired
	private StudentService studentService;

	@InitBinder({ "studentContent" })
	public void initStudentContentBinder(WebDataBinder binder) {
		binder.setFieldDefaultPrefix("studentContent.");
	}

	@InitBinder({ "student" })
	public void initStudentBinder(WebDataBinder binder) {
		binder.setFieldDefaultPrefix("student.");
	}

	@InitBinder({ "queryStudent" })
	public void initQueryStudentBinder(WebDataBinder binder) {
		binder.setFieldDefaultPrefix("queryStudent.");
	}

	/**
	 * 执行添加学员
	 */
	@RequestMapping("/addstudent")
	public ModelAndView addStudent(HttpServletRequest request, @ModelAttribute("student") Student student, @ModelAttribute("studentContent") StudentContent studentContent) {
		ModelAndView model = new ModelAndView();
		try {
			// 重定向到咨询列表
			model.setViewName("redirect:/admin/student/initcreate");
			// 添加时间
			student.setCreateTime(new Date());
			// 添加学员
			studentService.createStudent(student);
			// 添加学员内容
			studentContent.setStudentId(student.getStudentId());
			String content =studentContent.getContent();
			studentContent.setContent(content.replace("8080/images", "8080/inxedu/images"));
			studentService.addStudentContent(studentContent);
		} catch (Exception e) {
			model.setViewName(this.setExceptionRequest(request, e));
			logger.error("addStudent()---error", e);
		}
		return model;
	}

	/**
	 * 修改学员
	 */
	@RequestMapping("/updatestudent")
	public ModelAndView updateStudent(HttpServletRequest request, @ModelAttribute("student") Student student, @ModelAttribute("studentContent") StudentContent studentContent) {
		ModelAndView model = new ModelAndView();
		try {
			studentService.updateStudent(student);
			studentContent.setStudentId(student.getStudentId());
			String content =studentContent.getContent();
            studentContent.setContent(content.replace("8080/images", "8080/inxedu/images"));
			studentService.updateStudentContent(studentContent);
			// 修改成功返回原列表页面
			model.setViewName(this.getRequestUri(request));
		} catch (Exception e) {
			model.setViewName(this.setExceptionRequest(request, e));
			logger.error("updateStudent()--error", e);
		}
		return model;
	}

	/**
	 * 删除
	 */
	@RequestMapping("/delete")
	public ModelAndView delete(HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		try {
			model.setViewName(this.getRequestUri(request));
			String[] aridArr = request.getParameterValues("articelId");
			if (aridArr != null && aridArr.length > 0) {
				this.deleteStudent(aridArr);
			}
		} catch (Exception e) {
			model.setViewName(this.setExceptionRequest(request, e));
			logger.error("delete()--error", e);
		}
		return model;
	}

	/**
	 * 执行删除学员
	 */
	private void deleteStudent(String[] artidArr) {
		// 删除数据中记录
		studentService.deleteStudentByIds(artidArr);
		EHCacheUtil.remove(CacheConstans.ARTICLE_GOOD_RECOMMEND);

	}

	/**
	 * 初始化修改页面
	 */
	@RequestMapping("/initupdate/{studentId}")
	public ModelAndView initUpdateStudent(HttpServletRequest request, @PathVariable("studentId") int studentId) {
		ModelAndView model = new ModelAndView();
		try {
			model.setViewName(updatePage);
			// 查询学员信息
			Student student = studentService.queryStudentById(studentId);
			model.addObject("student", student);
			// 查询学员内容
			String content = studentService.queryStudentContentByStudentId(studentId);
			model.addObject("content", content);
		} catch (Exception e) {
			model.setViewName(this.setExceptionRequest(request, e));
			logger.error("initUpdateStudent()--erro", e);
		}
		return model;
	}

	/**
	 * 分页查询学员列表
	 */
	@RequestMapping("/showlist")
	public ModelAndView showStudentList(HttpServletRequest request, @ModelAttribute("queryStudent") QueryStudent queryStudent, @ModelAttribute("page") PageEntity page) {
		ModelAndView model = new ModelAndView();
		try {
			model.setViewName(studentListPage);
			page.setPageSize(12);
			List<Student> studentList = studentService.queryStudentPage(queryStudent, page);
			model.addObject("studentList", studentList);
			model.addObject("page", page);
			String uri = WebUtils.getServletRequestUriParms(request);
			request.getSession().setAttribute("requestUri", uri);
		} catch (Exception e) {
			model.setViewName(this.setExceptionRequest(request, e));
			logger.error("showStudentList()--error", e);
		}
		return model;
	}

	/**
	 * 初始化学员添加页面
	 */
	@RequestMapping("/initcreate")
	public ModelAndView initAddStudent(HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		model.setViewName(addStudentPage);
		return model;
	}

	/**
	 * 获取操作完成返回原有页面
	 */
	private String getRequestUri(HttpServletRequest request) {
		Object uri = request.getSession().getAttribute("requestUri");
		if (uri == null) {
			return "forward:/admin/student/showlist";
		} else {
			return "forward:" + uri.toString().replace("/inxedu", "");
		}
	}

}
