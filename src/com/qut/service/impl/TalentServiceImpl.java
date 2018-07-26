package com.qut.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.qut.mapper.TalentMapper;
import com.qut.pojo.Talent;
import com.qut.service.TalentService;

@Service
@Transactional(rollbackFor = Exception.class)
public class TalentServiceImpl implements TalentService{

	@Autowired
	private TalentMapper talentMapper;
	
	public List<Talent> Talent_findAllTalent() {
		// TODO Auto-generated method stub
		return talentMapper.Talent_findAllTalent();
	}

	public Talent Talent_findBytalent(Integer p_id) {
		// TODO Auto-generated method stub
		return talentMapper.Talent_findBytalent(p_id);
	}

	public void Talent_deleteBytalent(Integer p_id) {
		// TODO Auto-generated method stub
		talentMapper.Talent_deleteBytalent(p_id);
	}

	public void Talent_insert(Talent talent) {
		talentMapper.Talent_insert(talent);
		
	}
	
}
