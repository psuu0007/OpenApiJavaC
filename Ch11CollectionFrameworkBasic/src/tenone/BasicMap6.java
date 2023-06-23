package tenone;

public class BasicMap6 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

//		Map 인터페이스와 HashMap Class의 차이?
//		Parent p = new Parent();
//		
//		p = new OtherParent(); // 오류
//		ParentInterface pppp = new ParentInterface();
		ParentInterface pi = new Child();
		
		pi.myName();
		
		ParentInterface pi2 = new Parent();
		
		pi2.myName();
		
		pi = new OtherParent();
		
		pi.myName();
		
	}

}
