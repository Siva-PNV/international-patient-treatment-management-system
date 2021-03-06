package com.example.demo.exception;

import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.ServletRequestBindingException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import feign.FeignException;

@RestControllerAdvice
public class GlobalExceptionHandler {

	/**
	 * @ExceptionHandler annotation is used for handling exceptions in specific
	 *                   handler classes and/or handler methods
	 * 
	 *                   to handle InsurerDetailNotFoundException
	 */
	@ExceptionHandler(InvalidTokenException.class)
	public ResponseEntity<String> invalidTokenExceptionHandler(InvalidTokenException ex) {

		return new ResponseEntity<>(ex.getMessage(), HttpStatus.FORBIDDEN);

	}

	@ExceptionHandler(PatientNotFoundException.class)
	public ResponseEntity<String> insurerDetailNotFoundExceptionHandler(PatientNotFoundException ex) {

		return new ResponseEntity<>(ex.getMessage(), HttpStatus.NO_CONTENT);

	}

	@ExceptionHandler(ServletRequestBindingException.class)
	@ResponseStatus(HttpStatus.BAD_REQUEST)
	public ResponseEntity<Object> handleServletRequestBindingException(ServletRequestBindingException ex) {
		return new ResponseEntity<>(ex.getMessage(), HttpStatus.BAD_REQUEST);
	}

	@ExceptionHandler(FeignException.class)
	public ResponseEntity<Object> handleFeignStatusException(FeignException ex, HttpServletResponse response) {
		return new ResponseEntity<>("Token is not valid", HttpStatus.INTERNAL_SERVER_ERROR);
	}

}
