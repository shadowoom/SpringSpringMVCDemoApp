package com.luv2code.springdemo.mvc.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class PlatformConstraintValidator 
	implements ConstraintValidator<Platform, String>{
	
	private String[] platformPrefixs;
	
	@Override
	public void initialize(Platform thePlatform) {
		platformPrefixs = thePlatform.value();
	}
	
	 @Override
	 public boolean isValid(String thePlatform, ConstraintValidatorContext theConstraintValidatorContext) {
		 boolean result = false;
	     if (thePlatform != null) {
		     //
		     // loop thru platforms	            
		     //
		     // check to see if code matches any of the platforms
		     //	                   
		     for (String tempPlatformPrefix : platformPrefixs) {
		    	 result = thePlatform.startsWith(tempPlatformPrefix);
		    	// if we found a match then break out of the loop
	             if (result) {
	                 break;
	             }
		     }
	     }
	     else {
	    	 result = true;
	     }           
	     return result;       
	 }
}