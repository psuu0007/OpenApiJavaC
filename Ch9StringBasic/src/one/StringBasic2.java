package one;

public class StringBasic2 {

	public static void main(String[] args) {
//		비교연산?
		
		
		String str1 = "abc";
		String str2 = "abc";
		String str3 = new String("abc");
		String str4 = new String("abc");
		
		System.out.println(1 + " ");
		System.out.println("abc" == str1);
		System.out.println(2 + " ");
		System.out.println("abc" == str2);
		System.out.println(3 + " ");
		System.out.println("abc" == str3);
		System.out.println(4 + " ");
		System.out.println("abc" == str4);
		
		System.out.println();
		
		System.out.println(5 + " ");
		System.out.println("str3 == str4 ? ");
		System.out.println(str3 == str4);
		System.out.println(6 + " ");
		System.out.println("str1 == str2 ? ");
		System.out.println(str1 == str2);
		System.out.println(7 + " ");
		System.out.println("str1.equals(str4) ? ");
		System.out.println(str1.equals(str4));
		System.out.println(8 + " ");
		System.out.println("str3.equals(str4) ? ");
		System.out.println(str3.equals(str4));
		
		
		System.out.println(str1.hashCode());
		System.out.println(str2.hashCode());
		System.out.println(str3.hashCode());
		System.out.println(str4.hashCode());
		
		
		System.out.println(System.identityHashCode(str1));
		System.out.println(System.identityHashCode(str2));
		System.out.println(System.identityHashCode(str3));
		System.out.println(System.identityHashCode(str4));
		
		
	}
	
}
