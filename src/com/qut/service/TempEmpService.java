package com.qut.service;

import java.util.List;

import com.qut.pojo.TempEmp;

public interface TempEmpService {

	public List<TempEmp> Temp_findTemp();
		
	public int Temp_updateTime(TempEmp tempemp);
	 
	public TempEmp Temp_findById(Integer p_id);
	
	public int Temp_updateQm(TempEmp tempemp);
	
	public int Temp_updateToZs(TempEmp tempemp);
	
	public List<TempEmp> Temp_findByNow();
}
