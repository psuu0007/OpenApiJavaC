package three;

public class ExceptionFlowTest5 {

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
			System.out.println(0 / 0); // 예외 발생
			str.charAt(1);
			strArr[4] = "123";
			System.out.println(4);

		} catch (ArithmeticException e) {
			System.out.println(5);
			System.out.println("수학적문제");

		} catch (Exception e) {
			System.out.println(5);
			System.out.println("문제가 있나보네 조심히 다뤄");
		} finally {
			System.out.println(6);
		}

		System.out.println(7);
//		NullPointerException
//		ArrayIndexOutOfBoundsException

	}

}
