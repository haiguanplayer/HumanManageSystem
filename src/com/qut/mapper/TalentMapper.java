package com.qut.mapper;

import java.util.List;

import com.qut.pojo.Talent;

public interface TalentMapper {
	public List<Talent> Talent_findAllTalent();
	
	public Talent Talent_findBytalent(Integer p_id);
	
	public void Talent_deleteBytalent(Integer p_id);
	
	public void Talent_insert(Talent talent);
}
