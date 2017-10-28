package ruc.quincy.service;

import java.util.List;

import org.springframework.stereotype.Service;

import ruc.quincy.domain.Post;

@Service
public interface PostService {
	
	//发表微博
	boolean savePost(Post post);
	
	//加载所有的微博
	List<Post> selectAllPost();

}
