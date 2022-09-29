package rikkei.academy.config;

import com.mysql.jdbc.Driver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectMySQL {
    private static Connection connection;
    private static final String URL = "jdbc:mysql://localhost:3306/th_jdbc";
    private static final String USER = "root";
    private static final String PASS = "123456";
    public static Connection getConnection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(
                    URL,USER,PASS
            );
            System.out.println("Connect successfully !!");
        }catch (ClassNotFoundException e) {
            System.out.println("Connect fail 1");
            throw new RuntimeException(e);
        } catch (SQLException e) {
            System.out.println("Connect fail 2");
            throw new RuntimeException(e);
        }
        return connection;
    }
}
