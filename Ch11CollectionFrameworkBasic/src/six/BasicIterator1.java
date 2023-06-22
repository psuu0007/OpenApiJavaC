package six;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class BasicIterator1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

//		@Iterator?
//		컬렉션 프레임웍에서 컬렉션에 저장된 요소들을 읽어오는 방법을 표준화하였다
//		컬렉션에 저장된 각 요소에 접근하는 기능을 가진 Iterator 인터페이스를 정의하였다
//		
//		주로 while문에 사용해서 컬렉션 클래스의 요소들을 읽어 올 수 있다
		
//		boolean hasNext()	읽어 올 요소가 남아있는지 확인한다
//							있으면 true, 없으면 false
//		Object next()		다음 요소를 읽어온다
//		등이 있다
//		
//		단방향으로만 접근이 가능한 특징이 있다
//		중간에 멈출 수 없다
		
		List<String> strList = new ArrayList<String>();
		
		for (int i = 0; i < 5; i++) {
			strList.add(i + "");
		}
		
		Iterator<String> it = strList.iterator();
		
		String tempStr = "";
		while(it.hasNext() == true) {
			tempStr = it.next();
			
			System.out.println(tempStr);
		}
		
		
	}

}
