package com.bestnest.blogger.service;

import com.bestnest.blogger.exception.ServiceLayerException;
import com.bestnest.blogger.model.Category;

import java.util.List;

public interface CategoryService {

	List<Category> getAllCategories() throws ServiceLayerException;

}
