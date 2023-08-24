package com.edu;

public class Mathmatic {

//	리턴타입이 일반적으로 단위 테스트가 된다
	public int sum(int a, int b) {
		int result = 0;
		
		result = a + b;
		
		return result;
	}
	
//	10메서드
//	단위 Unit = 메서드
	
	// 배열안에 들어있는 값들을 체크한다?
	public int[] checkNumArr(int[] numArr) {
		
		for (int i = 0; i < numArr.length; i++) {
			numArr[i] = numArr[i] * 5; 
		}
		
		int[] resultNumArr = numArr;
		
		return resultNumArr;
	}
	
}
