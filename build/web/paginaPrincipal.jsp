<%-- 
    Document   : paginaPrincipal
    Created on : 20/06/2020, 03:31:37 PM
    Author     : luisa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    //Declaramos una variable sesionActual de tipo HttpSession
    HttpSession sesionActual = request.getSession(true);
    
    //CARGAMOS EN sesionActual LA VARIABLE DE SESION nomUsuario
    String usuario = (String)sesionActual.getAttribute("nomUsuario");
    if(usuario == null)
    {
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>BIENVENIDO <%=usuario%></title>
    </head>
    <body>
        
        <div class="container">
            
            <h1>Bienvenido: <%=usuario%></h1>
            <br>
            
            <h2>Ingrese los valores para A y B</h2>
            <br>
            
            <form name="form_ecuacion" action="servletEcuacion" method="POST">
                
                <label>Valor de A = </label>
                <input type="numeric" name="valorA" required>
                <br>

                <label>Valor de B = </label>
                <input type="numeric" name="valorB" required>

                <br>
                <input type="submit" value="Aceptar">
                
            </form>
            
        </div>
        
    </body>
</html>
