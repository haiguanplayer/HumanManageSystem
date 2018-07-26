package com.qut.mapper;

import java.util.List;

import com.qut.pojo.Staff;
import com.qut.pojo.dimission;



public interface Dim_EmployeeMapper {


	public Staff findEmployeeById(Staff employee);
    public List<Staff>	findEmployeeByDept(Staff employee);
	public int insertEmployee(dimission di);
	
	public List<dimission> findDiEmployee(dimission di);
	public int delEmployee (Staff employee);
	public int insertTalent (dimission di);
	public List<Staff> findEmployeeByName(Staff employee);
	
	public List<dimission> findDiEmpByName(dimission di);
	public List<dimission> findDiEmpByDept(dimission di);
	public List<dimission> findDiEmpByPost(dimission di);
	public List<dimission> findDiEmpByLeaveclass(dimission di);
	public List<dimission> findDiEmpByDate(dimission di);
	

}
