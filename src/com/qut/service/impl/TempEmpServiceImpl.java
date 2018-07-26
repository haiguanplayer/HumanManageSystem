package com.qut.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.qut.mapper.TempEmpMapper;
import com.qut.pojo.TempEmp;
import com.qut.service.TempEmpService;

@Service
@Transactional(rollbackFor = Exception.class)
public class TempEmpServiceImpl implements TempEmpService{
	
	@Autowired
	private TempEmpMapper tempEmpMapper;
	

	 public int Temp_updateTime(TempEmp tempemp) {
		 return tempEmpMapper.Temp_updateTime(tempemp);
	 }
	 
	 public List<TempEmp> Temp_findTemp() {
		 return tempEmpMapper.Temp_findTemp();
	 }
	public TempEmp Temp_findById(Integer p_id) {
		// TODO Auto-generated method stub
		return tempEmpMapper.Temp_findById(p_id);
	}
	
	public int Temp_updateQm(TempEmp tempemp) {
		return tempEmpMapper.Temp_updateQm(tempemp);
	}
	public int Temp_updateToZs(TempEmp tempemp) {
		return tempEmpMapper.Temp_updateToZs(tempemp);
	}
	
	public List<TempEmp> Temp_findByNow(){
		return tempEmpMapper.Temp_findByNow();
	}

}
