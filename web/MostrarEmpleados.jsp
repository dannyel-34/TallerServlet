<%-- 
    Document   : MostrarEmpleados
    Created on : 9/07/2015, 03:56:32 AM
    Author     : Administrador
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="modelo.conexiondb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>NOMNBRE</th>
                    <th>CARGO</th>
                    <th>TELEFONO</th>
                    <th>HORA ENTRAD</th>
                    <th>HORA SALIDA</th>
                </tr>
            </thead>
            
            <%
                    try{
                        boolean ba = true;

                       //declara variables como cadena de caracteres 
                        String nombre = "";
                        String cargo = "";
                        String telefono = "";
                        String horaEntrada = "";
                        String horaSalida = "";

                        
                                   
                        //realiza la conexion ala base de datos
                        conexiondb mysql = new conexiondb();
                        Connection cn = mysql.Conectar();
                        Statement st = cn.createStatement();
                        ResultSet rs;

                        String consult = "Select * from mascota";

                        rs = st.executeQuery(consult);
                        
                        //este ciclo recorera todas las posiones de nuestra tabla
                        while (rs.next()) {
                            nombre=rs.getString(1);
                            cargo=rs.getString(2);
                            telefono=rs.getString(3);
                            horaEntrada=rs.getString(4);
                            horaSalida=rs.getString(5);   
                            ba=true;
                %>
            <tbody>
                <tr>
                    <td><%= nombre %></td>
                    <td><%= cargo %></td>
                    <td><%= telefono %></td>
                    <td><%= horaEntrada %></td>
                    <td><%= horaSalida %></td>
                </tr>
                
                <%}
                    out.close();
                    }catch(SQLException e){
                         out.print(e.toString());
                    }
                %>
            </tbody>
        </table>
            
            <form method="post" accept-charset="RegistroServlet">
                <label>Registrar entrada: </label>
                <input type="checkbox" name="chek1">
                <br>
                <label>Registrar salida: </label>
                <input type="checkbox" name="chek2">
                <br>
                 <label>Grabar Foto: </label>
                <input type="checkbox" name="chek3">
                <br>
                <input type="submit" name="Enviar" value="Procesar">
            </form>

    </body>
</html>
