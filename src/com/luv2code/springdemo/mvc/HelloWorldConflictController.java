package com.luv2code.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/helloconflict")
public class HelloWorldConflictController {
	
	@RequestMapping("/showForm")
	public String displayTheForm() {
		return "helloworld-form";
	}
}
