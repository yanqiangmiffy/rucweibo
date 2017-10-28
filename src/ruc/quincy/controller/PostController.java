package ruc.quincy.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ruc.quincy.domain.Post;
import ruc.quincy.domain.User;
import ruc.quincy.service.PostService;
@Controller
public class PostController {
	
	//自动注入PostService
	@Autowired
	@Qualifier("postService")
	private PostService postService;
	
	
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String save(@RequestParam("post_content")String post_content,
			HttpSession session){
		Date post_datetime=new Date();
		Post post=new Post();
		
		User user=(User) session.getAttribute("user");
		post.setPost_ownerid(user.getUser_id());
		post.setPost_content(post_content);
		post.setPost_datetime(post_datetime);
		post.setPost_ownername(user.getUser_nickname());
		post.setPost_ownerimage(user.getUser_image());
		System.out.println(user.getUser_nickname());
		postService.savePost(post);
		return "redirect:/home";
	}
	
	//加载主页
	@RequestMapping(value="/home",method=RequestMethod.GET)
	public String home(Model model){
		List<Post> post=postService.selectAllPost();
		model.addAttribute("post",post);
		return "home";
	}
}
