package nine;

import java.util.HashMap;
import java.util.Map;

public class BasicMap4 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
//		회원가입 할 때 어떤 정보가 필요하지?
//		3개의 정보를 User 클래스에 만든다		
		
//		모든 정보를 출력하는 메서드 하나
		
//		맵에다가 3명 정도의 회원가입을 시킨다
//		
//		키보드 입력을 통해 id와 비번이 일치하면 그 회원의 정보를 모두 출력하시오
		
		Map userMap = new HashMap<String, String>();
		
		userMap.put("psu", "qwer");
		userMap.put("lkj", "asdf");
		userMap.put("lhs", "zxcv");
		
		
		System.out.println("id와 password를 입력해주세요");
		String id = "lkj";
		String pwd = " asdf ".trim();
		
		System.out.println();
		
		
		if(userMap.get(id).equals(pwd) == true) {
			System.out.println("비밀번호가 일치합니다");
			System.out.println("로그인 되었습니다");
			
			System.out.println("반갑습니다. " + id + "님");
		}else {
			System.out.println("id 또는 비밀번호가 틀렸습니다");
		}
		
	}

}
