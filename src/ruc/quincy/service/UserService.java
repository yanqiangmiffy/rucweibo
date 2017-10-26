package ruc.quincy.service;

import org.springframework.stereotype.Service;

import ruc.quincy.domain.User;
@Service
public interface UserService {
	
	//ÅÐ¶ÏÓÃ»§µÇÂ¼
	User login(String user_nickname,String user_password);
}
