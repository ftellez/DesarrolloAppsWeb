<%-- 
    Document   : servidor
    Created on : Sep 22, 2017, 7:41:23 PM
    Author     : jfert
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Servidor de prueba</title>
        <style>
            body {
                color:#663300; 
                background-color:#FFFFCC
            }
            
            td {
                border: 1px solid black;
                padding: 10px;
            }
            
            table {
                border-collapse: collapse;
            }
        </style>
    </head>
    <body>
	<%  String nombre = request.getParameter("nombre");
            String edad = request.getParameter("edad");
            String sexo = request.getParameter("sexo");
            String domicilio = request.getParameter("domicilio");
            String telefono = request.getParameter("telefono");
            String correo = request.getParameter("correo");
            
            String estado = request.getParameter("estado");
            
            String presion = (request.getParameter("presion") != null) ? request.getParameter("presion") : "no" ;
            String deformaciones = (request.getParameter("deformaciones") != null) ? request.getParameter("deformaciones") : "no";
            String dolor = (request.getParameter("dolorcabeza") != null) ? request.getParameter("dolorcabeza") : "no" ;
            String artritis = (request.getParameter("artritis") != null) ? request.getParameter("artritis") : "no" ;
            String articulacion = (request.getParameter("articulaciones") != null) ? request.getParameter("articulaciones") : "no" ;
            String mareo = (request.getParameter("mareos") != null) ? request.getParameter("mareos") : "no" ;
            String hepatitis = (request.getParameter("hepatitis") != null) ? request.getParameter("hepatitis") : "no" ;
            String renal = (request.getParameter("renal") != null) ? request.getParameter("renal") : "no" ;
            String asma = (request.getParameter("asma") != null) ? request.getParameter("asma") : "no" ;
            String diabetes = (request.getParameter("diabetes") != null) ? request.getParameter("diabetes") : "no" ;
            
            String dentaduras = (request.getParameter("dentaduras") != null) ? request.getParameter("dentaduras") : "no" ;
            String lentes = (request.getParameter("lentes") != null) ? request.getParameter("lentes") : "no" ;
            String contacto = (request.getParameter("contacto") != null) ? request.getParameter("contacto") : "no" ;
            String auditivos = (request.getParameter("auditivos") != null) ? request.getParameter("auditivos") : "no" ;
            String protesis = (request.getParameter("protesis") != null) ? request.getParameter("protesis") : "no" ;
            
            String otros = request.getParameter("otros");
        %>
		
        <h2>Resumen de los datos de la forma</h2>
        
	<table>
            <thead>
		<tr>
                    <th align="center"> <b>Variable</b> </th>
                    <th align="center"> <b>Valor</b> </th>
		</tr>
            </thead>
            
		<tr>
                    <td> nombre </td>
                    <td> <%= nombre %> </td>
		</tr>
                
                <tr>
                    <td> edad </td>
                    <td> <%= edad %> </td>
		</tr>
                
                <tr>
                    <td> sexo </td>
                    <td> <%= sexo %> </td>
		</tr>
                
                <tr>
                    <td> domicilio </td>
                    <td> <%= domicilio %> </td>
		</tr>
                
                <tr>
                    <td> telefono </td>
                    <td> <%= telefono %> </td>
		</tr>
                
                <tr>
                    <td> correo </td>
                    <td> <%= correo %> </td>
		</tr>
                
                
                <tr>
                    <td> estado </td>
                    <td> <%= estado %> </td>
		</tr>
                
                
                <% if(presion.equals("si")) { %>
                <tr>
                    <td> presion </td>
                    <td> <%= presion %> </td>
		</tr>
                <% } %>
                
                <% if(deformaciones.equals("si")) { %>
                <tr>
                    <td> deformaciones </td>
                    <td> <%= deformaciones %> </td>
		</tr>
                <% } %>
                
                <% if(dolor.equals("si")) { %>
                <tr>
                    <td> dolorcabeza </td>
                    <td> <%= dolor %> </td>
		</tr>
                <% } %>
                
                <% if(artritis.equals("si")) { %>
                <tr>
                    <td> artritis </td>
                    <td> <%= artritis %> </td>
		</tr>
                <% } %>
                
                <% if(articulacion.equals("si")) { %>
                <tr>
                    <td> articulaciones </td>
                    <td> <%= articulacion %> </td>
		</tr>
                <% } %>
                
                <% if(mareo.equals("si")) { %>
                <tr>
                    <td> mareos </td>
                    <td> <%= mareo %> </td>
		</tr>
                <% } %>
                
                <% if(hepatitis.equals("si")) { %>
                <tr>
                    <td> hepatitis </td>
                    <td> <%= hepatitis %> </td>
		</tr>
                <% } %>
                
                <% if(renal.equals("si")) { %>
                <tr>
                    <td> renal </td>
                    <td> <%= renal %> </td>
		</tr>
                <% } %>
                
                <% if(asma.equals("si")) { %>
                <tr>
                    <td> asma </td>
                    <td> <%= asma %> </td>
		</tr>
                <% } %>
                
                <% if(diabetes.equals("si")) { %>
                <tr>
                    <td> diabetes </td>
                    <td> <%= diabetes %> </td>
		</tr>
                <% } %>
                
                
                <% if(dentaduras.equals("si")) { %>
                <tr>
                    <td> dentaduras </td>
                    <td> <%= dentaduras %> </td>
		</tr>
                <% } %>
                
                <% if(lentes.equals("si")) { %>
                <tr>
                    <td> lentes </td>
                    <td> <%= lentes %> </td>
		</tr>
                <% } %>
                
                <% if(contacto.equals("si")) { %>
                <tr>
                    <td> contacto </td>
                    <td> <%= contacto %> </td>
		</tr>
                <% } %>
                
                <% if(auditivos.equals("si")) { %>
                <tr>
                    <td> auditivos </td>
                    <td> <%= auditivos %> </td>
		</tr>
                <% } %>
                
                <% if(protesis.equals("si")) { %>
                <tr>
                    <td> protesis </td>
                    <td> <%= protesis %> </td>
		</tr>
                <% } %>
                
                <tr>
                    <td> otros </td>
                    <td> <%= otros %> </td>
		</tr>
            
	</table>
    </body>
</html>
