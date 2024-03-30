package com.example.back_end.flutter.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.example.back_end.flutter.models.*;

import com.example.back_end.flutter.Reposetry.*;


@Service
public class userService {

	private userReposetry reposetry;
	
	@Autowired
	public userService(userReposetry reposetry)
	{
		this.reposetry = reposetry;
	}
	
	public user login(String email, String password) {
		return reposetry.findByEmailAndPassword(email, password);
	}
	
	public user add(String email, String passwrd, String type) {
		user user = new user(email, passwrd, type);
		return reposetry.save(user);
	}
	
	public List<user> getUser(){
		return reposetry.findAll();
	}
	
	
}
