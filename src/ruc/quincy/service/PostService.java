package ruc.quincy.service;

import java.util.List;

import org.springframework.stereotype.Service;

import ruc.quincy.domain.Post;

@Service
public interface PostService {
	
	//����΢��
	boolean savePost(Post post);
	
	//�������е�΢��
	List<Post> selectAllPost();

}
