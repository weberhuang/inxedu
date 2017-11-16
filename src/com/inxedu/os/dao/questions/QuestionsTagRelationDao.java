package com.inxedu.os.dao.questions;

import java.util.List;

import com.inxedu.os.entity.questions.QuestionsTagRelation;

/**
 * 问答和 问答标签的 关联表dao层接口
 */
public interface QuestionsTagRelationDao {
	/**
	 * 添加
	 * @param questionsTagRelation
	 * @return
	 */
	public Long addQuestionsTagRelation(QuestionsTagRelation questionsTagRelation);
	
	/**
	 * 查询
	 */
	public List<QuestionsTagRelation> queryQuestionsTagRelation(QuestionsTagRelation questionsTagRelation);
}