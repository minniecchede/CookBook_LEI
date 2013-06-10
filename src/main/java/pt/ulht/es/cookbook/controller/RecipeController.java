package pt.ulht.es.cookbook.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import pt.ist.fenixframework.pstm.AbstractDomainObject;
import pt.ulht.es.cookbook.domain.CookbookManager;
import pt.ulht.es.cookbook.domain.Recipe;
import pt.ulht.es.cookbook.domain.Tag;
import pt.ulht.es.cookbook.domain.Version;

@Controller
public class RecipeController {

	
	@RequestMapping(method = RequestMethod.GET, value = "/recipes")
	public String listRecipes(Model model) {
		Set<Recipe> recipes = CookbookManager.getInstance().getRecipeSet();
		List<Version> lastVersionsList = new ArrayList<Version>();
		
		for(Recipe recipe : recipes)
		{
			Version version = recipe.getLastVersion();
			lastVersionsList.add(version);
		}
		
		
		model.addAttribute("recipes", lastVersionsList);
		return "listRecipes";
	}

	@RequestMapping(method = RequestMethod.GET, value = "/recipes/create")
	public String showRecipeCreationForm() {
		return "createRecipe";

	}

	@RequestMapping(method = RequestMethod.GET, value = "/recipes/{id}/delete")
	public String deleteRecipe(@PathVariable("id") String id) {
		//Recipe recipe = AbstractDomainObject.fromExternalId(id);
		//recipe.delete();
		 Version version = AbstractDomainObject.fromExternalId(id);
         Recipe recipe = version.getRecipe();
         recipe.delete();
		return "redirect:/recipes";
	}

	@RequestMapping(method = RequestMethod.GET, value = "/recipes/{id}/edit")
	public String editRecipe(Model model, @PathVariable String id) {

		Version version = AbstractDomainObject.fromExternalId(id);
		model.addAttribute("recipe", version);


		return "editRecipe";
	}

	@RequestMapping(method = RequestMethod.POST, value = "/edit/{id}")
	public String editRecipe(@RequestParam Map<String, String> params, @PathVariable String id) {
		Version version = AbstractDomainObject.fromExternalId(id);
		String titleVersion = version.getTitleVersion();
		String problemVersion = params.get("problemVersion");
		String solutionVersion = params.get("solutionVersion");
		String authorVersion = params.get("authorVersion");
		String tagVersion[] = params.get("tagVersion").split(";");
		Recipe recipe = version.getRecipe();
		recipe.update(titleVersion, problemVersion, solutionVersion, authorVersion);
		
		Version lastVersion = recipe.getLastVersion();
		for (String tag : tagVersion) {
			lastVersion.addTag(Tag.fromString(tag));
		}
		
		return "redirect:/recipes";
		
	}

	@RequestMapping(method = RequestMethod.POST, value = "/recipes")
	public String createRecipe(@RequestParam Map<String, String> params) {
		String title = params.get("title");
		String problem = params.get("problem");
		String solution = params.get("solution");
		String author = params.get("author");
		String tags[] = params.get("tag").split(";");
		Recipe recipe = new Recipe(title, problem, solution, author);		
		Version lastVersion = recipe.getLastVersion();
		for (String tag : tags) {
			lastVersion.addTag(Tag.fromString(tag));
		}
		return "redirect:/recipes";
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/recipes/{id}")
	public String showRecipe(Model model, @PathVariable String id, String versao) {
		//Recipe recipe = AbstractDomainObject.fromExternalId(id);
		Version version = AbstractDomainObject.fromExternalId(id);
		Recipe recipe = version.getRecipe();
		List<Version> versionList = new ArrayList<Version>(recipe.getVersionSet());
		int versionCount = recipe.getVersionCount();
		model.addAttribute("versionCount", versionCount);
		model.addAttribute("versionList", versionList);
		model.addAttribute("version", version);
		if(version != null){
			return "detailedRecipe";
		} else {
			return "recipeNotFound";
		}
	}

	
	@RequestMapping(method = RequestMethod.GET, value = "/versions/{id}")
	public String showVersion(Model model, @PathVariable String id, String versao) {
		
		Version version = AbstractDomainObject.fromExternalId(id);
		Recipe recipe = version.getRecipe();
		List<Version> versionList = new ArrayList<Version>(recipe.getVersionSet());
		int versionCount = recipe.getVersionCount();
		model.addAttribute("versionCount", versionCount);
		model.addAttribute("versionList", versionList);
		model.addAttribute("version", version);
		
		return "detailedVersion";
	}

}
