/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.exceptions.MySQLDataException;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Administrador
 */
public class conexiondb {
    
    public String host = "jdbc:mysql://localhost:3306/";
    public String DBname = "empleadosdaniel";
    public String user = "root";
    public String pass="";  
    public String url = host + DBname + "?user=" + user + "&password=" + pass;
    
    public Connection Conectar() {
        Connection link = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            link = (Connection) DriverManager.getConnection(this.url);
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println("Problema con la conexion");
        }
        /**
         * @return retonoa la connection como nulo
         */
        return link;
    }
}
