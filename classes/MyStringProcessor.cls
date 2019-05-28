public class MyStringProcessor implements StringProcessor {
    
    public String prefix;
    public String postfix;
    
    public MyStringProcessor() {
        this.prefix = 'prefix > ';
        this.postfix = ' > postfix';
    }
    
    public MyStringProcessor(String prefix, String postfix) {
        this.prefix = prefix;
        this.postfix = postfix;
    }
    
    public String addPrefix (String str) {
        //System.debug(this.prefix + str);
    	return this.prefix + str;  
    }
    
    public String addPostfix (String str) {
        //System.debug(str + this.postfix);
        return str + this.postfix;
    }
    
    public String removeWhitespaces (String str) {
        if (str.containsWhitespace()) {
            String strWithoutSpaces = str.deleteWhitespace();
            System.debug(strWithoutSpaces);
            return strWithoutSpaces;
        }
        else 
            System.debug(str);
        	return str;
    }
    
    public void updateList (List<String> listWithValues, List<String> emptyList) {
        String newValue;
        for (Integer i=0; i < listWithValues.size(); i++) {
    		newValue = addPrefix(listWithValues[i]);
    		emptyList.add(newValue);
    		System.debug(emptyList[i]);
		}
    }
}