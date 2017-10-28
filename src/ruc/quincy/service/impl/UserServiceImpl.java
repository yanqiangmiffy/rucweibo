package ruc.quincy.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ruc.quincy.domain.User;
import ruc.quincy.mapper.UserMapper;
import ruc.quincy.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService{
	//自动注入Mapper
	@Autowired
	private UserMapper userMapper;
	
	//UserService接口login方法实现
	@Override
	public User login(String user_nickname,String user_password){
		return userMapper.finadUser(user_nickname, user_password);
	}

	//UserService接口register方法实现
	@Override
	public boolean register(User user) {
		return userMapper.addUser(user);
	}
	//更改密码
	@Override
	public void changePassword(User user) {
		userMapper.changePassword(user);
	}
	//更改用户信息
	@Override
	public void modifyUser(User user) {
		userMapper.modifyUser(user);
	}
}
