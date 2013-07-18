package pt.ulht.es.cookbook.domain;



import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;



public class Recipe extends Recipe_Base {

/*String title... serve para receber os argumentos*/
	public Recipe(String title, String problem, String solution, String author) {
		Version firstVersion = new Version(title, problem, solution, author);
		addVersion(firstVersion);
		/*vamos buscar a instancia para relacionar com o singleton e conseguir persistir a receita
		 * ou seja uma receita tem que ter obrigatoriamente uma ref para o cookboomanager
		 * */
		setCookbookManager(CookbookManager.getInstance());
	}
	
	public void update(String title, String problem, String solution, String author) {
		Version newVersion = new Version(title, problem, solution, author);
		addVersion(newVersion);
    }

	public void delete() {
		//percorre a lista para verificar se existe versions, se existir apaga
		for (Version version : getVersionSet()) {
			version.delete();
		}
		
		//retirar a ligação do cookbook com a BD
		setCookbookManager(null);
		//funcao do fenix para apagar objectos
		super.deleteDomainObject();
		
		
	}

	public Version getLastVersion() {
		List<Version> versions = new ArrayList<Version>(getVersionSet());
		Collections.sort(versions);

		return versions.get(0);
	}



}