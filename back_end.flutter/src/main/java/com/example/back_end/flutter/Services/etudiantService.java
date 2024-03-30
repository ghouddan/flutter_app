package com.example.back_end.flutter.Services;

import java.lang.StackWalker.Option;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.back_end.flutter.Reposetry.EtudiantReposetry;
import com.example.back_end.flutter.models.etudiant;

@Service
public class etudiantService {

	private EtudiantReposetry reposetry;
	@Autowired
	public etudiantService(EtudiantReposetry reposetry)
	{
		this.reposetry = reposetry;
	}
	
	public etudiantService() {}
	
	public List<etudiant> getall(){
		return reposetry.findAll();
	}
	
	public Optional<etudiant> getEtudaintByEmail(String email){
		return reposetry.findByEmail(email);
	}
}
