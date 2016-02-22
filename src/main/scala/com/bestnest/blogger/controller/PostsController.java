package com.bestnest.blogger.controller;

import com.bestnest.blogger.exception.ServiceLayerException;
import com.bestnest.blogger.service.CategoryService;
import com.bestnest.blogger.service.PostService;
import com.bestnest.blogger.util.Constants;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Locale;

/**
 * Handles requests for the application home page.
 */
@Controller
public class PostsController {

	private static final Logger LOGGER = LoggerFactory.getLogger(PostsController.class);

	@Autowired
	private PostService postService;

	@Autowired
	private CategoryService categoryService;

	@RequestMapping(value = Constants.URI_POSTS, method = RequestMethod.GET)
	public String posts(Locale locale, Model model) {
		try {
			LOGGER.info("Loading posts for posts page...");
			model.addAttribute(Constants.BEAN_POSTS, this.postService.getAllPosts());
			return Constants.PAGE_POSTS;
		} catch (ServiceLayerException e) {
			return "error"; // TODO return error msg
		}
	}

}
