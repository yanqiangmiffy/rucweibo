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
}
