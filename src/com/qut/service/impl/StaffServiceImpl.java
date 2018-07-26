package com.qut.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.qut.mapper.StaffMapper;
import com.qut.pojo.Move_Dept;
import com.qut.pojo.Move_Post;
import com.qut.pojo.Staff;
import com.qut.service.StaffService;

@Service
@Transactional(rollbackFor = Exception.class)
public class StaffServiceImpl implements StaffService{
	@Autowired
	private StaffMapper userMapper;


	public List<Staff> emp_findAllStaff() {
		
		return userMapper.emp_findAllStaff();
	}


	public Staff emp_findById(Staff staff) {
		return userMapper.emp_findById(staff);
	}


	public int emp_updateStaff(Staff staff) {
		return userMapper.emp_updateStaff(staff);
		
	}


	public int emp_insertstaff(Staff staff) {
		// TODO Auto-generated method stub
		return userMapper.emp_insertstaff(staff);
	}


	public int emp_deleteStaff(Staff staff) {
		// TODO Auto-generated method stub
		return userMapper.emp_deleteStaff(staff);
	}


	public int emp_insertMove_Dept(Move_Dept mDept) {
		
		return userMapper.emp_insertMove_Dept(mDept);
	}


	public int emp_insertMove_Post(Move_Post mPost) {
		// TODO Auto-generated method stub
		return userMapper.emp_insertMove_Post(mPost);
	}


	public Staff emp_selectById_card(Staff staff) {
		// TODO Auto-generated method stub
		return userMapper.emp_selectById_card(staff);
	}



	
}
