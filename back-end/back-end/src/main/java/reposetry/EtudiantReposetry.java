package reposetry;

import org.springframework.data.jpa.repository.JpaRepository;


import org.springframework.stereotype.Repository;

import model.etudiant;

@Repository
public interface EtudiantReposetry extends JpaRepository<etudiant, Double>{

}
