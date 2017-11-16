package com.inxedu.os.dao.student;

import java.util.List;
import java.util.Map;

import org.springframework.common.entity.PageEntity;

import com.inxedu.os.entity.student.Student;
import com.inxedu.os.entity.student.StudentContent;
import com.inxedu.os.entity.student.QueryStudent;

/**
 * DAO层接口
 */
public interface StudentDao {
	
	/**
	 * 创建学员
	 * @param student 学员实体
	 * @return 返回学员ID
	 */
	public int createStudent(Student student);
	
	/**
	 * 添加学员内容
	 * @param content 学员内容实体
	 */
	public void addStudentContent(StudentContent content);
	
	/**
	 * 修改学员信息
	 * @param student 学员实体
	 */
	public void updateStudent(Student student);
	
	/**
	 * 修改学员内容 
	 * @param content
	 */
	public void updateStudentContent(StudentContent content);
	
	/**
	 * 删除学员
	 * @param studentIds 学员ID串 如：(1,2,3,4)
	 */
	public void deleteStudentByIds(String studentIds);
	
	/**
	 * 删除学员内容
	 * @param studentIds 学员ID串 如：(1,2,3,4)
	 */
	public void deleteStudentContentByStudentIds(String studentIds);
	
	/**
	 * 通过学员ID查询学员信息
	 * @param studentId 学员ID
	 * @return Student学员实体信息
	 */
	public Student queryStudentById(int studentId);
	
	/**
	 * 通过学员ID查询学员内容
	 * @param studentId 学员内容
	 * @return String类型学员内容
	 */
	public String queryStudentContentByStudentId(int studentId);
	
	/**
	 * 分页查询学员列表
	 * @param query 查询条件
	 * @param page 分页条件
	 * @return List<Student>学员列表
	 */
	public List<Student> queryStudentPage(QueryStudent query,PageEntity page);
	
	/**
	 * 修改累加学员点击量
	 */
	public void updateStudentNum(Map<String,String> map);
	
	/**
	 * 通过ID串，查询学员列表信息
	 * @param studentIds 学员ID串(1,2,3,4)
	 * @return List<Student>
	 */
	public List<Student> queryStudentListByIds(String studentIds);
	
	/**
	 * 公共多条件查询学员资讯列表,用于前台
	 */
	public List<Student> queryStudentList(QueryStudent queryStudent);
	
	/**
	 * 获取所有学员总记录数
	 * @return 总记录数
	 */
	public int queryAllStudentCount();

}
