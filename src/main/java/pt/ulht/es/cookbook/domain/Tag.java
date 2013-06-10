package pt.ulht.es.cookbook.domain;

public class Tag extends Tag_Base {
    
    private Tag(String tag) {
    	setTag(tag);
		setCookbookManager(CookbookManager.getInstance());
    }
    
    
    public static Tag fromString(String tagString) {
    	for(Tag tag : CookbookManager.getInstance().getTagSet()) {
    		if(tag.getTag().equals(tagString)) {
    			return tag;
    		}
    	}
    	return new Tag(tagString);
    }
    
    public String toString(){
    	
    	return getTag();
    	
    }
 
    
    
}
