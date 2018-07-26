package com.qut.mapper;


import java.util.List;

import com.qut.pojo.TempEmp;

public interface TempEmpMapper {

	/**
	 * 查询所有临时员工信息
	 */
	 public List<TempEmp> Temp_findTemp();

	 public TempEmp Temp_findById(Integer p_id);
	/**
	 * 更新信息
	 */
	 public int Temp_updateTime(TempEmp tempemp);
	 
	 /**
	  * 更新期满时间
	  */
	public int Temp_updateQm(TempEmp tempemp);
	
	/**
	 * 转正更新
	 */
	public int Temp_updateToZs(TempEmp tempemp);
	/**
	 * 查询期满临时工
	 */
	public List<TempEmp> Temp_findByNow();

}
