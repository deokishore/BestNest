package com.bestnest.blogger.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bestnest.blogger.conversion.PostEntityToPostConverter;
import com.bestnest.blogger.exception.ServiceLayerException;
import com.bestnest.blogger.hibernate.dao.PostDao;
import com.bestnest.blogger.model.Post;
import com.bestnest.blogger.service.PostService;


@Transactional
@Service
public class PostServiceImpl implements PostService {

	@Autowired
	private PostDao postDao;

	@Autowired
	private PostEntityToPostConverter postEntityToPostConverter;

	@Override
	public List<Post> getAllPosts() throws ServiceLayerException {
		try {
			return this.postEntityToPostConverter.convert(this.postDao.getAllItemsSortedByMostRecent());
		} catch (Exception e) {
			throw new ServiceLayerException("Error getting posts", e);
		}
	}

	@Override
	public Post getPost(int id) throws ServiceLayerException {
		try {
			return this.postEntityToPostConverter.convert(this.postDao.getPost(id));
		} catch (Exception e) {
			throw new ServiceLayerException("Error getting post " + id, e);
		}
	}

}
