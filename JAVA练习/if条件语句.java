package xiaoqiang;

public class if条件语句 {

	public static void main(String[] args) {
		// TODO 自动生成的方法存根
		int x=30;
		int y=0;
		int z=0;
		if(x<0)
			y=-1;
			z=1;
		if(x==0)
			y=0;z=0;
		
		if(x>0)
			y=1;z=-1;
		System.out.println("y="+y);
		System.out.println("z="+z);
	}

}

