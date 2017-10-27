package ruc.quincy.service;

import org.springframework.stereotype.Service;

import ruc.quincy.domain.User;
@Service
public interface UserService {
	
	//判断用户登录
	User login(String user_nickname,String user_password);
	
	//用户注册
	boolean register(User user);
	
	//修改密码
	void changePassword(User user);
}
