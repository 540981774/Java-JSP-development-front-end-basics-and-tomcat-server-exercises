package xiaoqiang;

public class ex5 {

	public static void main(String[] args) {
		// TODO 自动生成的方法存根
		int i=10,j=18,k=30;
		switch(j-i)
		{case 8:k++;
		case 9:k+=2;
		case 10:k+=3;
		default : k/=j;break;
		}
		System.out.print("k="+k);

		int x=6,y=10,k1=5;
		switch(x%y)
		{
		case 0:k1=x*y;break;
		case 6:k1=x/y;break;
		case 12:k1=x-y;break;
		default:k1=x*y-x;break;
		}
		System.out.print("k1="+k1);
		
		char ch='A';
		int r=6;
		switch(ch+5)
		{
		case 'A':r=r+3;break;
		case 'B':r=r+5;break;
		case 'C':r-=6;break;
		default:r/=2;
		}
		System.out.print("r="+r);
		
		        int grade=69; /* 你的成绩 */;
		        char lever;

		        if (grade >= 0 && grade <= 100) {
		            switch (grade / 10) {
		                case 10:
		                case 9:
		                    lever = 'A';
		                    break;
		                case 8:
		                    lever = 'B';
		                    break;
		                case 7:
		                    lever = 'C';
		                    break;
		                case 6:
		                    lever = 'D';
		                    break;
		                default:
		                    lever = 'E';
		            }
		        } else {
		            // 处理grade超出范围的情况，或者你可以选择给一个默认值
		            lever = 'X'; // 这里给了一个默认值 'X'，你可以根据需要修改
		        }

		        System.out.println("lever=" + lever);
		    }


	}
