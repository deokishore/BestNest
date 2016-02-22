package com.bestnest.blogger.util;

public class Constants {
	/**
	 * URI
	 */
	public static final String PATH_VARIABLE_POST_ID = "postId";
	public static final String PATH_VARIABLE_COMMENT_ID = "commentId";
	public static final String URI_HOME = "/bloggerHome";
	public static final String URI_POSTS = "/posts";
	public static final String URI_AJAX_ADD_COMMENT = "/ajax/comment/add";
	public static final String URI_AJAX_DELETE_COMMENT = "/ajax/comment/delete";
	public static final String URI_AJAX_CHECK_EMAIL = "/ajax/comment/checkEmail";
	public static final String URI_AJAX_UPDATE_COMMENT = "/ajax/comment/update";

	/**
	 * JSP/Tiles page
	 */
	public static final String PAGE_HOME = "bloggerHome";
	public static final String PAGE_POSTS = "commonPosts";

	/**
	 * JSP Beans
	 */
	public static final String BEAN_POSTS = "posts";

	/**
	 * Database tables
	 */
	public static final String TABLE_POSTS = "posts";
	public static final String TABLE_CATEGORIES = "categories";
	public static final String TABLE_COMMENTS = "comments";

	/**
	 * Named queries
	 */
	public static final String QUERY_GET_ALL_POST_SORT_BY_MOST_RECENT = "posts.getAllSortedByMostRecent";
	public static final String QUERY_GET_POST_BY_ID = "posts.getPostById";
	public static final String QUERY_GET_ALL_CATEGORIES = "categories.getAll";
	public static final String QUERY_GET_COMMENT_BY_ID = "comments.getById";

	/**
	 * Json Values
	 */
	public static final String ERROR = "ERROR";
	public static final String SUCCESS = "SUCESS";
	public static final String COMMENT_WHO = "who";
	public static final String COMMENT_TEXT = "commentText";
	public static final String COMMENT_EMAIL = "email";
	public static final String COMMENT_ID = "commentId";
	public static final String POST_ID = "postId";

	/**
	 * Misc
	 */
	public static final String DATE_FORMAT = "MMM d, yyyy h:ss a";

}
