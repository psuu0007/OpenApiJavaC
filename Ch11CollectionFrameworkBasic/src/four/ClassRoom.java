package four;

public class ClassRoom {

	String banName = "";
	int studentCapacity = 0;
	
	public ClassRoom() {
		super();
	}

	public ClassRoom(int studentCapacity, String banName) {
		super();
		this.studentCapacity = studentCapacity;
		this.banName = banName;
	}
	
	void info() {
		System.out.println(banName + "반 정보");
		
		System.out.println("반이름: " + banName);
		System.out.println("수용인원: " + studentCapacity);
		
		System.out.println();
	}
	
	
	
}
