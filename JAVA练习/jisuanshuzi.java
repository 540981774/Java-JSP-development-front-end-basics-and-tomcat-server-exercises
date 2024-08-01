package xiaoqiang;

public class jisuanshuzi {
    public static void main(String[] args) {
    	 int n =6789;
         int x1,x2,x3,x4;
        x1=n/1000;//=6
        x2=(n/100)%10;//=7
        x3=(n/10)%10;//=8
        x4=n%10;//=9
        System.out.printf("x1= %d, x2= %d, x3= %d, x4= %d\n",+x1,+x2,+x3,+x4);
    }
}

