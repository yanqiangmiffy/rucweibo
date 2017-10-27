package ruc.quincy.controller;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import ruc.quincy.domain.User;
import ruc.quincy.service.UserService;


@Controller
public class UserController {
	//��̬����־��LogFactory
	private static final Log logger=LogFactory.getLog(UserController.class);
	
	//�Զ�ע��UserService
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	
	//���ص�¼ҳ��
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login(){
		System.out.println("���ص�¼ҳ��");
		return "login";
	}
	
	//�����¼����
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public ModelAndView login(
			String user_nickname,String user_password,
			ModelAndView mv,
			HttpSession session){
		//���ݵ�¼�û�������������û��������û���¼����
		User user=userService.login(user_nickname, user_password);
		if(user!=null){
			System.out.println(user.getUser_nickname()+" : ��¼�ɹ�");
			//��¼�ɹ�
			session.setAttribute("user", user);
			mv.setView(new RedirectView("/rucweibo/home"));
		}else{
			//��¼ʧ�ܣ����õ�¼ʧ����Ϣ������ת����¼ҳ��
			mv.addObject("message", "��¼���������������������");
			mv.setViewName("login");
		}
		return mv;
	}
	
	//ʵ���û�ע��
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public String logout(HttpSession session){
		session.invalidate();
		System.out.println("�û��Ѿ�ע���������µ�¼");
		return "login";
	}	
		
		
	//����ע��ҳ�棬����ΪGET
	@RequestMapping(value="/register",method=RequestMethod.GET)
	public String registerPage(){
		System.out.println("���ص�¼ҳ��");
		return "register";
	}
	
	//����ע������,����ΪPOST
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String register(
			//�������е�user_nickname������ֵ����user_nickname��������������ͬ������
			@RequestParam("user_nickname") String user_nickname,
			@RequestParam("user_password") String user_password,
			@RequestParam("user_gender") String user_gender,
			@RequestParam("user_email") String user_email,
			Model model
			){
		//����User����
		User user=new User();
		user.setUser_nickname(user_nickname);
		user.setUser_password(user_password);
		user.setUser_gender(user_gender);
		user.setUser_email(user_email);
		if(!userService.register(user)){
			//ע��ɹ�����ץ����¼ҳ��
			return "register";
		}
		return "login";
		
	}
	
	//������ҳ
	@RequestMapping(value="/home",method=RequestMethod.GET)
	public String home(){
		return "home";
	}
	
	//���ظ�������ҳ��
	@RequestMapping(value="/profile",method=RequestMethod.GET)
	public String profile(){
		return "profile";
	}
	//���¸�������ҳ��
	@RequestMapping(value="/profile",method=RequestMethod.POST)
	public void updateProfile(User user,
			HttpServletResponse response) throws IOException{
		System.out.println(user.getUser_realname());
		response.getWriter().write("�����ɹ���");
	}	
	
	//�����޸�����ҳ��
	@RequestMapping(value="/password",method=RequestMethod.GET)
	public String password(){
		return "password";
	}
	
	//�����޸�����
	@RequestMapping(value="/password",method=RequestMethod.POST)
	public void changePassword(@RequestParam("o_password") String o_password,
			@RequestParam("n_password") String  n_password,
			@RequestParam("c_password") String c_password,
			HttpServletResponse response,
			HttpSession session) throws IOException{
		
		User user=(User) session.getAttribute("user");
		System.out.println("o_password:"+o_password+"c_password:"+c_password+"n_password:"+n_password);
		//�ж������ԭ�����Ƿ���ȷ����ȷ���޸����룬���صĵ�¼ҳ��
		if(user.getUser_password().equals(o_password)){
			user.setUser_password(n_password);
			userService.changePassword(user);
			response.setContentType("text/html;charset=UTF-8");
			response.getWriter().println("�޸�����ɹ�,�����µ�¼");
		}else{
			response.setContentType("text/html;charset=UTF-8");
			response.getWriter().println("����ľ����벻��ȷ������д����");
		}
	}	
}
