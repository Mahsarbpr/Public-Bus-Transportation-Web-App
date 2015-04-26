package database;

import java.sql.Connection;
import java.sql.DriverManager;
//import java.sql.Statement;
//import java.sql.PreparedStatement;
//import java.sql.SQLException;
//import java.sql.ResultSet;



public class DB {
private Connection conn;
//private Statement s;
//private PreparedStatement ps;
//private ResultSet rs;

public Connection ConnectDB() { //throws exception add throws declaration 
	
	try{
	Class.forName("com.mysql.jdbc.driver"); //MySQL JDBC driver loaded ok.
	String connectionUrl = "jdbc:mysql://localhost:3306/busop";
	String connectionUser = "root";
	String connectionPassword = "";
	conn = DriverManager.getConnection(connectionUrl, connectionUser, connectionPassword);//Connected with host:port/database.	
	 if (conn == null) {
            System.out.println("Connection cannot be established");
        }
        return conn;
    } catch (Exception e) {
        System.out.println(e);
    }
    return null;
}
}
