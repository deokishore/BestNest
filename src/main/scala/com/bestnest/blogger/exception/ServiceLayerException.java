package com.bestnest.blogger.exception;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ServiceLayerException extends Exception {

	private final Logger LOGGER = LoggerFactory.getLogger(ServiceLayerException.class);
	private static final long serialVersionUID = 1301568139123487960L;

	public ServiceLayerException() {
		super();
	}

	public ServiceLayerException(String message) {
		super(message);
	}

	public ServiceLayerException(String message, Throwable throwMe) {
		super(message, throwMe);
		LOGGER.error(message, throwMe);
	}
}
