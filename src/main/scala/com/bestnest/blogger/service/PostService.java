package com.bestnest.blogger.service;

import com.bestnest.blogger.exception.ServiceLayerException;
import com.bestnest.blogger.model.Post;

import java.util.List;

public interface PostService {

	List<Post> getAllPosts() throws ServiceLayerException;

	Post getPost(int id) throws ServiceLayerException;

}
