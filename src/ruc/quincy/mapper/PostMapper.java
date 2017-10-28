package ruc.quincy.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;

import ruc.quincy.domain.Post;
import ruc.quincy.domain.User;

public interface PostMapper {
	
	//����΢��
	@Insert("insert into weibo_post(post_ownerid,post_content,post_datetime,post_ownername,"
			+ "post_ownerimage) VALUES(#{post_ownerid},#{post_content},#{post_datetime},"
			+ "post_ownername,post_ownerimage)")
	@Options(useGeneratedKeys=true,keyProperty="post_id")
	boolean savePost(Post post);
	
	//��ѯ���е�΢��
	@Select("select * from weibo_post")
	List<Post> selectAllPost();
}
