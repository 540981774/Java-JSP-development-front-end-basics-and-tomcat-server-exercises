package xiaoqiang;

public class m {
	 public static void main(String[] args) {
		 int a = 10, b = 100, c = 30;
		 int max = (a > b) ? (a > c ? a : c) : (b > c ? b : c);
		 int min = (a < b) ? (a < c ? a : c) : (b < c ? b : c);

		 System.out.println("最大值：" + max);
		 System.out.println("最小值：" + min);

	 }
	 
}
