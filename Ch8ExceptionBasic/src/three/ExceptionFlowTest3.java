package three;

public class ExceptionFlowTest3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

//		@try블럭 내에서 예외가 발생한 경우
//		1.발생한 예외와 일치하는 catch문이 있는지 확인한다
//		2.일치하는 catch문을 찾게 되면, 그 catch블럭 내의 문장들을 수행하고
//		전체 try-catch문을 빠져나가서 그 다음 문장을 계속해서 수행한다
//		만일 일치하는 catch문을 찾지 못하면, 예외는 처리되지 못한다
//		
//		@try문 내에서 예외가 발생하지 않는 경우
//		1.catch문을 거치지 않고 전체 try-catch문을 빠져나가서 수행을 계속한다
//		
//		@finally문장은 위의 어느 상황에서도 꼭 수행된다
//		1.try문 끝나고 수행
//		2.catch문 끝나고 수행
		
		System.out.println(1);
		System.out.println(2);
		
		try {
			
			System.out.println(3);
			System.out.println(0/0); //예외 발생
			System.out.println(4);
			
		} catch (ArithmeticException e) {
			System.out.println(5);
		}finally {
			System.out.println(6);
		}
		
		System.out.println(7);
		
		
	}

}
