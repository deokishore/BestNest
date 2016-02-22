package com.bestnest.blogger.hibernate.dao;

import com.bestnest.blogger.hibernate.dto.CategoryEntity;

import java.util.List;

public interface CategoryDao {
	public List<CategoryEntity> getAllCategories();
}
