<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%  String lista = "";
            ArrayList<String> nombre = new ArrayList<>();
            ArrayList<String> raza = new ArrayList<>();
            ArrayList<String> color = new ArrayList<>();
            ArrayList<String> edad = new ArrayList<>();
            ArrayList<String> nivel = new ArrayList<>();%>
    </head>
    <body>
        <%@page import="Rescate.Felinos"%>
        <%@page import="Rescate.Caninos"%>
        
        <% Caninos c = new Caninos(request.getParameter("Nombre"), request.getParameter("Raza"), request.getParameter("Color"),request.getParameter("Edad"), request.getParameter("Toxoplasmosis"), request.getParameter("Nivel"));
            
            nombre.add(c.getNombre()); raza.add(c.getRaza()); color.add(c.getColor()); edad.add(c.getEdad()); nivel.add(c.getToxo());
            for (int i = 0; i < nombre.size(); i++)
            {
                lista = lista +("------------------------");
                lista = lista + "<br>";
                lista = lista + "Nombre del canino: " + nombre.get(i)+"<br>" + 
                        "Raza del canino: "+raza.get(i)+"<br>"+
                        "Color: "+color.get(i)+ "<br>"+
                        "Edad: "+edad.get(i)+"<br>"+
                        "Nivel de entrenamiento: "+ nivel.get(i)+"<br>";
                          
                lista = lista +("------------------------");
                lista = lista +("<br>");
                out.print(lista);
            }
        %>
        
        <img src="https://banfield.com.mx/templates/yootheme/cache/articulo_diferencias_gatos_perros-3192bb68.jpeg">
        
    </body>
</html>

