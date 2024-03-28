package com.example.back_end.flutter.Services;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.example.back_end.flutter.models.*;

import com.example.back_end.flutter.Reposetry.*;


@Service
public class userService {

	private final userReposetry reposetry;
	
	@Autowired
	public userService(userReposetry reposetry) {
		this.reposetry = reposetry;
	}
	public user login(String email, String password) {
        return reposetry.findByEmailAndPassword(email, password);
    }
	
	
}
