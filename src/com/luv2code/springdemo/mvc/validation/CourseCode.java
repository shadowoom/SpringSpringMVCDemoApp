package com.luv2code.springdemo.mvc.validation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

@Constraint(validatedBy = CourseCodeConstraintValidator.class)
@Target({ElementType.METHOD, ElementType.FIELD}) //where to apply this
@Retention(RetentionPolicy.RUNTIME)
public @interface CourseCode {
	
	//define default course code
	public String value() default "LUV";
	
	//define default error message
	public String message() default "must start with LUV";
	
	//define default groups
	//group related constraints
	public Class<?>[] groups() default {};
	
	//define default payloads
	//it provides custom details about validation failure(severity level, error code etc)
	public Class<? extends Payload>[] payload() default {};
}
