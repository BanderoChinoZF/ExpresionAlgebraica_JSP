<%-- 
    Document   : index
    Created on : 20/06/2020, 03:27:21 PM
    Author     : luisa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    
    <body>
        
        <form name="autentication" action="miServlet" method="POST">
            
            <table align="center" width="350" style="border-style:blue">
                <thead>
                    <tr>
                        <th colspan="2">ACCESO</th>
                    </tr>
                </thead>
                
                <tbody>
                    <tr>
                        <td>
                            Usuario:
                        </td>
                        <td>
                            <input type="text" name="nombreUsuario" value="">
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            Clave:
                        </td>
                        <td>
                            <input type="password" name="clave" value="">
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <input type="submit" value="Aceptar">
                        </td>
                    </tr>
                </tbody>
                
            </table>
            
        </form>
        
    </body>
    
</html>