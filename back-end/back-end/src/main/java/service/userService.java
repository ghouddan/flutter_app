package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import model.user;
import reposetry.userReposetry;

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
