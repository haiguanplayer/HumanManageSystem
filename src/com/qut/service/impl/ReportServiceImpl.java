package com.qut.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.qut.mapper.ReportMapper;
import com.qut.pojo.Aemo;
import com.qut.pojo.Bemo;
import com.qut.pojo.Cemo;
import com.qut.pojo.Demo;
import com.qut.pojo.Eemo;
import com.qut.pojo.User;
import com.qut.service.ReportService;

@Service
@Transactional(rollbackFor=Exception.class)
public class ReportServiceImpl implements ReportService{

	@Autowired
	private ReportMapper userMapper;
	
	public List<Aemo> reportNew(User user) {
		
		return userMapper.reportNew(user);
	}
	
	public List<Bemo> reportLeave(User user){
		
		return userMapper.reportLeave(user);
	}
	public List<Cemo> reportMoveD(User user){
		
		return userMapper.reportMoveD(user);
	}
	public List<Demo> reportMoveP(User user){
		
		return userMapper.reportMoveP(user);
	}
	public List<Eemo> reportE(User user){
		
		return userMapper.reportE(user);
	}
}
