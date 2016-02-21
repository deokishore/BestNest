package com.bestnest.blogger.service.impl;

import com.grant.blogger.conversion.CategoryEntityToCategoryConverter;
import com.grant.blogger.exception.ServiceLayerException;
import com.grant.blogger.hibernate.dao.CategoryDao;
import com.grant.blogger.model.Category;
import com.grant.blogger.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryDao categoryDao;

	@Autowired
	private CategoryEntityToCategoryConverter categoryEntityToCategoryConverter;

	@Override
	public List<Category> getAllCategories() throws ServiceLayerException {
		try {
			return this.categoryEntityToCategoryConverter.convert(this.categoryDao.getAllCategories());
		} catch (Exception e) {
			throw new ServiceLayerException("Error getting categories", e);
		}
	}
}
