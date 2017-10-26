package ruc.quincy.controller;

import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import ruc.quincy.domain.User;
import ruc.quincy.service.UserService;


@Controller
public class UserController {
	//��̬��־��
	Log logger=LogFactory.getLog(UserController.class);
	
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
}
