package two;

public class StringEx9 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// 절대 원본 데이터를 변경하지 않는다
		String originStr = "He is a good basketball player. "
			+ "He can run as fast as me.";  //기준
//		as갯수
		int strCount = 0; // 결과
		
		
//		문자열 안에 as가 몇 개 존재하는지 출력하시오
		
		String findStr = "as";
		int strIndex = -1;
		
		while(true) {								// 찾을 위치
			strIndex = originStr.indexOf(findStr, strIndex+1);
			
			if(strIndex == -1) {
				break;
			}
			strCount++;
			
		}
		
		
//		String conditionStr = "as";
//        
//      strCount = (originStr.length() - originStr.replace("as", "").length())
//                  / conditionStr.length();
		
		// ----   출력결과는 건드리지 않는다         ----
		System.out.println(originStr);
		System.out.println(strCount);
		
		
	}

}
