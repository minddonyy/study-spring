import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectDB {
	public static void main(String args[]){
		Connection con=null;
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		
		String user="test";
		String psw="test";
		
		try{
			//1. DBMS 드라이버 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//2. Connection 객체 획득
			con=DriverManager.getConnection(url, user, psw);
			System.out.println("제대로 연결되었다.");
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			try{
				con.close();
				
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
	}
}