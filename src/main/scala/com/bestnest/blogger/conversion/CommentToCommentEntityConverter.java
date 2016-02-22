package com.bestnest.blogger.conversion;

import com.bestnest.blogger.hibernate.dto.CommentEntity;
import com.bestnest.blogger.hibernate.dto.PostEntity;
import com.bestnest.blogger.model.Comment;
import org.springframework.beans.BeanUtils;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

@Component
public class CommentToCommentEntityConverter implements Converter<Comment, CommentEntity> {

	@Override
	public CommentEntity convert(Comment comment) {
		CommentEntity entity = new CommentEntity();
		BeanUtils.copyProperties(comment, entity, "post");
		PostEntity postEntity = new PostEntity();
		postEntity.setId(comment.getPost().getId());
		entity.setPost(postEntity);
		return entity;
	}

}
