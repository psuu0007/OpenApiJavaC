package one;

import java.util.Date;

public class BasicDate1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

//		날짜 관련 클래스
		
//		Date클래스
//		
//		날짜와 시간을 다룰 목적으로 만들어진 클래스이다
//		
//		단,더 보완된 클래스나 인터페이스가 만들어져있지만 기본은 같다
//		호환성 
		Date calendar = new Date();
		
		System.out.println(calendar);
		
//		format이 중요하다  -> 보여지는 형태
		
		int year = 0;
		int month = 0;
		int date = 0;
		int day = 0;
		
		year = calendar.getYear();
		month = calendar.getMonth();
		date = calendar.getDate();
		day = calendar.getDay();
		
		System.out.println("년: " + year);
		System.out.println("월: " + month);
		System.out.println("일: " + date);
		System.out.println("요일: " + day);
		
		System.out.println("올바른 사용 예");

		System.out.println("년: " + (year + 1900));
//		0~11
		System.out.println("월: " + (month + 1));
		System.out.println("일: " + date);
		System.out.println("요일: " + day);
//		치환한다
//		Enum
		if(day == 5) {
			System.out.println("요일: " + "금");
		}
		
		
		Date d = new Date();
//		6월
//		1월1일
		d.setMonth(0);
		d.setDate(1);
		
		System.out.println(d.getMonth());
		System.out.println(d.getDate());
		System.out.println("일요일: " + d.getDay());
		
		
//		4월1일
		d.setMonth(3);
		d.setDate(1);
		
		System.out.println(d.getMonth());
		System.out.println(d.getDate());
		System.out.println("토요일: " + d.getDay());
		
//		요일
//		일 월 ,,, 토
//		0 1 ,,, 6
//		
//		달
//		1월 2월 ,,, 12월
//		0, 1, ,,, 11
//		
//		년도
//		2000이상을 표현할려면 1900을 더해라
		
	}

}
