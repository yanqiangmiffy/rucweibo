package ruc.quincy.controller;

import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import ruc.quincy.domain.User;
import ruc.quincy.service.UserService;


@Controller
public class UserController {
	//静态的日志类LogFactory
	private static final Log logger=LogFactory.getLog(UserController.class);
	
	//自动注入UserService
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	
	//加载登录页面
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login(){
		System.out.println("加载登录页面");
		return "login";
	}
	
	//处理登录请求
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public ModelAndView login(
			String user_nickname,String user_password,
			ModelAndView mv,
			HttpSession session){
		//根据登录用户名和密码查找用户，处理用户登录请求
		User user=userService.login(user_nickname, user_password);
		if(user!=null){
			System.out.println(user.getUser_nickname()+" : 登录成功");
			//登录成功
			session.setAttribute("user", user);
			mv.setView(new RedirectView("/rucweibo/home"));
		}else{
			//登录失败，设置登录失败消息，并跳转到登录页面
			mv.addObject("message", "登录名或密码错误，请重新输入");
			mv.setViewName("login");
		}
		return mv;
	}
	
	//加载注册页面，方法为GET
	@RequestMapping(value="/register",method=RequestMethod.GET)
	public String registerPage(){
		System.out.println("加载登录页面");
		return "register";
	}
	
	//处理注册请求,方法为POST
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String register(
			//将请求中的user_nickname参数的值赋给user_nickname变量，其他参数同样处理
			@RequestParam("user_nickname") String user_nickname,
			@RequestParam("user_password") String user_password,
			@RequestParam("user_email") String user_email,
			Model model
			){
		//创建User对象
		User user=new User();
		user.setUser_nickname(user_nickname);
		user.setUser_password(user_password);
		user.setUser_email(user_email);
		if(!userService.register(user)){
			//注册成功，跳抓到登录页面
			return "register";
		}
		return "login";
		
	}
	
	@RequestMapping(value="home",method=RequestMethod.GET)
	public String home(){
		return "home";
	}
}
