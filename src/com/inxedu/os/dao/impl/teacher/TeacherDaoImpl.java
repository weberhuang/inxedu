package com.inxedu.os.dao.impl.teacher;


import java.util.List;
import java.util.Map;

import org.springframework.common.entity.PageEntity;
import org.springframework.stereotype.Repository;

import com.inxedu.os.common.dao.GenericDaoImpl;
import com.inxedu.os.dao.teacher.TeacherDao;
import com.inxedu.os.entity.teacher.QueryTeacher;
import com.inxedu.os.entity.teacher.Teacher;

/**
 * 教师dao层
 */
@Repository("teacherDao")
public class TeacherDaoImpl extends GenericDaoImpl implements TeacherDao {

	
	public int addTeacher(Teacher teacher) {
		this.insert("TeacherMapper.createTeacher", teacher);
		return teacher.getId();
	}

	
	public void deleteTeacherById(int tcId) {
		this.update("TeacherMapper.deleteTeacherById", tcId);
	}

	
	public void updateTeacher(Teacher teacher) {
		this.update("TeacherMapper.updateTeacher", teacher);
		
	}

	
	public Teacher getTeacherById(int tcId) {
		return this.selectOne("TeacherMapper.getTeacherById", tcId);
	}

	
	public List<Teacher> queryTeacherListPage(QueryTeacher query, PageEntity page) {
		return this.queryForListPageCount("TeacherMapper.queryTeacherListPage", query, page);
	}

	
	public List<Map<String, Object>> queryCourseTeacerList(int courseId) {
		return this.selectList("TeacherMapper.queryCourseTeacerList", courseId);
	}

	
	public List<Teacher> queryTeacherList(QueryTeacher queryTeacher) {
		return this.selectList("TeacherMapper.queryTeacherList", queryTeacher);
	}
}
