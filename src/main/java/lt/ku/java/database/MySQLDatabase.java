package lt.ku.java.database;

import java.sql.Connection;
import java.sql.DriverManager;

public class MySQLDatabase {
	private static MySQLDatabase mySQLDatabase;
	
	private Connection connection;
	
	private MySQLDatabase() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			this.connection=DriverManager.getConnection("jdbc:mysql://localhost/world?user=root&password=root");
		}catch (Exception e) {
			System.out.println("Klaida: "+e);
		}
	}
	
	public static MySQLDatabase getDatabase() {
		if (mySQLDatabase==null) {
			mySQLDatabase=new MySQLDatabase();
		}
		return mySQLDatabase;
	}
	
	public Connection getConnection() {
		return this.connection;
	}
	

}
