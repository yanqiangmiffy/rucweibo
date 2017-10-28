package ruc.quincy.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ruc.quincy.domain.Post;
import ruc.quincy.mapper.PostMapper;
import ruc.quincy.service.PostService;

@Service("postService")
public class PostServiceImpl implements PostService{

	//自动注入Mapper
	@Autowired
	private PostMapper postMapper;
	
	//发表微博
	@Override
	public boolean savePost(Post post) {
		// TODO Auto-generated method stub
		return postMapper.savePost(post);
	}

}
