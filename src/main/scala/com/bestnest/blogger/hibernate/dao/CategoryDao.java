package com.bestnest.blogger.hibernate.dao;

import com.grant.blogger.hibernate.dto.CategoryEntity;

import java.util.List;

public interface CategoryDao {
	public List<CategoryEntity> getAllCategories();
}
