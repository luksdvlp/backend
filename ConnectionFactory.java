package br.edu.usj.pet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.SQLDataException;

public class ConnectionFactory {

    public Connection getConnection(){


        Connection conexao=null;


        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexao = DriverManager.getConnection("jdbc:mysql://localhost:3306/petshop?useTimezone=true&serverTimezone=UTC", "root", "password");
            return conexao;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }
}

