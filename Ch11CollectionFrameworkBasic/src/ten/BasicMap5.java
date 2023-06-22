package ten;

import java.util.HashMap;
import java.util.Map;

public class BasicMap5 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Map<String, Tv> tvMap = new HashMap<String, Tv>();
		
		Tv tv1 = new Tv("ezen1", 10);
		Tv tv2 = new Tv("ezen2", 10);
		Tv tv3 = new Tv("ezen3", 10);
		
		tvMap.put("교실", tv1);
		tvMap.put("휴게실", tv2);
		tvMap.put("회의실", tv3);
		
		Tv useTv = null;
		
		useTv = tvMap.get("회의실");
		
//		System.out.println("디버그용 개발자 전용 코드");
//		System.out.println(useTv);
		
		System.out.println("===================");
		System.out.println("구입한 진짜 일반인이 수행할 코드");
		useTv.viewTvInfo();
		
	}

}
