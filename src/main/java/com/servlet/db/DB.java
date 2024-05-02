package com.servlet.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DB {

    static String URL = "jdbc:mysql://localhost:3306/";
    static String DATABASE_NAME = "file_upload?useSSL=false";
    static String USERNAME = "root";
    static String PASSWORD = "root";// There is no password.

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/file_upload", "root", "root");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }
        return con;
    }
}
