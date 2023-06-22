package seven;

import java.util.HashMap;

public class BasicMap2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		HashMap<String, Integer> hashMap = new HashMap<String, Integer>();
		
		hashMap.put("국어", 70);
		hashMap.put("영어", 90);
		hashMap.put("수학", 60);
		hashMap.put("수학", 160);
		
		int scoreNum = 0;
		
		scoreNum = hashMap.get("영어");
		
		System.out.println(scoreNum); 
		
		
		scoreNum = hashMap.get("수학");
		System.out.println(scoreNum);
		
		System.out.println(hashMap.size());
		
	}

}
