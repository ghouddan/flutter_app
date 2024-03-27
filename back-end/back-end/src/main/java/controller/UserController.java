package controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import model.user;
import service.userService;

@RestController
public class UserController {

	private final userService service;
	
	@Autowired
	public UserController(userService service) {
		this.service = service;
	}

	
	@PostMapping("/login")
	public user login(@RequestBody user loginUser) {
        user user = service.login(loginUser.getEmail(), loginUser.getPasword());
        if (user != null && user.getPasword().equals(loginUser.getPasword())) {
            return user;
        } else {
            return null;
        }
    }
	
}
