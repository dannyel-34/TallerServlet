<%-- 
    Document   : index
    Created on : 9/07/2015, 03:35:55 AM
    Author     : Administrador
--%>

<%@page import="modelo.conexiondb"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style type="text/css" >
            .btn{
                background: #333333;
                color: #fff;
                width: 153%;
                height: 142%;
                border-radius: 18px;
                border: 1px #cccccc inset;
            }
            .btn:hover{
                background: #999999;
            }
            a{
                text-decoration: none;
                color: #003333;             
            }
            
            h1{
                font-family: fantasy;
                font-size: 34px;
                color: #999900;
            }
        </style>
    </head>
    <body>
     <%
               conexiondb mysql = new conexiondb();
               Connection cn = mysql.Conectar();
               
               String confir = "No se ha podigo establecer la conexion";

               if (cn != null) {
                   confir = "Esta conectado con la  base de datos. Exitos !!";
               }
    %>
    
    <input type="submit" onclick="alert('<%= confir %>')" name="Conectar">
    
    <center><h1>Busqueda por empleado</h1></center>
    <center>
        <div class="login">
        <form method="post" action="RegistroServlet">
            <table border="0">
                <thead>
                    <tr>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Buscar por ID: </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="id" class="inputid"></td>
                        <td><input type="submit" name="buscar" value="Busqueda" class="btn"></td>
                    </tr>
                </tbody>
            </table>

        </form>
       </div>
    </center>
    </body>
</html>
