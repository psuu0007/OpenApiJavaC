package two;

import java.util.ArrayList;

public class BasicArrayList2 {

	public static void main(String[] args) {
		
		ArrayList arrayList = new ArrayList();

		arrayList.add("winter is coming");
		arrayList.add(1);  //값 삽입
		arrayList.add(2);
		arrayList.add(3);
		arrayList.add(4);
		arrayList.add(5);
		arrayList.add("오 설마 이런것도 되나?");
		arrayList.add(1);
		arrayList.add(999);
		arrayList.add(123.123);
		arrayList.add("오 설마 이런것도 되나?");
				
		for (int i = 0; i < arrayList.size(); i++) {
			System.out.println("인덱스 위치 " + i + " - " + arrayList.get(i));
		}
		
		for (int i = 0; i < arrayList.size(); i++) {
	         System.out.println((int)arrayList.get(i) + 100);
	    }
		
//		remove(int index)
//		remove(Object obj)
		
//		System.out.println("=========== remove(0)=============");
//		arrayList.remove(0);
//		
//		for (int i = 0; i < arrayList.size(); i++) {
//			System.out.println("인덱스 위치 " + i + " - " + arrayList.get(i));
//		}
		
//		System.out.println("=========== remove(\"오 설마 이런것도 되나?\")=============");
//		arrayList.remove("오 설마 이런것도 되나?");
//		
//		for (int i = 0; i < arrayList.size(); i++) {
//			System.out.println("인덱스 위치 " + i + " - " + arrayList.get(i));
//		}
		
		
	}
	
}
