package xiaoqiang;

public class exa2_5 {
	 public static void main(String[] args) {
		 int n=3,m=4;
		 boolean a,b,c,d;
		 a=n<m;
		 b=((++n)==m);
		 c=((n++)>m);
		 d=((--m)!=n);
		 System.out.println("a=n<m"+a);
		 System.out.println("b=((++n)==m)"+b);
		 System.out.println("c=((n++)>m)"+c);
		 System.out.println("d=((--m)!=n)"+d);
		 
		 int a1=5,b1=8,c1=1,d1=9;
		 boolean s;
		 s=(a1>b1)?(c1>d1):c1==d1;
		 System.out.println("s=%d"+s);
		 
		 int t1=9,t2=11,t3=8;
		 int t4,t5;
		 t4=t1>t2?t1:t2+t1;
		 t5=t4>t3?t4:t3;
		 System.out.println("t4=%d"+t4);
		 System.out.println("t5=%d"+t5);
		 
		 
	 }
	 

}
