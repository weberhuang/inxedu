package com.inxedu.os.controller.teacher;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.EHCacheUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.inxedu.os.common.constants.CacheConstans;
import com.inxedu.os.common.controller.BaseController;
import org.springframework.common.entity.PageEntity;
import org.springframework.common.util.StringUtils;

import com.inxedu.os.entity.common.Comment;
import com.inxedu.os.entity.course.CourseDto;
import com.inxedu.os.entity.course.QueryCourse;
import com.inxedu.os.entity.subject.QuerySubject;
import com.inxedu.os.entity.subject.Subject;
import com.inxedu.os.entity.teacher.QueryTeacher;
import com.inxedu.os.entity.teacher.Teacher;
import com.inxedu.os.entity.website.WebsiteImages;
import com.inxedu.os.service.course.CourseService;
import com.inxedu.os.service.subject.SubjectService;
import com.inxedu.os.service.teacher.TeacherService;
import com.inxedu.os.service.website.WebsiteImagesService;

/**
 * Teacher管理接口
 */
@Controller
public class TeacherController extends BaseController {

	private static final Logger logger = LoggerFactory.getLogger(TeacherController.class);
	// 教师列表
	private static final String teacherlist = getViewPath("/web/teacher/teacher_list");
	// 教师详情
	private static final String teacherinfo = getViewPath("/web/teacher/teacher_info");
  
	@Autowired
	private TeacherService teacherService;
	@Autowired
	private CourseService courseService;
	@Autowired
	private SubjectService subjectService;
	@Autowired
    private WebsiteImagesService websiteImagesService;
	
	// 绑定属性 封装参数
	@InitBinder("queryTeacher")
	public void initQueryTeacher(WebDataBinder binder) {
		binder.setFieldDefaultPrefix("queryTeacher.");
	}
	
	/**
     * 校园环境图片轮播图
     */
   /* @RequestMapping("/front/aboutus")
    public String getIndexpage(HttpServletRequest request, Model model) {
        try {
            model.addAttribute("num", new Date().getDate());
            // 获得banner图
            Map<String, List<WebsiteImages>> websiteImages = websiteImagesService.queryImagesByType();            
            List<WebsiteImages> aboutUsImagesList = websiteImages.get("type_18");
            model.addAttribute("aboutUsImagesList", aboutUsImagesList);
            
        } catch (Exception e) {
            logger.error("WebFrontController.getIndexpage", e);
            return setExceptionRequest(request, e);
        }
        return teacherlist;
    }*/

	/**
	 * 教师列表展示+校园环境图片轮播图
	 */
	@RequestMapping("/front/teacherlist")
	public ModelAndView teacherlist(HttpServletRequest request, @ModelAttribute("queryTeacher") QueryTeacher queryTeacher, @ModelAttribute("page") PageEntity page,Model model2) {
		ModelAndView model = new ModelAndView(teacherlist);
		try {
            // 获得校园环境图片轮播图
            Map<String, List<WebsiteImages>> websiteImages = websiteImagesService.queryImagesByType();            
            List<WebsiteImages> aboutUsImagesList = websiteImages.get("type_18");
            model2.addAttribute("aboutUsImagesList", aboutUsImagesList);

            // 教师分类
			QuerySubject querySubject = new QuerySubject();
			querySubject.setParentId(0);
			List<Subject> subjectList = subjectService.getSubjectList(querySubject);
			model.addObject("subjectList", subjectList);
			// 页面传来的数据放到page中
			page.setPageSize(8);
			// 查询老师
			List<Teacher> teacherList = teacherService.queryTeacherListPage(queryTeacher, page);
			model.addObject("teacherList", teacherList);
			model.addObject("page", page);
			model.addObject("subjectId", queryTeacher.getSubjectId());// 老师的专业Id
		} catch (Exception e) {
			model.setViewName(this.setExceptionRequest(request, e));
			logger.error("teacherlist()--error", e);
		}
		return model;
	}

	/**
	 * 教师详情
	 */
	@RequestMapping("/front/teacher/{teacherId}")
	public ModelAndView teacherInfo(HttpServletRequest request, @PathVariable int teacherId, @ModelAttribute("page") PageEntity page) {
		ModelAndView model = new ModelAndView();
		try {
			model.setViewName(teacherinfo);
			// 查询老师
			Teacher teacher = teacherService.getTeacherById(teacherId);
			model.addObject("teacher", teacher);
			// 讲师所讲的课程
			page.setPageSize(8);
			QueryCourse queryCourse = new QueryCourse();
			// 只查询状态正常的
			queryCourse.setIsavaliable(1);
			queryCourse.setTeacherId(teacherId);
			List<CourseDto> courseList = courseService.queryCourseListPage(queryCourse, page);
			model.addObject("courseList", courseList);
			model.addObject("page", page);
		} catch (Exception e) {
			model.setViewName(this.setExceptionRequest(request, e));
			logger.error("teacherInfo()--error", e);
		}
		return model;
	}
}