package com.bestnest.blogger.service.impl;

import com.bestnest.blogger.conversion.CategoryEntityToCategoryConverter;
import com.bestnest.blogger.exception.ServiceLayerException;
import com.bestnest.blogger.hibernate.dao.CategoryDao;
import com.bestnest.blogger.model.Category;
import com.bestnest.blogger.service.CategoryService;
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
