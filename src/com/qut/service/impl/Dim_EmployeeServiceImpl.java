package com.qut.service.impl;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.qut.mapper.Dim_EmployeeMapper;
import com.qut.pojo.Staff;
import com.qut.pojo.dimission;
import com.qut.service.Dim_EmployeeService;

@Service
@Transactional(rollbackFor=Exception.class)
public  class Dim_EmployeeServiceImpl implements Dim_EmployeeService{
	@Autowired
	private Dim_EmployeeMapper employeeMapper;

	public Staff selectEmployee(Staff employee) {
		return employeeMapper.findEmployeeById(employee);
	}

	public int FindEmp(dimission di) {
		
		return employeeMapper.insertEmployee(di);
	}

	public List<dimission> FinDiEmp(dimission di) {
		
		return employeeMapper.findDiEmployee(di);
	}

	public int DelEmp(Staff employee) {
		// TODO Auto-generated method stub
		return employeeMapper.delEmployee(employee);
	}

	public int InsTal(dimission di) {
		// TODO Auto-generated method stub
		return employeeMapper.insertTalent(di);
	}
	
	public List<Staff> selectEmployee1(Staff employee) {
		// TODO Auto-generated method stub
		return employeeMapper.findEmployeeByDept(employee);
	}


	public List<Staff> selectEmployee2(Staff employee) {
		// TODO Auto-generated method stub
		return employeeMapper.findEmployeeByName(employee);
	}


	public List<dimission> FinDiEmp1(dimission di) {
		// TODO Auto-generated method stub
		return employeeMapper.findDiEmpByName(di);
	}


	public List<dimission> FinDiEmp2(dimission di) {
		// TODO Auto-generated method stub
		return employeeMapper.findDiEmpByDept(di);
	}


	public List<dimission> FinDiEmp3(dimission di) {
		// TODO Auto-generated method stub
		return employeeMapper.findDiEmpByPost(di);
	}


	public List<dimission> FinDiEmp4(dimission di) {
		// TODO Auto-generated method stub
		return employeeMapper.findDiEmpByLeaveclass(di);
	}


	public List<dimission> FinDiEmp5(dimission di) {
		// TODO Auto-generated method stub
		return employeeMapper.findDiEmpByDate(di);
	}



	


}
