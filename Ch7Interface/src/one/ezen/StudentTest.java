package one.ezen;

public class StudentTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

//		Student student = new Student();
		
		EzenStudent es = new EzenStudent();
//		EzenStudent.age = 234;
		
		
		int age = 10;
		String name = "홍길동";
		
		es.setAge(age);
		es.name = name;
		
		es.info();
		
	}

}
