package csc340_summer26.SSBU_Characters.characters;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CharacterRepository extends JpaRepository<Character, Long> {
    List<Character> findByNameContainingIgnoreCaseOrDescriptionContaningIgnoreCase(String nameKeyword, String descriptionKeyword);

    List<Character> findByUniverseContainingIgnoreCase(String universe);
}
