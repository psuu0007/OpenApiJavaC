package two;

public class StringEx6 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// 절대 원본 데이터를 변경하지 않는다
		String originStr = "Hello.java"; // 기준
		String fileName = ""; // 결과
		String fileExtensionName = ""; // 파일 확장자명

//		파일명과 파일확장자를 출력하시오
//		ex:
//			파일전체명: Hello.java
//			파일명: Hello
//			확장자명: java

		int positionStrIndex = originStr.indexOf(".");
		fileName = originStr.substring(0, positionStrIndex);
		fileExtensionName = originStr.substring(positionStrIndex+1
			, originStr.length());
		
//      String[] arr = originStr.split("\\.");
//		String[] strArr = originStr.split("[.]");
//		fileName = strArr[0];
//		fileExtensionName = strArr[1];

		// ---- 출력결과는 건드리지 않는다 ----
		System.out.println(fileName);
		System.out.println(fileExtensionName);

	}

}
