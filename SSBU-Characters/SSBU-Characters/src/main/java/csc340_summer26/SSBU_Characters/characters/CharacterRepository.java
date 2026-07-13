package csc340_summer26.SSBU_Characters.characters;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CharacterRepository extends JpaRepository<Character, Long> {
    List<Character> findByNameContainingIgnoreCaseOrDescriptionContainingIgnoreCaseOrUniverseContainingIgnoreCase(
            String nameKeyword, String descriptionKeyword, String universeKeyword);

    List<Character> findByUniverseContainingIgnoreCase(String universe);
}
