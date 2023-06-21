package five;

public class ExceptionDeclareBasic1 {

	public static void main(String[] args) {
		
//		메서드에 예외 선언하기
//		
//		키워드
//		throws
//		표현식
//		void method() throws 예외클래스1, 예외클래스2 ,,, N{
//			메서드 내용
//		}
//		
//		선언부에 예외를 선언함으로써 메서드를 사용하려는 사람이 메서드의 선언부를 보았을 때,
//		이 메서드를 사용하기 위해서는 어떠한 예외들이 처리되어져야 하는지를 쉽게 알 수 있다
		
		TempTestClass ttc = new TempTestClass();
		
		
//		ttc.method1();
		
//		ttc.method2();
		
		try {
			int resultNum = ttc.method2();
			System.out.println(resultNum);	
		} catch (Exception e) {
			// TODO: handle exception
		}
		
//		멀티 예외 처리?
				
		try {
			
		} catch (ArithmeticException | NullPointerException 
				| IndexOutOfBoundsException e) {
			System.out.println("3가지 중 하나라도 걸리면 처리한다");
//			잘은 몰라도 진짜 안쓴다
		}		
				
		
		
	}

}
