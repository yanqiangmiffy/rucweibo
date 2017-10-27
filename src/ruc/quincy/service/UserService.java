package ruc.quincy.service;

import org.springframework.stereotype.Service;

import ruc.quincy.domain.User;
@Service
public interface UserService {
	
	//�ж��û���¼
	User login(String user_nickname,String user_password);
	
	//�û�ע��
	boolean register(User user);
	
	//�޸�����
	void changePassword(User user);
}
