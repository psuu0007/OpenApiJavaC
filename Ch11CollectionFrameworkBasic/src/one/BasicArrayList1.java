package one;

import java.util.ArrayList;

public class BasicArrayList1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

//		@List인터페이스
//		중복을 허용하면서 저장순서가 유지되는 컬렉션을 구현하는데 사용된다
//		
//		이 추상적 개념을 실제 사용할 수 있게 구현된 클래스 중에 하나가
//		ArrayList 클래스이다
		
		ArrayList arrayList = new ArrayList(10);
//		1, 2, 3, 4, 5, 5, 1 
		arrayList.add(1);  //값 삽입
		arrayList.add(2);
		arrayList.add(3);
		arrayList.add(4);
		arrayList.add(5);
		arrayList.add(5);
		arrayList.add(1);
		arrayList.add(999);
		
		
		for (int i = 0; i < arrayList.size(); i++) {
	         System.out.println((int)arrayList.get(i) + 100);
	    }
		
//		for (int i = 0; i < 13; i++) {
//			System.out.print(arrayList.get(i) + ", ");
//		}
		
		int num = 0; 
		
//		num = (int) arrayList.get(0);
//		System.out.println(num);
//		
//		num = (int) arrayList.get(4);
//		System.out.println(num);
		
//		***어레이리스트는 배열의 크기가 가변한다***
		for (int i = 0; i < 7; i++) {
			System.out.println(arrayList.get(i));
		}
		
		System.out.println("=========================");
		
		for (int i = 0; i < arrayList.size(); i++) {
			System.out.println(arrayList.get(i));
		}
		
	}

}
