package five;

import java.util.ArrayList;

public class TvTest {
	
	public static void main(String[] args) {
		
//		지네릭스(Generics)
//		란? 다양한 타입의 객체들을 다루는 메서드나 컬렉션 클래스에 
//		컴파일 시의 타입 체크를 해주는 기능이다
//		객체의 타입을 컴파일 시에 체크하기 때문에 객체의 타입 안정성을 높이고 형변환의 
//		번거로움이 줄어든다
//		타입 안정성을 높인다는 것은 의도하지 않은 타입의 객체가 저장되는 것을 막고,
//		저장된 객체를 꺼내올 때 원래의 타입과 다른 타입으로 잘못 형변환되어 발생할 수 있는 
//		오류를 줄여준다는 뜻이다
//		
//		제너릭의 장점
//		엄청 많지만
//		타입 체크와 형변환을 생략할 수 있으므로 코드가 간결해진다 -> 가독성
		
		ArrayList<Tv> tvList = new ArrayList<Tv>();
//		ArrayList tvList = new ArrayList();
		
		Tv tv = null;
		int tvTotalCount = 100;
		
//		for (int i = 0; i < tvTotalCount; i++) {
//			tv = new Tv("이젠Tv", 3, 7, false);
//			tvList.add(tv);
//		}
		
		tv = new Tv("이젠Tv", 3, 7, false);
		tvList.add(tv);
		
//		tvList.get(index)
		
//		Tv tv2 = (Tv)tvList.get(0);
		Tv tv2 = (Tv)tvList.get(0);
		
		tv2.tvInfo();
		
//		for (int i = 0; i < tvTotalCount; i++) {
//			tv = new Tv("이젠Tv", 3, 7, false);
//			tvList.add(tv);
//		}
//		
//		System.out.println(tvList.size());
//		
//		for (int i = 0; i < tvList.size(); i++) {
//			tv = tvList.get(i);
//			
//			tv.volumeUp();
//			
//			tv.tvInfo();
//		}
		
//		arrayList를 위한 전용 반복문?
				
//		for(Tv tvObj : (Tv)tvList) {
//			tv.tvInfo();
//		}
		
		for(Tv tvObj : tvList) {
			tvObj.tvInfo();
		}
		
	}
	
	
}
