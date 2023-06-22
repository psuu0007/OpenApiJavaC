package five;

public class Tv {

	String name = "";
	int volume = 0;
	int channel = 0;
	boolean power = false;
	
//	기본 생성자
	public Tv() {
		super();
	}
	
//	전체 생성자
	public Tv(String name, int volume, int channel, boolean power) {
		super();
		this.name = name;
		this.volume = volume;
		this.channel = channel;
		this.power = power;
}
	
//	볼륨은 1~10 까지 가능한데
//	볼륨업 기능
//	볼륨다운 기능을 구현하시오
	void volumeUp() {//	10에서 볼륨업을 하면 1이 되어야 한다
		volume++;
		if(volume > 10) {
			volume = 1;	
		}
	}
	
	void volumeDown() {//만약 1에서 볼륨다운을 하면 10이 되어야 한다
		volume--;
		if(volume < 1) {
			volume = 10;
		}
		
	}
	
//	모든 정보를 출력하는 메서드
	void tvInfo() {
		System.out.println("tv명: " + name);
		System.out.println("볼륨: " + volume);
		System.out.println("채널: " + channel);
		System.out.println("전원: " + power);
		System.out.println();
	}
	
//	

	
	
}
