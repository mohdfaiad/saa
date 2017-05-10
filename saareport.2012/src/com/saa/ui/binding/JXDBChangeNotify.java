package com.saa.ui.binding;
import java.util.HashMap;
public class JXDBChangeNotify implements JXDBChangedController {
    private HashMap changes = new java.util.HashMap();
    
    public boolean hasChanged(){
    	return (changes.size() > 0);
    }
    public JXDBChangeNotify(String entity){
    	
    }
	public void notifyChanged(String key, Object changed) {
		// TODO Auto-generated method stub
		changes.put(key, changed);

	}
	public void removeChanged(String key){
		changes.remove(key);
	}
	public HashMap getChanges(){
		return changes;
	}
	public void clearChanges(){
		changes.clear();
	}

}
