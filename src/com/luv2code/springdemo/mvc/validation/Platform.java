package com.luv2code.springdemo.mvc.validation;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

@Constraint(validatedBy = PlatformConstraintValidator.class)
@Target({ElementType.METHOD, ElementType.FIELD}) //where to apply this
@Retention(RetentionPolicy.RUNTIME)
public @interface Platform {
	
	//define default platform
	public String[] value() default {"TM"};
	
	//define default error message
	public String message() default "must start with TM";
		
	//define default groups
	//group related constraints
	public Class<?>[] groups() default {};
		
	//define default payloads
	//it provides custom details about validation failure(severity level, error code etc)
	public Class<? extends Payload>[] payload() default {};

}
