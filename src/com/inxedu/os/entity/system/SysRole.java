package com.inxedu.os.entity.system;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 角色
 */
@Data
public class SysRole implements Serializable{
	
	private static final long serialVersionUID = 1L;
	private int roleId;
	private String roleName;
	private Date createTime;
}
