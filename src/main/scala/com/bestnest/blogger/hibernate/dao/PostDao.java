package com.bestnest.blogger.hibernate.dao;

import com.bestnest.blogger.hibernate.dto.PostEntity;

import java.util.List;

public interface PostDao {
	List<PostEntity> getAllItemsSortedByMostRecent();

	PostEntity getPost(int id);
}
