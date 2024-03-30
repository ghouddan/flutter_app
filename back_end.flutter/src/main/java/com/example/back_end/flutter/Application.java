package com.example.back_end.flutter;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@ComponentScan({"com.example.back_end.flutter.models", "com.example.back_end.flutter.Services", "com.example.back_end.flutter.Controller"})
@EnableJpaRepositories(basePackages = "com.example.back_end.flutter.Repository.EtudiantReposetry") 

public class Application {

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }

}
