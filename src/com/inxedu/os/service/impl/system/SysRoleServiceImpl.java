package com.inxedu.os.service.impl.system;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inxedu.os.dao.system.SysRoleDao;
import com.inxedu.os.entity.system.SysRole;
import com.inxedu.os.service.system.SysRoleService;

@Service("sysRoleService")
public class SysRoleServiceImpl implements SysRoleService{

	@Autowired
	private SysRoleDao sysRoleDao;
	
	public int createRoel(SysRole sysRole) {
		return sysRoleDao.createRoel(sysRole);
	}

	
	public void updateRole(SysRole sysRole) {
		sysRoleDao.updateRole(sysRole);
	}

	
	public List<SysRole> queryAllRoleList() {
		return sysRoleDao.queryAllRoleList();
	}

	
	public void deleteRoleByIds(String ids) {
		if(ids!=null && ids.trim().length()>0){
			if(ids.trim().endsWith(",")){
				ids = ids.trim().substring(0,ids.trim().length()-1);
			}
			sysRoleDao.deleteRoleByIds(ids);
		}
	}

	
	public void deleteRoleFunctionByRoleId(int roleId) {
		sysRoleDao.deleteRoleFunctionByRoleId(roleId);
	}

	
	public void deleteRoleFunctionByFunctionId(String functionId) {
		if(functionId!=null && functionId.trim().length()>0){
			if(functionId.endsWith(",")){
				functionId = functionId.trim().substring(0,functionId.trim().length()-1);
			}
			sysRoleDao.deleteRoleFunctionByFunctionId(functionId);
		}
		
	}

	
	public void createRoleFunction(String value) {
		if(value!=null && value.trim().length()>0){
			if(value.endsWith(",")){
				value = value.trim().substring(0,value.trim().length()-1);
			}
			sysRoleDao.createRoleFunction(value);
		}
	}

	
	public List<Integer> queryRoleFunctionIdByRoleId(int roleId) {
		return sysRoleDao.queryRoleFunctionIdByRoleId(roleId);
	}

}
