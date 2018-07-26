package com.qut.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.qut.pojo.Dept;

import com.qut.service.DeptService;

@Controller
public class DeptController {
	
	@Autowired
	private DeptService deptService;
	
	@RequestMapping("/dept_addjsp")
	public ModelAndView dept_addjsp(String page){
		ModelAndView view = new ModelAndView();
		if(page.equals("add")){
			view.setViewName("dept_add");	
		}else{
			view.setViewName("dept_delete");
		}
		return view;
	}
	
	@RequestMapping("/dept_add")
	public ModelAndView dept_add(Dept dept,String jump){
		ModelAndView view =new ModelAndView();
		 if(!dept.getDept_name().isEmpty()&&!dept.getDept_phone().isEmpty()
				&&!dept.getDept_build_date().isEmpty()){
			Dept res =deptService.dept_oneselect_add(dept);
			if(res==null){
				int add = deptService.dept_add(dept);
				view.setViewName("dept_success");
			}
			else{
				view.setViewName("dept_fail");
				
			}
		}
//		if(res!=1 ){
//			//失败
//			view.setViewName("dept_add");
//		}else{
//			//成功
//			view.setViewName("success");
//		}
		return view;
	}
	
	//查询部门下人头
	
	@RequestMapping("/dept_selectnum")
	public ModelAndView selectnum(Dept dept){
		ModelAndView view =new ModelAndView();
		List<Dept> d=deptService.dept_selectnum(dept);
		view.addObject("x",d);
		view.setViewName("dept_select_then");
		return view;
	}
	
	
	//查询所有信息
	@RequestMapping("/dept_select")
	public ModelAndView dept_select(Dept dept,String jump){
		ModelAndView view =new ModelAndView();
		List<Dept> d=deptService.dept_select(dept);
		view.addObject("x",d);
		if(jump.equals("select"))
			view.setViewName("dept_select");
		else if(jump.equals("update"))
			view.setViewName("dept_update");
		
		return view;
	}
	
	//id,name查询单个信息
	@RequestMapping("/dept_oneselect")
	public ModelAndView dept_oneselect(Dept dept,String jump){
		ModelAndView view=new ModelAndView();
		if(jump.equals("删除")){
			Dept c=deptService.dept_oneselect_id(dept);
			Dept d=deptService.dept_oneselect_delete(c);
			view.addObject("x", d);
			view.setViewName("dept_delete_then");}
		else if(jump.equals("修改")){
			Dept d=deptService.dept_oneselect_update(dept);
			view.addObject("x", d);
			view.setViewName("dept_update_then");}
		else if(jump.equals("返回")){
			view.setViewName("welcome");}
		return view;
	}
	
	//删除
	@RequestMapping("/dept_delete")
	public ModelAndView dept_delete(Dept dept){
		ModelAndView view=new ModelAndView();
		if(dept.getCount()==0){
		deptService.dept_delete(dept);
		view.setViewName("welcome");}
		return view;
	}
	
	//修改
	@RequestMapping("/dept_update")
	public ModelAndView dept_update(Dept dept){
		ModelAndView view =new ModelAndView();
		int res =deptService.dept_update(dept);
		if(res!=1 ){
			//失败
			view.setViewName("dept_select");
		}else{
			//成功
			view.setViewName("welcome");
		}
		return view;
	}
}
