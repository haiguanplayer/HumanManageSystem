package com.qut.mapper;

import java.util.List;

import com.qut.pojo.Move_Dept;
import com.qut.pojo.Move_Post;
import com.qut.pojo.Staff;

public interface StaffMapper {
	

	public List<Staff> emp_findAllStaff();
	
	public Staff emp_findById(Staff staff);
	
	public int emp_updateStaff(Staff staff);
	
	public int emp_insertstaff(Staff staff);
	
	public int emp_deleteStaff(Staff staff);
	
	public int emp_insertMove_Dept(Move_Dept move_Dept);
	
	public int emp_insertMove_Post(Move_Post move_Post);
	
	public Staff emp_selectById_card(Staff staff);
}
