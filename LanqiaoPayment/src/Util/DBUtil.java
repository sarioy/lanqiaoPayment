package Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBUtil {
	private static final String URL="jdbc:oracle:thin:@localhost:1521:ORCL";
	private static final String UNAME = "scott";
	private static final String UPWD = "tiger";
	
	public static Connection connection = null;
	public static PreparedStatement pstmt = null;
	public static ResultSet rs = null;
	public static Statement stmt = null;
	
	//连接数据库
	public static Connection getConnection() throws SQLException, ClassNotFoundException{
		Class.forName("oracle.jdbc.OracleDriver");
		return connection = DriverManager.getConnection(URL,UNAME,UPWD);
	}
	
	//通用的查询
	public static ResultSet QueryUser(String sql) throws ClassNotFoundException, SQLException{
		return rs = getConnection().prepareStatement(sql).executeQuery();
	}
	

}
