package ruc.quincy.service;

import org.springframework.stereotype.Service;

import ruc.quincy.domain.Post;

@Service
public interface PostService {
	
	//ÓÃ»§×¢²á
	boolean savePost(Post post);
}
