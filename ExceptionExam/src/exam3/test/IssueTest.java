package exam3.test;

import java.util.Scanner;

public class IssueTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Scanner sc = new Scanner(System.in);

		int inputNum = 0;
		
		do {

			System.out.println("음 일단 숫자만 입력해볼래?");
			
			try {
				inputNum = sc.nextInt();
			} catch (Exception e) {
				// TODO: handle exception
				sc.nextLine();
				
			}
			
			if(inputNum == -999) {
				System.out.println("치트키 활성");
				break;
			}
			
			if(inputNum < 100) {
				System.out.println("100보다 작으면 계속 입력해보자");
//				continue;
			}
			
		} while (true); // 무한반복문
		
		System.out.println("게임 종료");
	}

}
