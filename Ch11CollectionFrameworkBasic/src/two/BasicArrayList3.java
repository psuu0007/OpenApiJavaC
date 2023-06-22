package two;

import java.util.ArrayList;
import java.util.Iterator;

public class BasicArrayList3 {

	public static void main(String[] args) {
		
		ArrayList arrayList = new ArrayList();

		
		for (int i = 0; i < 5; i++) {
			arrayList.add(i);
		}
		
		System.out.println(arrayList);
		
		for (int i = arrayList.size() - 1; i >= 0; i--) {
			arrayList.remove(i);
		}
		
		
		if(arrayList.size() == 0) {
			System.out.println(arrayList);
			System.out.println("아하 리스트에 데이터가 없구나");
		}
		
		System.out.println(arrayList.isEmpty());
		
		
	}
	
}
