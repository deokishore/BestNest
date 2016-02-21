package com.bestnest.blogger.hibernate.dao.impl;

import com.bestnest.blogger.hibernate.dao.CategoryDao;
import com.bestnest.blogger.hibernate.dto.CategoryEntity;
import com.bestnest.blogger.util.Constants;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CategoryDaoImpl implements CategoryDao {

	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<CategoryEntity> getAllCategories() {
		return this.sessionFactory.getCurrentSession().getNamedQuery(Constants.QUERY_GET_ALL_CATEGORIES).list();
	}

}
