package com.inxedu.os.dao.impl.student;

import java.util.List;
import java.util.Map;

import org.springframework.common.entity.PageEntity;
import org.springframework.stereotype.Repository;

import com.inxedu.os.common.dao.GenericDaoImpl;
import com.inxedu.os.dao.student.StudentDao;
import com.inxedu.os.entity.student.Student;
import com.inxedu.os.entity.student.StudentContent;
import com.inxedu.os.entity.student.QueryStudent;

@Repository("studentDao")
public class StudentDaoImpl extends GenericDaoImpl implements StudentDao {

	public int createStudent(Student student) {
		this.insert("StudentMapper.createStudent", student);
		return student.getStudentId();
	}

	public void addStudentContent(StudentContent content) {
		this.insert("StudentMapper.addStudentContent", content);
	}

	public void updateStudent(Student student) {
		this.update("StudentMapper.updateStudent", student);
	}

	public void updateStudentContent(StudentContent content) {
		this.update("StudentMapper.updateStudentContent", content);
	}

	public void deleteStudentByIds(String studentIds) {
		this.delete("StudentMapper.deleteStudentByIds", studentIds);
	}

	public void deleteStudentContentByStudentIds(String studentIds) {
		this.delete("StudentMapper.deleteStudentContentByStudentIds", studentIds);
	}

	public Student queryStudentById(int studentId) {
		return this.selectOne("StudentMapper.queryStudentById", studentId);
	}

	public String queryStudentContentByStudentId(int studentId) {
		return this.selectOne("StudentMapper.queryStudentContentByStudentId", studentId);
	}

	/**
	 * 分页查询文章列表
	 */
	public List<Student> queryStudentPage(QueryStudent query, PageEntity page) {
		return this.queryForListPageCount("StudentMapper.queryStudentPage", query, page);
	}

	public void updateStudentNum(Map<String, String> map) {
		this.update("StudentMapper.updateStudentNum", map);
	}

	public List<Student> queryStudentListByIds(String studentIds) {
		return this.selectList("StudentMapper.queryStudentListByIds", studentIds);
	}

	/**
	 * 公共多条件查询文章资讯列表,用于前台
	 */
	public List<Student> queryStudentList(QueryStudent queryStudent) {
		return this.selectList("StudentMapper.queryStudentList", queryStudent);
	}

	public int queryAllStudentCount() {
		return this.selectOne("StudentMapper.queryAllStudentCount", null);
	}

}
