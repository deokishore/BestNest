package com.bestnest.blogger.conversion;

import com.bestnest.blogger.hibernate.dto.PostEntity;
import com.bestnest.blogger.model.Category;
import com.bestnest.blogger.model.Comment;
import com.bestnest.blogger.model.Post;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@Component
public class PostEntityToPostConverter implements Converter<Collection<PostEntity>, Collection<Post>> {

	@Autowired
	private CommentEntityToCommentConverter commentEntityToCommentConverter;

	public Post convert(PostEntity entity) {
		return copyFields(entity);
	}

	private Post copyFields(PostEntity entity) {
		Post bean = new Post();
		BeanUtils.copyProperties(entity, bean, "comments", "category");

		Category categoryBean = new Category();
		BeanUtils.copyProperties(entity.getCategory(), categoryBean);
		bean.setCategory(categoryBean);

		List<Comment> comments = this.commentEntityToCommentConverter.convert(entity.getComments());
		if (comments.size() > 0) {
			for (Comment comment : comments) {
				comment.setPost(bean);
			}
			bean.setComments(comments);
		} else {
			bean.setComments(null);
		}
		return bean;
	}

	@Override
	public List<Post> convert(Collection<PostEntity> postEntities) {
		List<Post> output = new ArrayList<Post>();
		for (PostEntity entity : postEntities) {
			output.add(copyFields(entity));
		}
		return output;
	}
}
