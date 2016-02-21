package com.bestnest.blogger.hibernate.dao;

import com.bestnest.blogger.hibernate.dto.CommentEntity;

public interface CommentDao {
	void addComment(CommentEntity entity);

	void deleteComment(CommentEntity entity);

	CommentEntity getCommentEntity(int commentId);

	void updateComment(CommentEntity entity);
}