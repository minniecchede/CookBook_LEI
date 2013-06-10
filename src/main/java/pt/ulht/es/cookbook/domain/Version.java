package pt.ulht.es.cookbook.domain;


import org.apache.commons.lang.StringUtils;
import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

public class Version extends Version_Base implements Comparable<Version>{
    
    public  Version(String titleVersion, String problemVersion, String solutionVersion, String authorVersion) {
    	setTitleVersion(titleVersion);
    	setProblemVersion(problemVersion);
		setSolutionVersion(solutionVersion);
		setAuthorVersion(authorVersion);
		DateTime dt = new DateTime();
		DateTimeFormatter fmt = DateTimeFormat.forPattern("HH:mm:ss, dd-MM-yyyy");
		setCreationTimestampVersion(fmt.print(dt)); 
    }
    
    public String getTagsAsString(){
    	return StringUtils.join(getTagSet(), ";");
    	
    }
    
    public void delete() {
		setRecipe(null);
		for(Tag tag : getTagSet()) {
			removeTag(tag);
		}
		super.deleteDomainObject();
		
	}

	public int compareTo(Version o1) {
		return -getCreationTimestampVersion().compareTo(o1.getCreationTimestampVersion());
	}

    
}
