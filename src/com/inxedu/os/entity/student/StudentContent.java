package com.inxedu.os.entity.student;

import java.io.Serializable;

import lombok.Data;

/**
 * 文章内容
 */
@Data
public class StudentContent implements Serializable{
	
	private static final long serialVersionUID = 1L;
	/**文章ID*/
	private int studentId;
	/**文章对应的内容*/
	private String content;
}
