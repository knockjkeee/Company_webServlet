package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnectionManager {
    private Connection connection;

    public DBConnectionManager(String dbUrl, String dbUser, String dbPassword) throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        this.connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
    }

    public Connection getConnection() {
        return this.connection;
    }





}
