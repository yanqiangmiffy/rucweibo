package ruc.quincy.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import ruc.quincy.domain.User;

public interface UserMapper {
	//�����û����������ѯ�û�
	@Select("select * from weibo_user where user_nickname=#{user_nickname} and user_password=#{user_password}")
	User finadUser(@Param("user_nickname") String user_nickname,
			@Param("user_password") String user_password);
	
	//ʵ���û�ע��
	@Insert("insert into weibo_user(user_nickname,user_password,user_email) values(#{user_nickname},"
			+ "#{user_password},#{user_email})")
	@Options(useGeneratedKeys=true,keyProperty="user_id")
	boolean addUser(User user);
}
