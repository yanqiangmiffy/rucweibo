package ruc.quincy.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import ruc.quincy.domain.User;

public interface UserMapper {
	//根据用户名和密码查询用户
	@Select("select * from weibo_user where user_nickname=#{user_nickname} and user_password=#{user_password}")
	User finadUser(@Param("user_nickname") String user_nickname,
			@Param("user_password") String user_password);
	
	//实现用户注册
	@Insert("insert into weibo_user(user_nickname,user_password,user_gender,user_email) values(#{user_nickname},"
			+ "#{user_password},#{user_gender},#{user_email})")
	@Options(useGeneratedKeys=true,keyProperty="user_id")
	boolean addUser(User user);
	
	//修改用户密码
	@Update("update weibo_user set user_password=#{user_password} WHERE user_id=#{user_id}")
	void changePassword(User user);
}
