package com.qut.controller;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.qut.pojo.TempEmp;
import com.qut.service.TempEmpService;
import com.sun.org.apache.bcel.internal.generic.NEW;


@Controller
public class TempEmpController {

	@Autowired
	private TempEmpService tempEmpService;
	
	@RequestMapping("/ReportA_jump")
	public ModelAndView ReportA()
	{
		ModelAndView view = new ModelAndView();
		view.setViewName("reportA");
		return view;
	}
	
	@RequestMapping("/ReportB_jump")
	public ModelAndView ReportB()
	{
		ModelAndView view = new ModelAndView();
		view.setViewName("reportB");
		return view;
	}
	
	@RequestMapping("/ReportC_jump")
	public ModelAndView ReportC()
	{
		ModelAndView view = new ModelAndView();
		view.setViewName("reportC");
		return view;
	}
	
	@RequestMapping("/ReportD_jump")
	public ModelAndView ReportD()
	{
		ModelAndView view = new ModelAndView();
		view.setViewName("reportD");
		return view;
	}
	
	@RequestMapping("/ReportE_jump")
	public ModelAndView ReportE()
	{
		ModelAndView view = new ModelAndView();
		SimpleDateFormat nowtime = new SimpleDateFormat("yyyy-MM-dd ");
        String string = "";
        string = string+nowtime.format(new Date());
        view.addObject("u", string);
		view.setViewName("reportE");
		return view;
	}
	
	@RequestMapping("/Temp_findTemp")
	public ModelAndView findTemp(TempEmp tempemp) {	
		ModelAndView temp = new ModelAndView();
		List<TempEmp> list = tempEmpService.Temp_findTemp();
		for (TempEmp c : list) {
			tempEmpService.Temp_updateQm(c);
		}
		temp.addObject("findTemp", list);
		temp.setViewName("Temp_tempEmpInfo");
		return temp;
	}
	
	@RequestMapping("/Temp_findAllTemp")
	public ModelAndView findAllTemp(TempEmp tempemp) {	
		ModelAndView temp = new ModelAndView();
		List<TempEmp> list = tempEmpService.Temp_findTemp();
		temp.addObject("findTemp", list);
		temp.setViewName("Temp_try_timeUpdate");
		return temp;
	}
	
	@RequestMapping("/Temp_selectTime")
	public ModelAndView updateTime(Integer p_id) {
		ModelAndView temp = new ModelAndView();
		List<TempEmp> list = tempEmpService.Temp_findTemp();
		temp.addObject("findTemp", list);
		TempEmp u = tempEmpService.Temp_findById(p_id);
		if(u == null)
			temp.setViewName("error");
		else {
			temp.addObject("f", u);
			temp.setViewName("Temp_xiugai");
		}
		return temp;
	}
	
	@RequestMapping("/Temp_updateTime")
	public ModelAndView update(TempEmp tempEmp)
	{
		ModelAndView view = new ModelAndView();
		int res = tempEmpService.Temp_updateTime(tempEmp);
		if(res != 1)
			view.setViewName("Temp_xiugai");
		else {
			tempEmpService.Temp_updateQm(tempEmp);
			List<TempEmp> list = tempEmpService.Temp_findTemp();
			view.addObject("findTemp", list);
			view.setViewName("Temp_try_timeUpdate");
		}
		return view;
	}
	
	@RequestMapping("/Temp_updateToZs")
	public ModelAndView updateToZs(Integer choice)
	{
		TempEmp tempEmp = new TempEmp();
		tempEmp.setP_id(choice);
		ModelAndView view = new ModelAndView();
		tempEmpService.Temp_updateToZs(tempEmp);
		view.setViewName("Temp_success");
		return view;
	}
	
	@RequestMapping("/Temp_findByNow")
	public ModelAndView findByNow() {	
		ModelAndView temp = new ModelAndView();
		List<TempEmp> list = tempEmpService.Temp_findByNow();
		if(list==null)
			System.out.println("1");
		temp.addObject("findByNow", list);
		temp.setViewName("Temp_qimanInfo");
		return temp;
	}

	
}
