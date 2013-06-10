package pt.ulht.es.cookbook.domain;



import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;



public class Recipe extends Recipe_Base {


	public Recipe(String title, String problem, String solution, String author) {
		Version firstVersion = new Version(title, problem, solution, author);
		addVersion(firstVersion);
		setCookbookManager(CookbookManager.getInstance());
	}
	
	public void update(String title, String problem, String solution, String author) {
		Version newVersion = new Version(title, problem, solution, author);
		addVersion(newVersion);
    }

	public void delete() {
		
		for (Version version : getVersionSet()) {
			version.delete();
		}
		
		setCookbookManager(null);
		super.deleteDomainObject();
		
		
	}

	public Version getLastVersion() {
		List<Version> versions = new ArrayList<Version>(getVersionSet());
		Collections.sort(versions);

		return versions.get(0);
	}



}