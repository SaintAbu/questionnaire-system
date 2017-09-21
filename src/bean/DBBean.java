package bean;
import java.sql.*;
public class DBBean {
	private String driverStr = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private String connStr = "jdbc:sqlserver://localhost:1433; DatabaseName=system";
	private String dbusername = "abu";
	private String dbpassword = "20142966";
	private Connection conn = null;
	private Statement stmt = null;

	public DBBean()
	{
		try
		{
			Class.forName(driverStr);
			conn = DriverManager.getConnection(connStr, dbusername, dbpassword);
			stmt = conn.createStatement();
		} 
		catch (Exception ex) {
			ex.printStackTrace();
		} 
		
	}

public int executeUpdate(String s) {
	int result = 0;
	try {
		result = stmt.executeUpdate(s);
	} catch (Exception ex) {
		System.out.println("执行更新错误！");
	}
	return result;
}

public ResultSet executeQuery(String s) {
	ResultSet rs = null;
	try {
		rs = stmt.executeQuery(s);
	} catch (Exception ex) {
		System.out.println("执行查询错误！");
	}
	return rs;
}
public void execQuery(String s){
	try {
		stmt.executeUpdate(s);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		System.out.println("执行插入错误");
	}
}

public void close() {
	try {
		stmt.close();
		conn.close();
	} catch (Exception e) {
	}
}
}
