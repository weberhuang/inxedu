package com.inxedu.os.service.impl.student;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.common.entity.PageEntity;
import org.springframework.stereotype.Service;

import com.inxedu.os.dao.student.StudentDao;
import com.inxedu.os.entity.student.Student;
import com.inxedu.os.entity.student.StudentContent;
import com.inxedu.os.entity.student.QueryStudent;
import com.inxedu.os.service.student.StudentService;

@Service("studentService")
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentDao studentDao;

	public int createStudent(Student student) {
		return studentDao.createStudent(student);
	}

	public void addStudentContent(StudentContent content) {
		studentDao.addStudentContent(content);
	}

	public void updateStudent(Student student) {
		studentDao.updateStudent(student);
	}

	public void updateStudentContent(StudentContent content) {
		studentDao.updateStudentContent(content);
	}

	public void deleteStudentByIds(String[] studentIds) {
		if (studentIds != null && studentIds.length > 0) {
			String ids = "";
			for (int i = 0; i < studentIds.length; i++) {
				if (i < studentIds.length - 1) {
					ids += studentIds[i] + ",";
				} else {
					ids += studentIds[i];
				}
			}
			studentDao.deleteStudentByIds(ids);
			studentDao.deleteStudentContentByStudentIds(ids);
		}
	}

	public Student queryStudentById(int studentId) {
		return studentDao.queryStudentById(studentId);
	}

	public String queryStudentContentByStudentId(int studentId) {
		return studentDao.queryStudentContentByStudentId(studentId);
	}

	/**
	 * 分页查询文章列表
	 */
	public List<Student> queryStudentPage(QueryStudent query, PageEntity page) {
		return studentDao.queryStudentPage(query, page);
	}

	public void updateStudentNum(Map<String, String> map) {
		studentDao.updateStudentNum(map);
	}

	public List<Student> queryStudentListByIds(String[] studentIds) {
		if (studentIds != null && studentIds.length > 0) {
			String ids = "";
			for (int i = 0; i < studentIds.length; i++) {
				if (i < studentIds.length - 1) {
					ids += studentIds[i] + ",";
				} else {
					ids += studentIds[i];
				}
			}
			return studentDao.queryStudentListByIds(ids);
		}
		return null;
	}

	/**
	 * 公共多条件查询文章资讯列表,用于前台
	 */
	public List<Student> queryStudentList(QueryStudent queryStudent) {
		return studentDao.queryStudentList(queryStudent);
	}

	public int queryAllStudentCount() {
		return studentDao.queryAllStudentCount();
	}

}
