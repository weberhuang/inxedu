package com.inxedu.os.service.questions;

import java.util.List;

import com.inxedu.os.entity.questions.QuestionsTag;


/**
 * 专业接口
 */
public interface QuestionsTagService {
	/**
	 * 创建专业
	 * @param questionsTag
	 * @return 返回专业ID
	 */
	public int createQuestionsTag(QuestionsTag questionsTag);
	
	/**
	 * 查询专业列表
	 * @return List<QuestionsTag>
	 */
	public List<QuestionsTag> getQuestionsTagList(QuestionsTag query);
	
	/**
	 * 修改专业父ID
	 * @param questionsTagId 专业ID
	 * @param parentId 专业父ID
	 */
	public void updateQuestionsTagParentId(int questionsTagId,int parentId);
	
	/**
	 * 修改专业
	 * @param questionsTag
	 */
	public void updateQuestionsTag(QuestionsTag questionsTag);
	
	/**
	 * 删除专业 
	 * @param questionsTagId 要删除的专业ID
	 */
	public void deleteQuestionsTag(int questionsTagId);
	
	/**
	 * 获取最根级专业
	 * @param count获取数量
	 * @return List<QuestionsTag>
	 */
	public List<QuestionsTag> queryRootQuestionsTag(int count);
}