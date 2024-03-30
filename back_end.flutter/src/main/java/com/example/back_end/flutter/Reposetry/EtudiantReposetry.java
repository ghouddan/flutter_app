package com.example.back_end.flutter.Reposetry;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;



import org.springframework.stereotype.Repository;

import com.example.back_end.flutter.models.*;

@Repository
public interface EtudiantReposetry extends JpaRepository<etudiant, Long>{

	Optional<etudiant> findByEmail(String email);
}
