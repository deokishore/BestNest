package com.bestnest.blogger.hibernate.dao.impl;

import com.bestnest.blogger.hibernate.dao.PostDao;
import com.bestnest.blogger.hibernate.dto.PostEntity;
import com.bestnest.blogger.util.Constants;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PostDaoImpl implements PostDao {

	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<PostEntity> getAllItemsSortedByMostRecent() {
		return this.sessionFactory.getCurrentSession().getNamedQuery(Constants.QUERY_GET_ALL_POST_SORT_BY_MOST_RECENT)
				.list();
	}

	@Override
	public PostEntity getPost(int id) {
		return (PostEntity) this.sessionFactory.getCurrentSession().getNamedQuery(Constants.QUERY_GET_POST_BY_ID)
				.setInteger(PostEntity.GET_POST_PARAMETER, id).uniqueResult();
	}

}
