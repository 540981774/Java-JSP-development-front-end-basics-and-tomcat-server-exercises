package xiaoqiang;

public class fenshudenji {

	public static void main(String[] args) {
		// TODO 自动生成的方法存根
		int x=88;//成绩
		char lever=' ';//等级
		String s="";
		if(x>=0 && x<59)
			lever='E';
		if(x>=60 && x<70)
			lever='D';
		if(x>=70 && x<80)
			lever='C';
		if(x>=80 && x<90)
			lever='B';
		if(x>=90 && x<100)
			lever='A';
		else s="非法输入，无效";
		System.out.println("成绩="+x+",等级="+lever);
		
		
		
	}

}
