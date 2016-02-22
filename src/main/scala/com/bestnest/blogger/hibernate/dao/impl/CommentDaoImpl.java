package com.bestnest.blogger.hibernate.dao.impl;

import com.bestnest.blogger.hibernate.dao.CommentDao;
import com.bestnest.blogger.hibernate.dto.CommentEntity;
import com.bestnest.blogger.util.Constants;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CommentDaoImpl implements CommentDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addComment(CommentEntity entity) {
		this.sessionFactory.getCurrentSession().save(entity);
	}

	@Override
	public void deleteComment(CommentEntity entity) {
		this.sessionFactory.getCurrentSession().delete(entity);
	}

	@Override
	public CommentEntity getCommentEntity(int commentId) {
		return (CommentEntity) this.sessionFactory.getCurrentSession().getNamedQuery(Constants.QUERY_GET_COMMENT_BY_ID).setInteger(CommentEntity.GET_COMMENT_PARAMETER, commentId).uniqueResult();
	}

	@Override
	public void updateComment(CommentEntity entity) {
		this.sessionFactory.getCurrentSession().merge(entity);
	}
}