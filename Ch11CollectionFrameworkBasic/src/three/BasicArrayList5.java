package three;

import java.util.ArrayList;
import java.util.Iterator;

public class BasicArrayList5 {

	public static void main(String[] args) {
		
		ArrayList<Integer> list = new ArrayList<Integer>();
//		ArrayList<int> list = new ArrayList<int>();
//					제너릭						Generics
//		표현식
//		리스트.add(Object obj)
		
//		list.add("sdf");
		
		list.add(new Integer(1));
		list.add(new Integer(2));
		list.add(new Integer(3));
//		Integer			int
		Integer intNum = Integer.valueOf(4);
		list.add(intNum);
		
		int num = 5;
		list.add(num);
		
		Integer intNum2 = new Integer(6);
		list.add(intNum2);
				
		
		for (int i = 0; i < list.size(); i++) {
			System.out.print(list.get(i) + ", ");
		}
		System.out.println();
		
		//기존 위치의 데이터 변경
		list.set(0, 100);
		list.set(3, -44);
		
		for (int i = 0; i < list.size(); i++) {
			System.out.print(list.get(i) + ", ");
		}
	}
	
}
