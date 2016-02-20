package com.bestnest.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import com.bestnest.domain.UserProfile;

@Service
public interface UserProfileRepository extends JpaRepository<UserProfile, Integer>{
	
	/**
     * Finds UserProfile by using userProfileId.
     * @param userProfileId
     * @return  UserProfile.
     */
	UserProfile findByUserProfileId(int userProfileId);
	
	
	/**
     * Finds UserProfile by using email.
     * @param userProfileId
     * @return  UserProfile.
     */
	UserProfile findUserProfileByEmail(String email);
	

}
