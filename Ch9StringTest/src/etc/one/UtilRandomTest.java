package etc.one;

import java.util.Random;

public class UtilRandomTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Random rand = new Random(10);
		
//		int num = rand.nextInt();
//		
//		System.out.println(num);
		int num = 0;
//								seed
		Random rand2 = new Random(1);
		Integer randNum = 0;
		
		for (int i = 0; i < 5; i++) {
			num = rand.nextInt();
			
			System.out.println("위: " + num);
			
			randNum = rand2.nextInt();
			
			System.out.println("아래: " + randNum);
		}
		
		num = rand.nextInt(2);
		
		System.out.println(num);
		
	}

}
