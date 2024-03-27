package reposetry;

import org.springframework.data.jpa.repository.JpaRepository;

import model.user;

public interface userReposetry extends JpaRepository<user, Double>{

	 user findByEmailAndPassword(String email, String password);
}
