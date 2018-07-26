package com.qut.service;

import java.util.List;

import com.qut.pojo.Staff;
import com.qut.pojo.dimission;

public interface Dim_EmployeeService {
	public Staff selectEmployee(Staff employee);
	
	public List<Staff> selectEmployee1(Staff employee);
	
	public List<Staff> selectEmployee2(Staff employee);
	public int  FindEmp(dimission di);
	public List<dimission>  FinDiEmp(dimission di);
	
	public List<dimission> FinDiEmp1(dimission di);
	
	public List<dimission> FinDiEmp2(dimission di);
	
	public List<dimission> FinDiEmp3(dimission di);
	
	public List<dimission> FinDiEmp4(dimission di);
	
	public List<dimission> FinDiEmp5(dimission di);
	public int DelEmp(Staff employee);
	
	
	public int InsTal(dimission di);
	
	
}
