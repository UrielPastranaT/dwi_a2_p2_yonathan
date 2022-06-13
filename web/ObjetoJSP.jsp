<%-- 
    Document   : ObjetoJSP
    Created on : 10/06/2022, 05:55:07 PM
    Author     : Yonathan Uriel Pastrana Tepectzin
--%>

<%@page import="datos.Dato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
    Dato dato [] = new Dato[10];
%>

<%
    dato[0] = new Dato("57211000101", "Victor Manuel", "Bautista", "Nievez", 7, 8, 10);
    dato[1] = new Dato("57211000102", "Yonathan Uriel", "Pastrana", "Tepectzin", 10, 9, 10);
    dato[2] = new Dato("57211000103", "Daniel", "Chino", "Bello", 10, 7, 7);
    dato[3] = new Dato("57211000104", "Yosef Cecil", "Flores", "Martinez", 7, 8, 10);
    dato[4] = new Dato("57211000105", "Kevin Ulises", "Garcia", "Camacho", 9, 9, 10);
    dato[5] = new Dato("57211000106", "Veronica", "Marin", "Jorge", 10, 8, 8);
    dato[6] = new Dato("57211000107", "Amado", "Perez", "Cochine", 10, 9, 9);
    dato[7] = new Dato("57211000108", "Roberto Leonel", "Salgado", "De la Sancha", 10, 9, 7);
    dato[8] = new Dato("57211000109", "Luis Gustavo", "Tacuba", "Bonifacio", 9, 7, 8);
    dato[9] = new Dato("57211000110", "Susano Eduardo", "Moras", "Gatica", 10, 10, 9);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        
        <title>JSP Page</title>
    </head>
    <body>
        <table class="table" border="3">
            <thead class="thead-dark text-center">
                <tr>
                    <th scope="col">MATRICULA</th>
                    <th scope="col">ALUMNO</th>
                    <th scope="col">DDI</th>
                    <th scope="col">DWI</th>
                    <th scope="col">ECBD</th>
                    <th scope="col">PROM</th>
                </tr>
            </thead>
        <%
            //Ciclo for para imprimir los 10 registros
            for(int i = 0; i < dato.length; i++)
            {
                out.println(""
                + "<tbody>"
                +   "<tr>"
                +       "<td class= 'text-center'>" + dato[i].getMatricula() + "</td>"
                +       "<td>"+ dato[i].getNombre() + " " + dato[i].getApellidoPaterno() + " " + dato[i].getApellidoMaterno() + "</td>"
                +       "<td class= 'text-center'>" + dato[i].getDdi() + "</td>"
                +       "<td class= 'text-center'>" + dato[i].getDwi() + "</td>"
                +       "<td class= 'text-center'>" + dato[i].getEcbd() + "</td>"
                +       "<td class= 'text-center'>" + dato[i].calcularPromedio(dato[i].getDdi(), dato[i].getDwi(), dato[i].getEcbd()) + "</td>"
                +   "</tr>"
                + "</tbody>"
                );
            }
        %>
        </table>
    </body>
</html>
