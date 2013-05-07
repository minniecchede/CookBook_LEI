package pt.ulht.es.cookbook.controller;

import java.util.Collection;
import java.util.Map;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import pt.ulht.es.cookbook.domain.CookbookManager;
import pt.ulht.es.cookbook.domain.Recipe;

@Controller
public class RecipeController {
  
    @RequestMapping(method=RequestMethod.GET, value="/recipes")
    public String listRecipes(Model model) {
    	Collection<Recipe> recipes = CookbookManager.getRecipes();
    	model.addAttribute("recipes", recipes);
    	return "listRecipes";
    }
    
    @RequestMapping(method=RequestMethod.GET, value="/recipes/create")
    public String showRecipeCreationForm(){
    	return "createRecipe";
    	
    }
    
    
    @RequestMapping(method=RequestMethod.POST, value="/recipes")
    public String createRecipe(@RequestParam Map<String, String> params){
    	String titulo = params.get("titulo");
    	String problema = params.get("problema");
    	String solucao = params.get("solucao");
    	Date dataCriacao = new Date();
    	Recipe recipe = new Recipe(titulo, problema, solucao, dataCriacao);
    	CookbookManager.saveRecipe(recipe);
    	
    	return "redirect:/recipes/"+recipe.getId();
    }
    
    
    @RequestMapping(method=RequestMethod.GET, value="/recipes/{id}")
    public String showRecipe(Model model, @PathVariable String id) {
    	Recipe recipe = CookbookManager.getRecipe(id);
    	if(recipe!=null){
    		model.addAttribute("recipe", recipe);
    		return "detailedRecipe";
    	}else{
    		return "recipeNotFound";
    	}
    }
        
    
    
}