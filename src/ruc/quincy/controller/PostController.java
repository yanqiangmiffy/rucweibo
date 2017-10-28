package ruc.quincy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ruc.quincy.service.PostService;
@Controller
public class PostController {
	
	//×Ô¶¯×¢ÈëPostService
	@Autowired
	@Qualifier("postService")
	private PostService postService;
	
	
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String save(@RequestParam("post_content")String post_content){
		System.out.println(post_content);
		return "home";
	}
}
