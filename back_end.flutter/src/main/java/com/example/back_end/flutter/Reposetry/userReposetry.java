package com.example.back_end.flutter.Reposetry;

import org.springframework.data.jpa.repository.JpaRepository;


import com.example.back_end.flutter.models.*;

public interface userReposetry extends JpaRepository<user, Double>{

	 user findByEmailAndPassword(String email, String password);
}
