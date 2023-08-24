package com.edu;

public class PlayMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Mathmatic m = new Mathmatic();
		
		int result = 0;
		
		result = m.sum(10, 20);
		
		System.out.println(10 + " + " + 20 + " = " + result);
		
		int a = 10;
		int b = 20;
		
		result = m.sum(a, b);
		if(result == 30) {
			System.out.println("PASS");
		}else {
			System.out.println("FAIL");
		}
		
		a = 20;
		b = 30;
		
		result = m.sum(a, b);
		if(result == 50) {
			System.out.println("성공");
		}else {
			System.out.println("실패");
		}
		
	}

}
