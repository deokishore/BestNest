package com.bestnest.service;

import java.util.List;

import javax.annotation.PostConstruct;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bestnest.dao.UserProfileDAO;
import com.bestnest.domain.UserProfile;

@Service
public class UserProfileService {

	private static final Logger logger = LoggerFactory
			.getLogger(UserProfileService.class);
	
	@Autowired
	UserProfileDAO userProfileDAO;

	List<UserProfile> userProfileList;

	@PostConstruct
	public void init() {
		userProfileList = userProfileDAO.getUserProfiles();
	}

	/**
	 * Returns list of user profile.
	 * 
	 * @return
	 */
	public List<UserProfile> getUserProfiles() {
		return userProfileList;
	}

}
