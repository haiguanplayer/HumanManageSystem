package com.qut.mapper;

import java.util.List;

import com.qut.pojo.Aemo;
import com.qut.pojo.Bemo;
import com.qut.pojo.Cemo;
import com.qut.pojo.Demo;
import com.qut.pojo.Eemo;
import com.qut.pojo.User;

public interface ReportMapper {

	/**
	 * �����û���Ϣ
	 * */
	public List<Aemo> reportNew(User user);
	
	public List<Bemo> reportLeave(User user);
	
	public List<Cemo> reportMoveD(User user);
	
	public List<Demo> reportMoveP(User user);
	
	public List<Eemo> reportE(User user);
}
