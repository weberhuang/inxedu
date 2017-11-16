package com.inxedu.os.dao.course;

import java.util.List;
import java.util.Map;

import org.springframework.common.entity.PageEntity;

import com.inxedu.os.entity.course.CourseFavorites;
import com.inxedu.os.entity.course.FavouriteCourseDTO;



/**
 * 课程收藏管理接口
 */
public interface CourseFavoritesDao {
	/**
	 * 添加课程收藏
	 * @param cf
	 */
	public void createCourseFavorites(CourseFavorites cf);
	
	/**
	 * 删除课程收藏
	 * @param ids
	 */
	public void deleteCourseFavoritesById(String ids);
	
	/**
	 * 检测用户是否收藏过
	 * @param map
	 * @return int
	 */
	public int checkFavorites(Map<String,Object> map);
	
	/**
	 * 分页查询用户收藏列表
	 * @param userId 用户ID
	 * @param page 分页条件
	 * @return List<FavouriteCourseDTO>
	 */
	public List<FavouriteCourseDTO> queryFavoritesPage(int userId,PageEntity page);
    
    
}