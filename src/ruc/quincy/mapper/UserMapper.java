package ruc.quincy.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
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
	
	//通过id查询用户
	@Select("SELECT * FROM USERS WHERE id=#{id}")
	@Results({
		@Result(id=true,column="id",property="id"),
		@Result(column="name",property="name"),
		@Result(column="sex",property="sex"),
		@Result(column="age",property="age")
	})
	User selectUserById(int id);
	
	//更新用户
	@Update("UPDATE weibo_user set user_realname=#{user_realname},user_gender=#{user_gender},user_phone=#{user_phone},"
			+ "user_info=#{user_info},user_email=#{user_email} WHERE user_id=#{user_id}")
	void modifyUser(User user);
}
