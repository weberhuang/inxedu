package com.inxedu.os.controller.website;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.inxedu.os.common.controller.BaseController;
import com.inxedu.os.common.util.WebUtils;
import com.inxedu.os.entity.website.WebsiteNavigate;
import com.inxedu.os.service.website.WebsiteNavigateService;

/**
 * 
 * 导航管理
 */
@Controller
@RequestMapping("/admin")
public class AdminWebsiteNavigateController extends BaseController {
	private static final Logger logger = LoggerFactory.getLogger(AdminWebsiteNavigateController.class);
 	@Autowired
    private WebsiteNavigateService websiteNavigateService;
 	
 	private static final String getWebsiteNavigateList = getViewPath("/admin/website/navigate/websiteNavigate_list");//导航列表
	private static final String updateWebsiteNavigate = getViewPath("/admin/website/navigate/websiteNavigate_update");//修改 导航配置
	private static final String addWebsiteNavigate = getViewPath("/admin/website/navigate/websiteNavigate_add");//跳转添加导航
	// 创建群 绑定变量名字和属性，把参数封装到类
	@InitBinder("websiteNavigate")
	public void initBinderWebsiteNavigate(WebDataBinder binder) {
		binder.setFieldDefaultPrefix("websiteNavigate.");
	}
 	/**
	 * 查询导航配置
	 */
	@RequestMapping("/website/navigates")
	public ModelAndView showWebsiteNavigates(HttpServletRequest request,WebsiteNavigate websiteNavigate){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName(getWebsiteNavigateList);
		try{
			List<WebsiteNavigate> websiteNavigates=websiteNavigateService.getWebsiteNavigate(websiteNavigate);
			modelAndView.addObject("websiteNavigates",websiteNavigates);
			request.getSession().setAttribute("websiteListUri", WebUtils.getServletRequestUriParms(request));
		}catch(Exception e){
			logger.error("AdminWebsiteNavigateController.showWebsiteNavigates--导航列表出错", e);
			return new ModelAndView(setExceptionRequest(request, e));
		}
		return modelAndView;
	}
	/**
	 * 跳转添加导航
	 */
	@RequestMapping("/website/doAddNavigates")
	public ModelAndView doAddWebsiteNavigate(HttpServletRequest request){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName(addWebsiteNavigate);
		return modelAndView;
	}
	/**
	 * 添加导航配置
	 */
	@RequestMapping("/website/addNavigate")
	public String addWebsiteNavigate(WebsiteNavigate websiteNavigate,HttpServletRequest request){
		try{
			if(websiteNavigate!=null && websiteNavigate.getName()!=null && websiteNavigate.getName().trim().length()>0){
				websiteNavigateService.addWebsiteNavigate(websiteNavigate);
			}
			Object uri = request.getSession().getAttribute("websiteListUri");
			if(uri!=null){
				return "forward:"+uri.toString().replace("/inxedu", "");
			}
		}catch(Exception e){
			logger.error("AdminWebsiteNavigateController.addWebsiteNavigates--添加导航出错", e);
			return setExceptionRequest(request, e);
		}
		return "forward:/admin/website/navigates";
	}
	
	/**
	 * 跳转更新导航配置
	 */
	@RequestMapping("/website/doUpdateNavigate/{id}")
	public ModelAndView doUpdateWebsiteNavigate(@PathVariable Integer id,HttpServletRequest request){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName(updateWebsiteNavigate);
		try{
			if(id!=null){
				WebsiteNavigate websiteNavigate=websiteNavigateService.getWebsiteNavigateById(id);
				modelAndView.addObject("websiteNavigate",websiteNavigate);
			}
		}catch(Exception e){
			logger.error("AdminWebsiteNavigateController.doUpdateWebsiteNavigates--跳转更新导航出错", e);
			return new ModelAndView(setExceptionRequest(request, e));
		}
		return modelAndView;
	}
	/**
	 * 更新导航配置
	 */
	@RequestMapping("/website/updateNavigate")
	public String updatewebsiteNavigate(WebsiteNavigate websiteNavigate,HttpServletRequest request){
		try{
			if(websiteNavigate!=null && websiteNavigate.getName()!=null && websiteNavigate.getName().trim().length()>0){
				websiteNavigateService.updateWebsiteNavigate(websiteNavigate);;
			}
			Object uri = request.getSession().getAttribute("websiteListUri");
			if(uri!=null){
				return "forward:"+uri.toString().replace("/inxedu", "");
			}
		}catch(Exception e){
			logger.error("AdminWebsiteNavigateController.updatewebsiteNavigates--更新导航出错", e);
			return setExceptionRequest(request, e);
		}
		return "forward:/admin/website/navigates";
	}
	/**
	 * 冻结或解冻导航
	 */
	@RequestMapping("/website/freezeNavigate")
	@ResponseBody
	public Map<String,Object> freezeWebsiteNavigate(WebsiteNavigate websiteNavigate,HttpServletRequest request){
		try{
			websiteNavigateService.freezeWebsiteNavigate(websiteNavigate);
			this.setJson(true, "true", null);
		}catch(Exception e){
			logger.error("AdminWebsiteNavigateController.freezeWebsiteNavigate--更新导航出错", e);
			this.setJson(false, "false", null);
		}
		return json;
	}
	/**
	 * 删除导航
	 */
	@RequestMapping("/website/delNavigate/{id}")
	@ResponseBody
	public Map<String,Object> delWebsiteNavigate(@PathVariable Integer id){
		try{
			websiteNavigateService.delWebsiteNavigate(id);
			this.setJson(true, "true", null);
		}catch(Exception e){
			logger.error("AdminWebsiteNavigateController.delWebsiteNavigate--删除导航出错", e);
			this.setJson(false, "false", null);
		}
		return json;
	}
   
}