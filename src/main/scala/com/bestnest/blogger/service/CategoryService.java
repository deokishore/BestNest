package com.bestnest.blogger.service;

import com.grant.blogger.exception.ServiceLayerException;
import com.grant.blogger.model.Category;

import java.util.List;

public interface CategoryService {

	List<Category> getAllCategories() throws ServiceLayerException;

}
