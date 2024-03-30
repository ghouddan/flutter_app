package com.example.back_end.flutter.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.example.back_end.flutter.Reposetry.userReposetry;
import com.example.back_end.flutter.models.user;

@Configuration
public class configuraton {

	@Bean
	CommandLineRunner commandLineRunner(userReposetry repo) {
		return args->
		{
			user u1 = new user("hdhdhd", "ghouddan", "e");
			user u2 = new user("ssssss", "ghouddan", "e");

		};
	}
}

