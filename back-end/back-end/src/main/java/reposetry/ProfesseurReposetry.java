package reposetry;

import org.springframework.data.jpa.repository.JpaRepository;

import model.professeur;
public interface ProfesseurReposetry extends JpaRepository<professeur, Double> {

}
