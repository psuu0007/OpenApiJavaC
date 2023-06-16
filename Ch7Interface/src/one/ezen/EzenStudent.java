package one.ezen;

public class EzenStudent implements Student{
	String name = "";

	@Override
	public void setAge(int age) {
		// 오류?
//		this.age = age;   
		System.out.println("나이 설정하는 메서드 실행");
	}
	
	@Override
	public int getAge() {
		
		return age;
	}
	
	@Override
	public void info() {
		System.out.println("이름: " + name);
		System.out.println("나이: " + age);
	}
	

	
}
