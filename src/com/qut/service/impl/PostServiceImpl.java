package com.qut.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.qut.mapper.PostMapper;
import com.qut.pojo.Post;
import com.qut.pojo.Staff;
import com.qut.service.PostService;
@Service
@Transactional(rollbackFor=Exception.class)
public class PostServiceImpl  implements PostService{
	@Autowired
	private PostMapper postMapper;

	public int insert(Post post){
		return postMapper.insert(post);
	}
	public Post findById(Post post){
		return postMapper.findById(post);
	}

	public int updateById(Post post){
		return postMapper.updateById(post);
	}

	public int deleteById(Post post){
		return postMapper.deleteById(post);
	}
	public List<Staff> findStaffByPostId(Post post){
		return postMapper.findStaffByPostId(post);
	}

	public List<Post> findAllPost(){
		return postMapper.findAllPost();
	}
}
