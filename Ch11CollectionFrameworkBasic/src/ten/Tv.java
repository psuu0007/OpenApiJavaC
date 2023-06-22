package ten;

public class Tv {

	private String name = "";
	private int volume = 0;
	
	public Tv() {
		super();
	}

	public Tv(String name, int volume) {
		super();
		this.name = name;
		this.volume = volume;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getVolume() {
		return volume;
	}

	public void setVolume(int volume) {
		this.volume = volume;
	}

	public void viewTvInfo() {
		System.out.println("====현재 " + name + "상태====");
		System.out.println("티브이명: " + name);
		System.out.println("볼륨: " + volume);
		
		System.out.println();
	}
	
	@Override
	public String toString() {
		return "Tv [name=" + name + ", volume=" + volume + "]";
	}
	
}
