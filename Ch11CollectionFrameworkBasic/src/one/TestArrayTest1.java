package one;

public class TestArrayTest1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

//	      10개의 정수값을 가질 수 있는 배열을 만든다
//	       1~12의 값을 배열에 입력하고 출력하시오

		int[] numberArray = new int[10];

		for (int i = 0; i < 12; i++) {
			numberArray[i] = i + 1;
		}

		for (int i = 0; i < 12; i++) {
			System.out.println(i + "번째 배열값: " + numberArray[i]);
		}
	}

}