package com.bestnest.blogger.service.impl;

import com.bestnest.blogger.conversion.CommentEntityToCommentConverter;
import com.bestnest.blogger.conversion.CommentToCommentEntityConverter;
import com.bestnest.blogger.exception.ServiceLayerException;
import com.bestnest.blogger.hibernate.dao.CommentDao;
import com.bestnest.blogger.hibernate.dto.CommentEntity;
import com.bestnest.blogger.hibernate.dto.PostEntity;
import com.bestnest.blogger.model.Comment;
import com.bestnest.blogger.model.Post;
import com.bestnest.blogger.service.CommentService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;

@Transactional
@Service
public class CommentServiceImpl implements CommentService {

	private final Logger LOGGER = LoggerFactory.getLogger(CommentServiceImpl.class);

	@Autowired
	private CommentDao commentDao;

	@Autowired
	private CommentEntityToCommentConverter commentEntityToCommentConverter;

	@Autowired
	private CommentToCommentEntityConverter commentToCommentEntityConverter;

	@Override
	public Comment addComment(String who, String email, String commentText, Post post) throws ServiceLayerException {
		try {
			CommentEntity entity = new CommentEntity();
			entity.setCommentText(commentText);
			entity.setEmail(email);
			entity.setWho(who);
			entity.setCommentTime(new Date());
			PostEntity pEntity = new PostEntity();
			pEntity.setId(post.getId());
			entity.setPost(pEntity);
			this.commentDao.addComment(entity);
			return this.commentEntityToCommentConverter.convert(entity);
		} catch (Exception e) {
			throw new ServiceLayerException("Error throw adding comment.", e);
		}
	}

	@Override
	public void deleteComment(Comment comment, String email) throws ServiceLayerException {
		if (comment.getEmail().equals(email)) {
			try {
				CommentEntity entity = this.commentToCommentEntityConverter.convert(comment);
				this.commentDao.deleteComment(entity);
			} catch (Exception e) {
				throw new ServiceLayerException("Error deleting comment", e);
			}
		} else {
			throw new ServiceLayerException("Email entered '" + email + "' doesn't match '" + comment.getEmail() + "'");
		}
	}

	@Override
	public Comment getComment(int commentId) throws ServiceLayerException {
		try {
			return this.commentEntityToCommentConverter.convert(this.commentDao.getCommentEntity(commentId));
		} catch (Exception e) {
			throw new ServiceLayerException("Error throw getting comment", e);
		}
	}

	@Override
	public Comment doesEmailMatch(int commentId, String email) throws ServiceLayerException {
		try {
			Comment comment = this.getComment(commentId);
			if (comment.getEmail().equals(email)) {
				LOGGER.info("The email matches, can edit comment " + comment.getCommentId());
				return comment;
			} else {
				LOGGER.info("The comments email '{}' doesn't match the given '{}'", comment.getEmail(), email);
				return null;
			}
		} catch (Exception e) {
			throw new ServiceLayerException("Error verifing email matches", e);
		}
	}

	@Override
	public void updateComment(int commentId, String who, String email, String commentText) throws ServiceLayerException {
		try {
			Comment comment = this.getComment(commentId);
			comment.setWho(who);
			comment.setEmail(email);
			comment.setCommentText(commentText);
			comment.setCommentTime(new Date());
			this.commentDao.updateComment(this.commentToCommentEntityConverter.convert(comment));
			LOGGER.info("The comment {} was updated", comment.getCommentId());
		} catch (Exception e) {
			throw new ServiceLayerException("Couldn't update the comment", e);
		}
	}
}