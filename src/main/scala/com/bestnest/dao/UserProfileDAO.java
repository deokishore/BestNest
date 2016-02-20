package com.bestnest.dao;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bestnest.domain.UserProfile;
import com.bestnest.repository.UserProfileRepository;

@Repository
@Transactional(readOnly = true)
@Service
public class UserProfileDAO {
	
	@Resource
	UserProfileRepository userProfileRepository;
	
	public List<UserProfile> getUserProfiles() {
		return userProfileRepository.findAll();
	}
	
	
	
	

}
