package five;

public class TempTestClass {

	void method1() throws NullPointerException{
		System.out.println("method1() 호출");
		
		System.out.println("음 수학적인 오류가 발생할 가능성이 있는");
		System.out.println("메서드 구만?");
		
//		throw new NullPointerException();
		
	}
	
	
//	int method2() throws Exception{
//		System.out.println("method2() 호출");
//		
//		System.out.println("음 다양한 예외가 발생할 가능성이 있는");
//		System.out.println("메서드 구만?");
//		
//		return 100;
//		
//	}
	
	int method2() throws Exception{
		System.out.println("method2() 호출");
		
		System.out.println("음 다양한 예외가 발생할 가능성이 있는");
		System.out.println("메서드 구만?");
		
		return 100;
		
	}
	
}
