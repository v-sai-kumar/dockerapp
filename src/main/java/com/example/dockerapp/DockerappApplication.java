package com.example.dockerapp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.GetMapping;
@SpringBootApplication
@RestController
public class DockerappApplication {
//sssssssssss
	public static void main(String[] args) {
		SpringApplication.run(DockerappApplication.class, args);
	}

@GetMapping("/hello")
 public String firstApp(@RequestParam(value = "name", defaultValue = "Coder") String name) {
  return String.format("Congratulations  %s, you've built your first Spring Boot Application from Scratch!!", name);
 }

}
