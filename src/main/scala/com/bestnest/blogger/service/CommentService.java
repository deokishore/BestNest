package com.bestnest.blogger.service;

import com.bestnest.blogger.exception.ServiceLayerException;
import com.bestnest.blogger.model.Comment;
import com.bestnest.blogger.model.Post;

public interface CommentService {
	Comment addComment(String who, String email, String commentText, Post post) throws ServiceLayerException;

	void deleteComment(Comment comment, String email) throws ServiceLayerException;

	Comment getComment(int commentId) throws ServiceLayerException;

	Comment doesEmailMatch(int commentId, String email) throws ServiceLayerException;

	void updateComment(int commentId, String who, String email, String commentText) throws ServiceLayerException;
}