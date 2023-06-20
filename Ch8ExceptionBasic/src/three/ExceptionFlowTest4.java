package three;

public class ExceptionFlowTest4 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		String str = null;
		
		int num = 0;
		
		String[] strArr = new String[3];
		
//		strArr[5] = "123";
//		str.charAt(1);
		
		System.out.println(1);
		System.out.println(2);
		
		try {
			
			System.out.println(3);
//			System.out.println(0/0); //예외 발생
//			str.charAt(1);
			strArr[4] = "123";
			System.out.println(4);
			
		} catch (NullPointerException e) {
			System.out.println(5);
			System.out.println("null 조작 문제");
		} catch (ArithmeticException e) {
			System.out.println(5);
			System.out.println("수학적 문제");
		}catch (ArrayIndexOutOfBoundsException e) {
			System.out.println(5);
			System.out.println("배열 잘못된 접근 문제");
		}finally {
			System.out.println(6);
		}
		
		System.out.println(7);
//		NullPointerException
//		ArrayIndexOutOfBoundsException
	}

}
