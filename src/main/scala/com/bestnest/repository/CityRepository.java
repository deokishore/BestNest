package com.bestnest.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import com.bestnest.domain.City;

@Service
public interface CityRepository extends JpaRepository<City, String>{
	
	City findByCityId(String cityId);
	
}
