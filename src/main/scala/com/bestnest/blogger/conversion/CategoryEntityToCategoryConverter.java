package com.bestnest.blogger.conversion;

import com.bestnest.blogger.hibernate.dto.CategoryEntity;
import com.bestnest.blogger.model.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class CategoryEntityToCategoryConverter implements Converter<Collection<CategoryEntity>, Collection<Category>> {

	@Autowired
	private PostEntityToPostConverter postEntityToPostConverter;

	public Category convert(CategoryEntity entity) {
		return convertToCategory(entity);
	}

	public List<Category> convert(Collection<CategoryEntity> entities) {
		List<Category> beans = new ArrayList<Category>();
		for (CategoryEntity entity : entities) {
			beans.add(convertToCategory(entity));
		}
		return beans;
	}

	private Category convertToCategory(CategoryEntity entity) {
		Category bean = new Category();
		bean.setCategoryName(entity.getCategoryName());
		bean.setId(entity.getId());
		bean.setPosts(this.postEntityToPostConverter.convert(entity.getPostEntities()));
		return bean;
	}

}
