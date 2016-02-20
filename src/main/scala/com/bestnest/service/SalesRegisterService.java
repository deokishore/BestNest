package com.bestnest.service;

import java.lang.reflect.InvocationTargetException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.bestnest.dao.SalesRegisterDAO;
import com.bestnest.domain.SalesRegister;
import com.bestnest.portal.web.form.SalesRegisterForm;
import com.bestnest.util.BeanUtil;

public class SalesRegisterService {
	
	private static final Logger logger = LoggerFactory.getLogger(SalesRegisterService.class);
	
	@Autowired
	SalesRegisterDAO salesRegisterDAO;
	
	@Transactional
	public void saveSalesRegister(SalesRegisterForm salesRegisterForm) {
		
		SalesRegister salesRegister = new SalesRegister();
		try {
			BeanUtil.copySalesRegister(salesRegisterForm, salesRegister);
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		salesRegisterDAO.saveSalesRegister(salesRegister);
		
	}
	
}
