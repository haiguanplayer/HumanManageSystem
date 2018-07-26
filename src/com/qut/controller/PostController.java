package com.qut.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.qut.pojo.Post;
import com.qut.pojo.Staff;
import com.qut.service.PostService;

@Controller
public class PostController {
	@Autowired
	private PostService postService;
	
	@RequestMapping("/post_insert")
	public ModelAndView insert(Post post){
		ModelAndView view = new ModelAndView();
		if(post.getPost_name()!="" && post.getPost_max()!=0){
			int res = postService.insert(post);
			if(res!=1){
				//失败
				view.setViewName("post_insert");
			}else{
				//成功
				view.setViewName("welcome");
			}
		}
		else{
			view.setViewName("post_insert");
		}
		return view;
	}
	
	
	@RequestMapping("/post_posttable")
	public ModelAndView posttable(String action){
		ModelAndView view = new ModelAndView();

		List<Post> list = postService.findAllPost();
		view.addObject("p", list);
		//view.setViewName("posttable");
		
		if(action.equals("insert")){
			view.setViewName("post_insert");
		}else if(action.equals("operate")){
			view.setViewName("post_find");
		}/*else if(action.equals("查询岗位下员工")){
			view.setViewName("findstaff");
		}*/
		
		return view;
	}
	@RequestMapping("/post_find")
	public ModelAndView find(Post post,Integer choose,String doaction){
		ModelAndView view = new ModelAndView();
		
		if(doaction.equals("修改")){
			post.setPost_id(choose);
			Post pp = postService.findById(post);
			view.addObject("pp", pp);
			view.setViewName("post_update");
		}
		else if(doaction.equals("返回")){
			view.setViewName("welcome");
		}
		else if(doaction.equals("删除")){
			post.setPost_id(choose);
			List<Staff> fs = postService.findStaffByPostId(post);
			if(fs.isEmpty()){//岗位下没有员工，才可以删除
				int res = postService.deleteById(post);
				if(res != 1){
					view.setViewName("post_error");
				}else{
					view.setViewName("post_success");
				}
			}
			else{
				view.setViewName("post_error");
			}
		}
		else if(doaction.equals("查询岗位下员工")){
			post.setPost_id(choose);
			List<Staff> fs = postService.findStaffByPostId(post);
			view.addObject("fs", fs);
			view.setViewName("post_findstaff");
		}

		return view;
	}
	@RequestMapping("/post_update")
	public ModelAndView update(Post post){
		ModelAndView view = new ModelAndView();
		
		int res = postService.updateById(post);
		if(res != 1){
			view.setViewName("post_error");
		}else{
			view.setViewName("post_success");
		}
		return view;
	}
}
