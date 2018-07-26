package com.qut.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.qut.pojo.Aemo;
import com.qut.pojo.Bemo;
import com.qut.pojo.Cemo;
import com.qut.pojo.Demo;
import com.qut.pojo.Eemo;
import com.qut.pojo.User;
import com.qut.service.ReportService;

@Controller
public class ReportController {

	@Autowired
	private ReportService userService;
	
	@RequestMapping("/reportA")
	public ModelAndView reportA(User user){
		ModelAndView view = new ModelAndView();
			List<Aemo> res = userService.reportNew(user);
			String aa = user.getSdate();
			String bb = user.getEdate();
			String rep = user.getReporttype();
			String depe = user.getDeptname();
			view.addObject("aa", aa);
			view.addObject("bb", bb);
			view.addObject("cc", rep);
			view.addObject("dd", depe);
			view.addObject("x",res);
			view.setViewName("resultA");	
			return view;
	}
	@RequestMapping("/reportB")
	public ModelAndView reportB(User user){
		ModelAndView view = new ModelAndView();
			List<Bemo> res = userService.reportLeave(user);
			String aa = user.getSdate();
			String bb = user.getEdate();
			String rep = user.getReporttype();
			String depe = user.getDeptname();
			view.addObject("aa", aa);
			view.addObject("bb", bb);
			view.addObject("cc", rep);
			view.addObject("dd", depe);
			view.addObject("x",res);
			view.setViewName("resultB");	
			return view;
	}
	@RequestMapping("/reportC")
	public ModelAndView reportC(User user){
		ModelAndView view = new ModelAndView();
			List<Cemo> res = userService.reportMoveD(user);
			String aa = user.getSdate();
			String bb = user.getEdate();
			String rep = user.getReporttype();
			String depe = user.getDeptname();
			view.addObject("aa", aa);
			view.addObject("bb", bb);
			view.addObject("cc", rep);
			view.addObject("dd", depe);
			view.addObject("x",res);
			view.setViewName("resultC");	
			return view;
	}
	@RequestMapping("/reportD")
	public ModelAndView reportD(User user){
		ModelAndView view = new ModelAndView();
			List<Demo> res = userService.reportMoveP(user);
			String aa = user.getSdate();
			String bb = user.getEdate();
			String rep = user.getReporttype();
			String depe = user.getDeptname();
			view.addObject("aa", aa);
			view.addObject("bb", bb);
			view.addObject("cc", rep);
			view.addObject("dd", depe);
			view.addObject("x",res);
			view.setViewName("resultD");	
			return view;
	}
	@RequestMapping("/reportE")
	public ModelAndView reportE(User user){
		String s=user.getSdate();
		String ss;
		ss = s.substring(0, 7);
		user.setSdate(ss.concat("-01"));
		user.setEdate(ss.concat("-28"));
		ModelAndView view = new ModelAndView();
			List<Eemo> res = userService.reportE(user);
			view.addObject("month", s.substring(0, 7));
			String aa = user.getSdate();
			String bb = user.getEdate();
			String rep = user.getReporttype();
			String depe = user.getDeptname();
			view.addObject("aa", aa);
			view.addObject("bb", bb);
			view.addObject("cc", rep);
			view.addObject("dd", depe);
			view.addObject("x",res);
			view.setViewName("resultE");	
			return view;
	}
	
	
	@RequestMapping("/resultA_dayin")
	public ModelAndView resultA_dayin(String reporttype, String sdate,
			String edate, String deptname){
		User user = new User();
		user.setReporttype(reporttype);
		user.setSdate(sdate);
		user.setEdate(edate);
		user.setDeptname(deptname);
		ModelAndView view = new ModelAndView();
		List<Aemo> res = userService.reportNew(user);
		String aa = user.getSdate();
		String bb = user.getEdate();
		view.addObject("aa", aa);
		view.addObject("bb", bb);
		view.addObject("x",res);
		view.setViewName("resultA1");	
		return view;
	}
	
	@RequestMapping("/resultB_dayin")
	public ModelAndView resultB_dayin(String reporttype, String sdate,
			String edate, String deptname){
		User user = new User();
		user.setReporttype(reporttype);
		user.setSdate(sdate);
		user.setEdate(edate);
		user.setDeptname(deptname);
		ModelAndView view = new ModelAndView();
		List<Bemo> res = userService.reportLeave(user);
		String aa = user.getSdate();
		String bb = user.getEdate();
		view.addObject("aa", aa);
		view.addObject("bb", bb);
		view.addObject("x",res);
		view.setViewName("resultB1");	
		return view;
	}
	
	@RequestMapping("/resultC_dayin")
	public ModelAndView resultC_dayin(String reporttype, String sdate,
			String edate, String deptname){
		User user = new User();
		user.setReporttype(reporttype);
		user.setSdate(sdate);
		user.setEdate(edate);
		user.setDeptname(deptname);
		ModelAndView view = new ModelAndView();
			List<Cemo> res = userService.reportMoveD(user);
			String aa = user.getSdate();
			String bb = user.getEdate();
			view.addObject("aa", aa);
			view.addObject("bb", bb);
			view.addObject("x",res);
			view.setViewName("resultC1");	
			return view;
	}
	
	@RequestMapping("/resultD_dayin")
	public ModelAndView resultD_dayin(String reporttype, String sdate,
			String edate, String deptname){
		User user = new User();
		user.setReporttype(reporttype);
		user.setSdate(sdate);
		user.setEdate(edate);
		user.setDeptname(deptname);
		ModelAndView view = new ModelAndView();
			List<Demo> res = userService.reportMoveP(user);
			String aa = user.getSdate();
			String bb = user.getEdate();
			view.addObject("aa", aa);
			view.addObject("bb", bb);
			view.addObject("x",res);
			view.setViewName("resultD1");	
			return view;
	}
	
	@RequestMapping("/resultE_dayin")
	public ModelAndView resultE_dayin(String reporttype, String sdate,
			String edate, String deptname){
		String s=sdate;
		String ss;
		ss = s.substring(0, 7);
		User user = new User();
		user.setSdate(ss.concat("-01"));
		user.setEdate(ss.concat("-28"));
		user.setDeptname(deptname);
		user.setReporttype(reporttype);
		ModelAndView view = new ModelAndView();
			List<Eemo> res = userService.reportE(user);
			view.addObject("month", s.substring(0, 7));
			String aa = user.getSdate();
			String bb = user.getEdate();
			String rep = user.getReporttype();
			String depe = user.getDeptname();
			view.addObject("aa", aa);
			view.addObject("bb", bb);
			view.addObject("cc", rep);
			view.addObject("dd", depe);
			view.addObject("x",res);
			view.setViewName("resultE1");	
			return view;
	}
}
