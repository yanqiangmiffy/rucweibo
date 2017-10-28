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
	//�����û����������ѯ�û�
	@Select("select * from weibo_user where user_nickname=#{user_nickname} and user_password=#{user_password}")
	User finadUser(@Param("user_nickname") String user_nickname,
			@Param("user_password") String user_password);
	
	//ʵ���û�ע��
	@Insert("insert into weibo_user(user_nickname,user_password,user_gender,user_email) values(#{user_nickname},"
			+ "#{user_password},#{user_gender},#{user_email})")
	@Options(useGeneratedKeys=true,keyProperty="user_id")
	boolean addUser(User user);
	
	//�޸��û�����
	@Update("update weibo_user set user_password=#{user_password} WHERE user_id=#{user_id}")
	void changePassword(User user);
	
	//ͨ��id��ѯ�û�
	@Select("SELECT * FROM USERS WHERE id=#{id}")
	@Results({
		@Result(id=true,column="id",property="id"),
		@Result(column="name",property="name"),
		@Result(column="sex",property="sex"),
		@Result(column="age",property="age")
	})
	User selectUserById(int id);
	
	//�����û�
	@Update("UPDATE weibo_user set user_realname=#{user_realname},user_gender=#{user_gender},user_phone=#{user_phone},"
			+ "user_info=#{user_info},user_email=#{user_email} WHERE user_id=#{user_id}")
	void modifyUser(User user);
}
