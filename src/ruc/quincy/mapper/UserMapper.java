package ruc.quincy.mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import ruc.quincy.domain.User;

public interface UserMapper {
	//根据用户名和密码查询用户
	@Select("select * from weibo_user where user_nickname=#{user_nickname} and user_password=#{user_password}")
	User finadUser(@Param("user_nickname") String user_nickname,
			@Param("user_password") String user_password);
}
