package com.connect;

import java.sql.Connection;
import java.sql.DriverManager;

public class dbConnect {

    public static Connection getConnect() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/bank_db", "root", "");
            return con;
        } catch (Exception e) {
            return null;
        }

    }
}
