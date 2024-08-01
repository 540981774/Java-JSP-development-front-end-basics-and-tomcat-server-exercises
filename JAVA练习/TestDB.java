package xiaoqiang;
import java.sql.Connection;
import java.sql.DriverManager;
import java. sql.ResultSet;
import java.sql.SQLException;
import java. sql.Statement;


public class TestDB {  
	private Connection con;
	private Statement stmt;
	private ResultSet rs;
	String url="jdbc:mysql://127.0.0.1:3306/books";
	String dbname="root";
	String dbpass="123456";
	public TestDB(){
		try {
		Class.forName("com.mysqljdbC. Driver");
		con = DriverManager.getConnection(url, dbname, dbpass);
		stmt = con.createStatement();
		}catch (Exception e) { 
			System.out.println(e.getMessage());
		}
		
		
		}
	public void printlnfo(String str) throws SQLException{
		try {
		rs = stmt.executeQuery("select * from book ");
		System.out.println("ID   图书名称   出版社    价格");
		while(rs.next()){
		System.out.print(rs.getString("ID"));System.out.print("");
		System.out.print(rs.getString("Name"));
		System.out.print(" ");
		System.out.print(rs.getString("publishing"));
		System.out.print(" ");
		System.out.print(rs.getString("price"));
		System.out.println();
		}
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			try {
				rs.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
			try {
				stmt.close();
			}catch(Exception e) {
				e.printStackTrace();
				
			}
			try {
				con.close();
				
			}catch(Exception e) {
				e.printStackTrace();
				
				
			}
		}
		}
	public static void mian(String[] args)throws SQLException{
		TestDB t=new TestDB();
		String str ="select * from book";
		t.clone();
	}
}
