package three;

public class TypeChangeBasic {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

//		기본형과 문자열간의 변환방법
		
		int iVar = 100;
		String strVar = "";
		
		strVar = String.valueOf(iVar);
		
		System.out.println(strVar + 1000);
		
		String strVar2 = "2000";
		int iVar2 = 0;
		
		iVar2 = Integer.parseInt(strVar2);
		
		System.out.println(iVar2 + 1000);
		
		Double doubleVar = 10.12345;
		String doubleStr = String.valueOf(doubleVar);
		
		System.out.println(doubleStr + "100");
		
//		Double.parseDouble("야 대박이다 0.1212 이게 파서의 힘인가?")
//		System.out.println(Double.parseDouble("야 대박이다 0.1212 이게 파서의 힘인가?") + 100);
		
		System.out.println(Double.parseDouble("0.1212") + 100);		
	}

}
