package test.com.edu;

import static org.junit.Assert.assertArrayEquals;
import static org.junit.Assert.assertEquals;

import org.junit.Ignore;
import org.junit.Test;

import com.edu.Mathmatic;

public class MathmaticTest {

	@Ignore
	public void testSum() {
		
		Mathmatic m = new Mathmatic();
		
		int a = 10; 
		int b = 20;
		
		int result = m.sum(a, b); // 예상응답
		
		assertEquals(30, result);
		
		assertEquals(0, m.sum(100, -100));
		
	}

	@Test
	public void checkNumArr() {
		int[] numArr = new int[5];
		
		for (int i = 0; i < numArr.length; i++) {
			numArr[i] = i + 1;
		}
		
		Mathmatic m = new Mathmatic();
		
		int[] resultNumArr = m.checkNumArr(numArr);
		
		int[] expectedNumArr = new int[5];
		
		expectedNumArr[0] = 5;
		expectedNumArr[1] = 10;
		expectedNumArr[2] = 15;
		expectedNumArr[3] = 20;
		expectedNumArr[4] = 25;
		
		assertArrayEquals("대박이네", expectedNumArr, resultNumArr);
		
//		assertNotEquals(unexpected, actual);
//		assertNotNull(object);
	}
	
//	@Test
//	public void testSum() {
//		
//		Mathmatic m = new Mathmatic();
//		
//		int result = 0;
//		
//		int a = 10;
//		int b = 20;
//		
//		result = m.sum(a, b);
//		
//		assertEquals(30, result);
//		
//	}

}
