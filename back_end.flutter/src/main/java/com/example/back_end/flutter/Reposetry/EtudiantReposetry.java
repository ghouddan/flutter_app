package com.example.back_end.flutter.Reposetry;

import org.springframework.data.jpa.repository.JpaRepository;



import org.springframework.stereotype.Repository;

import com.example.back_end.flutter.models.*;

@Repository
public interface EtudiantReposetry extends JpaRepository<etudiant, Double>{

}
