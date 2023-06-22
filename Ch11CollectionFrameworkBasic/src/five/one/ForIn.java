package five.one;

public class ForIn {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

//		확장된 for문
//		for in 구조 or 문
//		for each
//		표현식
//		for(배열에 들어있는 타입 변수명 : 배열과 같은 리스트구조 변수) {
//			내용들
//		}
		
		int[] numArr = new int[10];
		
		for (int i = 0; i < numArr.length; i++) {
			numArr[i] = i;
		}
		
		for(int num : numArr) {
			System.out.println(num);
		}
		
		
	}

}
