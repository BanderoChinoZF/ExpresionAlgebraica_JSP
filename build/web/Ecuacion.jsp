<%-- 
    Document   : Ecuacion
    Created on : 20/06/2020, 05:58:58 PM
    Author     : luisa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="metodos.Ecuacion" %>
<%
    
    HttpSession sesionActual = request.getSession(true);
    String a = (String)sesionActual.getAttribute("valA");
    String b = (String)sesionActual.getAttribute("valB");
    
    double va = Double.parseDouble(a);
    double vb = Double.parseDouble(b);
    
    //SI LAS CADENAS ESTAN VACIAS, REDIRECCIONAMOS A LA PAGINA PRINCIPAL
    if(a.equals("") || b.equals(""))
    {
        response.sendRedirect("paginaPrincipal.jsp");
    }
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Solucion A La Ecuacion</title>
    </head>
    <body>
    <center>
        
        <h2>Solucion De La Ecuación</h2>
        <br>
        <h3>La Ecuacion Es: Y = <%=a%> + <%=b%>X</h3>
        <br>
        <% Ecuacion e = new Ecuacion(va,vb); %>
        <h3>El Valor De Y Es = <%=e.valorY()%></h3>
        <br>
        <h3>Valores De 'Y' En Un Rango De Valores De 'X' De 1 Al 5 </h3>
        <ul>
            <%
                if(vb>0)
                {
                    for(int i=0; i<=5; i++)
                    {
                        out.println("<li> X ="+i+","+" Y= "+e.rango(i)+"</li>");
                    }
                }
            %>
        </ul>
        
        
        
    </center>
    </body>
</html>
