package two;

import java.util.Random;

public class ExceptionTest2 {

/*	예외처리하기
	try catch 문
	에러는 어쩔 수 없지만, 예외는 프로그래머가 이에 대한 처리를 미리 해주어야 한다
	
	@예외처리의 정의
	정의 - 프로그램 실행 시 발생할 수 있는 예외의 발생에 대비한 코드를 작성하는 것
	목적 - 프로그램의 비정상 종료를 막고, 정상적인 실행상태를 유지하는 것
	
	expression
	try {
		예외가 발생할 가능성이 있는 문장을 넣는다
		트랜잭션 단위들
	}catch(Exception1 e1) {
		exception1이 발생했을 경우, 이를 처리하기 위한 문장을 적는다
	}catch(Exception2 e2) {
		exception2이 발생했을 경우, 이를 처리하기 위한 문장을 적는다
	}catch(ExceptionN n) {
		exceptionN이 발생했을 경우, 이를 처리하기 위한 문장을 적는다
	}
	*/
	
	public static void main(String[] args) {
		int num = 100;
		int result = 0;
		
		Random rand = new Random();
		
		for (int i = 0; i < 10; i++) {
			result = num / rand.nextInt(10);
			System.out.println(i + "번쨰: " + result);
		}
	}
	
}
