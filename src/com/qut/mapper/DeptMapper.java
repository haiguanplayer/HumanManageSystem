package com.qut.mapper;

import java.util.List;

import com.qut.pojo.Dept;

public interface DeptMapper {

	public int 		  dept_insert(Dept dept);
	public List<Dept> dept_select(Dept dept);
	public Dept 	  dept_oneselect_delete(Dept dept);
	public Dept 	  dept_oneselect_update(Dept dept);
	public void 	  dept_delete(Dept dept);
	public int 	 	  dept_update(Dept dept);
	public Dept		  dept_oneselect_add(Dept dept);
	public List<Dept> dept_selectnum(Dept dept);
	public Dept dept_oneselect_id(Dept dept);
	
}
