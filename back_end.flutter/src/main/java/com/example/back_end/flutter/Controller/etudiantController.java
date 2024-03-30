package com.example.back_end.flutter.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.back_end.flutter.models.etudiant;
import com.example.back_end.flutter.models.user;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/etudiant")
public class etudiantController {

	
	private com.example.back_end.flutter.Services.etudiantService service;
	
	@Autowired
	public etudiantController(com.example.back_end.flutter.Services.etudiantService service) {
		this.service = service;
	}
	
	@GetMapping("/all")
	public List<etudiant> getall(){
		return service.getall();
	}
	@GetMapping("/email/{email}")
    public ResponseEntity<com.example.back_end.flutter.models.etudiant> getEtudiantByEmail(@PathVariable String email) {
        Optional<com.example.back_end.flutter.models.etudiant> optionalEtudiant = service.getEtudaintByEmail(email);
        return optionalEtudiant
            .map(etudiant -> ResponseEntity.ok().body(etudiant))
            .orElseGet(() -> ResponseEntity.status(HttpStatus.NOT_FOUND).build());
    }			
}









