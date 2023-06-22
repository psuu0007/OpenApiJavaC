package eight;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class BasicMap3 {

	public static void main(String[] args) {
		
		HashMap<String, String> dictionaryMap = new HashMap<String, String>();
		
		dictionaryMap.put("a", "apple");
		dictionaryMap.put("b", "banana");
		dictionaryMap.put("c", "core");
		dictionaryMap.put("d", "dynamic");
		
		Set set = dictionaryMap.keySet();
		
		Iterator<String> it = set.iterator();
		
		String dictionaryKeyStr = "";
		while(it.hasNext()) {
			
			dictionaryKeyStr = it.next();
			
			System.out.println("사전의 키값: " + dictionaryKeyStr);
		}
		
		
	}
	
}
