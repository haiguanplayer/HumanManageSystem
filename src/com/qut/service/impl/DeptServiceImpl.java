package com.qut.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.qut.mapper.DeptMapper;
import com.qut.pojo.Dept;

import com.qut.service.DeptService;

@Service
@Transactional(rollbackFor=Exception.class)
public class DeptServiceImpl implements DeptService{

	@Autowired
	private DeptMapper deptMapper;
	
	public int dept_add(Dept dept){
		
		return deptMapper.dept_insert(dept);
	}

	public List<Dept> dept_select(Dept dept){
		
		return deptMapper.dept_select(dept);
	}

	public Dept dept_oneselect_delete(Dept dept) {
		// TODO Auto-generated method stub
		return deptMapper.dept_oneselect_delete(dept);
	}

	public void dept_delete(Dept dept) {
		// TODO Auto-generated method stub
		deptMapper.dept_delete(dept);
	}

	public Dept dept_oneselect_update(Dept dept) {
		// TODO Auto-generated method stub
		return  deptMapper.dept_oneselect_update(dept);
	}

	public int dept_update(Dept dept) {
		// TODO Auto-generated method stub
		return deptMapper.dept_update(dept);
	}

	public Dept dept_oneselect_add(Dept dept) {
		// TODO Auto-generated method stub
		return deptMapper.dept_oneselect_add(dept);
	}

	public List<Dept> dept_selectnum(Dept dept) {
		// TODO Auto-generated method stub
		return deptMapper.dept_selectnum(dept);
	}

	public Dept dept_oneselect_id(Dept dept) {
		// TODO Auto-generated method stub
		return deptMapper.dept_oneselect_id(dept);
	}
	
//	public User login(User user){
//		return userMapper.findUser(user);
//	}
}
