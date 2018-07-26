package com.qut.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.qut.pojo.Dept;
import com.qut.pojo.Staff;
import com.qut.pojo.Talent;
import com.qut.pojo.dimission;
import com.qut.service.Dim_EmployeeService;


@Controller
public class Dim_EmployeeController {
	@Autowired
	private Dim_EmployeeService employeeService;
	
	@RequestMapping("/Dim_main")
	public ModelAndView Dim_main()
	{
		ModelAndView view = new ModelAndView();
		view.setViewName("Dim_main");
		return view;
	}
	
	@RequestMapping("/findEmp1")
	public ModelAndView insertEmp(Staff employee){
		ModelAndView view = new ModelAndView();
		Staff em = employeeService.selectEmployee(employee);
		
		//System.out.println(em.getP_id());
		
		//int se = employeeService.FindEmp(employee);

		if(em !=null){
			view.setViewName("Dim_sel");
		}else{
			view.setViewName("Dim_fail");
		}
	view.addObject("x", em);
	return view;
	}
	
	
	
	@RequestMapping("/findEmp2")
	public ModelAndView findEmp(Staff employee){
		ModelAndView view = new ModelAndView();
		List<Staff> emp = employeeService.selectEmployee1(employee);
		if(emp != null){
			view.setViewName("Dim_deptEmp");
		}
		else{
			view.setViewName("Dim_fail");
		}
		view.addObject("y", emp);
		
		return view;
	}
	
	@RequestMapping("/findEmp3")
	public ModelAndView findEmp1(Staff employee){
		ModelAndView view = new ModelAndView();
		List<Staff> emp = employeeService.selectEmployee2(employee);
		if(emp != null){
			view.setViewName("Dim_deptEmp");
		}
		else{
			view.setViewName("Dim_fail");
		}
		view.addObject("y", emp);
		
		return view;
	}
	
	@RequestMapping("/chasel")
	public ModelAndView sele(dimission di,Talent talent,Staff employee){
		ModelAndView view = new ModelAndView();
		
		int res = employeeService.FindEmp(di);
		int del = employeeService.DelEmp(employee);
		int ins;
		if(di.getWhether().equals("是"));
			ins = employeeService.InsTal(di);
		if(res != 1)
		{
			view.setViewName("Dim_sel");
		}else{
			view.setViewName("Dim_success");
		}
		
		return view;
	}
	@RequestMapping("/findDiEmp")
	public ModelAndView findDi(dimission di){
		ModelAndView view = new ModelAndView();
		List<dimission> di1 = employeeService.FinDiEmp(di);
		if(di1!=null){
			view.setViewName("Dim_diEmp");
		}
		view.addObject("x", di1);
		return view;	
	}
	
	@RequestMapping("/findDiEmp1")
	public ModelAndView findDi1(dimission di){
		ModelAndView view = new ModelAndView();
		List<dimission> di1 = employeeService.FinDiEmp1(di);
		if(di1!=null){
			view.setViewName("Dim_diEmp");
		}
		view.addObject("x", di1);
		return view;	
	}
	@RequestMapping("/findDiEmp2")
	public ModelAndView findDi2(dimission di){
		ModelAndView view = new ModelAndView();
		List<dimission> di1 = employeeService.FinDiEmp2(di);
		if(di1!=null){
			view.setViewName("Dim_diEmp");
		}
		view.addObject("x", di1);
		return view;	
	}
	@RequestMapping("/findDiEmp3")
	public ModelAndView findDi3(dimission di){
		ModelAndView view = new ModelAndView();
		List<dimission> di1 = employeeService.FinDiEmp3(di);
		if(di1!=null){
			view.setViewName("Dim_diEmp");
		}
		view.addObject("x", di1);
		return view;	
	}
	@RequestMapping("/findDiEmp4")
	public ModelAndView findDi4(dimission di){
		ModelAndView view = new ModelAndView();
		List<dimission> di1 = employeeService.FinDiEmp4(di);
		if(di1!=null){
			view.setViewName("Dim_diEmp");
		}
		view.addObject("x", di1);
		return view;	
	}
	
	@RequestMapping("/findDiEmp5")
	public ModelAndView findDi5(dimission di){
		ModelAndView view = new ModelAndView();
		List<dimission> di1 = employeeService.FinDiEmp5(di);
		if(di1!=null){
			view.setViewName("Dim_diEmp");
		}
		view.addObject("x", di1);
		return view;	
	}

	
}
