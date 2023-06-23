package tentwo;

//사원의 정보에는
//사원번호
//사원명
//급여
//정보가 있다
public class Employee {

	private String empNo = "";
	private String name = "";
	private int sal = 0;
	
	public Employee() {
		super();
	}

	public Employee(String empNo, String name, int sal) {
		super();
		this.empNo = empNo;
		this.name = name;
		this.sal = sal;
	}

	public String getEmpNo() {
		return empNo;
	}

	public void setEmpNo(String empNo) {
		this.empNo = empNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getSal() {
		return sal;
	}

	public void setSal(int sal) {
		this.sal = sal;
	}

	@Override
	public String toString() {
		return "Employee [empNo=" + empNo + ", name=" + name + ", sal=" + sal + "]";
	}
	
}
