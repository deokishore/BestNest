package com.bestnest.blogger.conversion;

import com.bestnest.blogger.hibernate.dto.CommentEntity;
import com.bestnest.blogger.model.Comment;
import com.bestnest.blogger.model.Post;
import org.springframework.beans.BeanUtils;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@Component
public class CommentEntityToCommentConverter implements Converter<Collection<CommentEntity>, Collection<Comment>> {

	@Override
	public List<Comment> convert(Collection<CommentEntity> entities) {
		List<Comment> beans = new ArrayList<Comment>();
		for (CommentEntity entity : entities) {
			beans.add(convert(entity));
		}
		return beans;
	}

	//public List<Comment> convert(Collection<CommentEntity> entities, Post post) {
	//	List<Comment> beans = new ArrayList<Comment>();
	//	for (CommentEntity entity : entities) {
	//		beans.add(convert(entity, post));
	//	}
	//	return beans;
	//}

	public Comment convert(CommentEntity entity) {
		Comment bean = new Comment();
		BeanUtils.copyProperties(entity, bean, "post");
		Post postBean = new Post();
		BeanUtils.copyProperties(entity.getPost(), postBean, "comments");
		bean.setPost(postBean);
		return bean;
	}

}
