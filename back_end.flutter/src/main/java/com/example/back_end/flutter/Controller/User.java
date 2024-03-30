package com.example.back_end.flutter.Controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.example.back_end.flutter.Services.userService;
import com.example.back_end.flutter.models.user;

@RestController
@RequestMapping(value = "/user", method = { RequestMethod.GET, RequestMethod.POST})
public class User {

	private final userService service;
	
	@Autowired
	public User(userService service) {
		this.service = service;
	}
	
	@GetMapping("/get")
	public List<user> getEtudaint(){
		return service.getUser();
	}
	
	 @PostMapping("/login")
	 public ResponseEntity<Map<String, String>> login(@RequestBody user loginUser) {
		    String email = loginUser.getEmail();
		    String password = loginUser.getPasword();
		    
		    // Perform login authentication logic using both email and password
		    user user = service.login(email, password);
		    
		    if (user == null) {
		        return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(null);
		    } else {
		        Map<String, String> response = new HashMap<>();
		        response.put("type", user.getType());
		        return ResponseEntity.ok(response);
		    }
		}	
	
}
