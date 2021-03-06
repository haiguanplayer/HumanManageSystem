package com.qut.service;

import java.util.List;

import com.qut.pojo.Post;
import com.qut.pojo.Staff;

public interface PostService {

	public int insert(Post post);
	public Post findById(Post post);
	public int updateById(Post post);
	public int deleteById(Post post);
	public List<Staff> findStaffByPostId(Post post);
	public List<Post> findAllPost();
}
