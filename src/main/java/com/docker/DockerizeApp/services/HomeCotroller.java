package com.docker.DockerizeApp.services;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/services")
public class HomeCotroller {

	@GetMapping("/greet")
	public String greet() {
		return "Hello, Welcome to Dockerization services";
	}
}
