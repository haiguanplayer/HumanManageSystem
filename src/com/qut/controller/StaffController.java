package com.qut.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.qut.pojo.Move_Dept;
import com.qut.pojo.Move_Post;
import com.qut.pojo.Staff;
import com.qut.pojo.Talent;
import com.qut.service.StaffService;
import com.qut.service.TalentService;

@Controller
public class StaffController {

	@Autowired
	private StaffService userService;
	
	@Autowired
	private TalentService talentService;
	
	@RequestMapping("/talent_tiaohui")
	public ModelAndView Talent_tiaohui()
	{
		ModelAndView view = new ModelAndView();
		view.setViewName("welcome");
		return view;
	}
	
	@RequestMapping("/emp_register")
	public ModelAndView con(Staff staff, String caozuo){
		ModelAndView view = new ModelAndView();
		if(caozuo.equals("查询")){
			List<Staff> list = userService.emp_findAllStaff();
			view.addObject("u", list);
			view.setViewName("emp_chaxun");
		}
		
		else if(caozuo.equals("修改")){
			List<Staff> list = userService.emp_findAllStaff();
			view.addObject("u", list);
			view.setViewName("emp_xiugai");
		}
		
		else if(caozuo.equals("增加")){
			view.setViewName("emp_insertchoice");
		}
		return  view;
	}
	
	@RequestMapping("/emp_insertchoice")
	public ModelAndView insertchoice(String choice){
		ModelAndView view = new ModelAndView();
		if(choice.equals("手动添加")){
			view.setViewName("emp_insert");
		}else if(choice.equals("从人才库添加")){
			List<Talent> list = talentService.Talent_findAllTalent();
			view.addObject("u", list);
			view.setViewName("emp_telentchoice");
		}
		return view;
	}
	
	@RequestMapping("/emp_inserttalent")
	public ModelAndView insertTalent(Integer xuanze){
		ModelAndView view = new ModelAndView();
		Talent talent2 = talentService.Talent_findBytalent(xuanze);
		talentService.Talent_deleteBytalent(xuanze);
		view.addObject("u", talent2);
		view.setViewName("emp_talentinsert");
		return view;
	}
	
	@RequestMapping("/emp_xiugai")
	public ModelAndView xiugai(Staff staff, Integer xuanze){
		ModelAndView view = new ModelAndView();
		staff.setP_id(xuanze);
		Staff x = userService.emp_findById(staff);
		view.addObject("u", x);
		view.setViewName("emp_gengxin");
		return view;
	}
	
	
	@RequestMapping("/emp_gengxin")
	public ModelAndView gengxin(Staff staff){
		ModelAndView view = new ModelAndView();
		Staff zStaff = userService.emp_findById(staff);
		int res = userService.emp_updateStaff(staff);
		if(res != 1)
		{
			view.setViewName("emp_error");
		}
		else{
			Staff eStaff = userService.emp_findById(staff);
			if(zStaff.getDept_name().equals(eStaff.getDept_name()) && 
					zStaff.getPost_name().equals(eStaff.getPost_name()))
				view.setViewName("emp_register");
			else{
				view.addObject("u", eStaff);
				view.addObject("z", zStaff);
				view.setViewName("emp_success");
			}
		}
		return view;
	}
	
	
	@RequestMapping("/emp_insert")
	public ModelAndView insert(Staff staff){
		ModelAndView view = new ModelAndView();
		if(!staff.getP_name().isEmpty()&&!staff.getBirth().isEmpty()
			&&!staff.getId_card().isEmpty()&&!staff.getEntry_date().isEmpty()&&!staff.getWork_state().isEmpty()){
			int res = userService.emp_insertstaff(staff);
			if(res != 1)
			{
				view.setViewName("emp_register");
			}
			else{
				Staff zStaff = userService.emp_selectById_card(staff);
				view.addObject("u", zStaff);
				view.setViewName("emp_success");
			}
		}
		return view;
	}
	
	@RequestMapping("/emp_update")
	public ModelAndView updatedeptandpost(String page, Staff staff, 
			String before_dept, String before_post){
		ModelAndView view = new ModelAndView();
		if(page.equals("返回")){
			
			view.setViewName("emp_register");
		}
		else if(page.equals("部门变更记录")){
			Staff eStaff = userService.emp_findById(staff);
			eStaff.setDept_name(before_dept);
			Staff em = userService.emp_findById(staff);
			view.addObject("u", em);
			view.addObject("z", eStaff);
			view.setViewName("emp_Movedept");
		}
		else if(page.equals("岗位变更记录")){
			Staff eStaff = userService.emp_findById(staff);
			eStaff.setPost_name(before_post);
			Staff em = userService.emp_findById(eStaff);
			view.addObject("u", em);
			view.addObject("z", eStaff);
			view.setViewName("emp_Movepost");
		}
		return view;
	}
	
	@RequestMapping("/emp_insertDept")
	public ModelAndView insertDept(Move_Dept move_Dept){
		ModelAndView view = new ModelAndView();
		int res = userService.emp_insertMove_Dept(move_Dept);
		if(res != 1){
			view.setViewName("emp_error");
		}
		else
			view.setViewName("emp_caozuosuccess");
		return view;
	}
	
	@RequestMapping("/emp_insertpost")
	public ModelAndView insertpost(Move_Post move_Post){
		ModelAndView view = new ModelAndView();
		int res = userService.emp_insertMove_Post(move_Post);
		if(res != 1){
			view.setViewName("emp_error");
		}
		else{
			view.setViewName("emp_caozuosuccess");
		}
		return view;
	}
	
	@RequestMapping("/emp_ruzhi")
	public ModelAndView ruzhi(){
		ModelAndView view = new ModelAndView();
		view.setViewName("emp_register");
		return view;
	}
	
	
	@RequestMapping("/Talent_select")
	public ModelAndView Talent(){
		ModelAndView view = new ModelAndView();
		List<Talent> list = talentService.Talent_findAllTalent();
		view.addObject("u", list);
		view.setViewName("Talent_selectAll");
		return view;
	}
	
	@RequestMapping("/Talent_insertonjsp")
	public ModelAndView Talent_insertonjsp(){
		ModelAndView view = new ModelAndView();
		view.setViewName("Talent_insert");
		return view;
	}
	
	@RequestMapping("/Talent_insert")
	public ModelAndView Talent_insert(Talent talent)
	{
		ModelAndView view = new ModelAndView();
		talentService.Talent_insert(talent);
		view.setViewName("welcome");
		return view;
	}
	
	@RequestMapping("emp_summary")
	public ModelAndView Talent_summary()
	{
		ModelAndView view = new ModelAndView();
		List<Staff> list = userService.emp_findAllStaff();
		view.addObject("u", list);
		view.setViewName("emp_selectByOne");
		return view;
	}
	
	@RequestMapping("emp_selectByOne")
	public ModelAndView Talent_selectByOne(Integer choice){
		ModelAndView view = new ModelAndView();
		Staff aStaff = new Staff();
		aStaff.setP_id(choice);
		Staff staff = userService.emp_findById(aStaff);
		view.addObject("u", staff);
		view.setViewName("emp_selectone");
		return view;
	}
}