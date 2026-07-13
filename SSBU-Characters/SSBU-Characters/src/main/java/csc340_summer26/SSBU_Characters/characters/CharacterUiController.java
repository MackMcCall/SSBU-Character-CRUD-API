package csc340_summer26.SSBU_Characters.characters;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class CharacterUiController {

    private final CharacterService characterService;

    public CharacterUiController(CharacterService characterService) {
        this.characterService = characterService;
    }

    @GetMapping("/about")
    public String about() {
        return "about";
    }

    @GetMapping("/chars/{id}")
    public String getCharacterById(@PathVariable long id, Model model) {
        Character character = characterService.getCharacterById(id);
        model.addAttribute("character", character);
        return "details";
    }

    @GetMapping()
    public String getAllCharacters(Model model) {
        // return ResponseEntity.ok(postService.getAllPosts());
        model.addAttribute("charactersList", characterService.getAllCharacters());
        model.addAttribute("pageTitle", "All Characters");
        return "index";// view name (post-list.ftlh)
    }

    @GetMapping("/new-character-form")
    public String createCharacterForm(Model model) {
        model.addAttribute("character", new Character());
        model.addAttribute("pageTitle", "Create New Character");
        return "new-character-form";
    }

    @PostMapping("/save")
    public String createCharacter(Character character) {
        Character createdCharacter = characterService.createCharacter(character);
        if (createdCharacter != null) {
            return "redirect:/posts/" + createdCharacter.getId();
        }
        return "redirect:/posts/new?error=true";
    }

    @GetMapping("/delete/{id}")
    public String deleteCharacter(@PathVariable Long id) {
        boolean isDeleted = characterService.deleteCharacter(id);
        if (isDeleted) {
            return "redirect:/chars";
        }
        return "redirect:/chars/" + id + "?error=true";
    }

    @PostMapping("/update/{id}")
    public String updateCharacter(@PathVariable Long id, Character updatedCharacter) {
        Character character = characterService.updateCharacter(id, updatedCharacter);
        if (character != null) {
            return "redirect:/chars/" + character.getId();
        }
        return "redirect:/chars/" + id + "?error=true";
    }

    @GetMapping("/search")
    public String searchCharacters(String query, Model model) {
        model.addAttribute("charactersList", characterService.searchCharacters(query));
        model.addAttribute("pageTitle", "Search Results for: " + query);
        return "index";
    }

}
