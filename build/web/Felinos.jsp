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
            ArrayList<String> toxo = new ArrayList<>();%>
    </head>
    <body>
        <%@page import="Rescate.Felinos"%>
        <%@page import="Rescate.Caninos"%>
        
        <% Felinos f = new Felinos(request.getParameter("Nombre"), request.getParameter("Raza"), request.getParameter("Color"), request.getParameter("Edad"),request.getParameter("Toxoplasmosis"));

            nombre.add(f.getNombre()); raza.add(f.getRaza()); color.add(f.getColor()); edad.add(f.getEdad()); toxo.add(f.getToxo());
            for (int i = 0; i < nombre.size(); i++)
            {
                lista = lista +("------------------------");
                lista = lista + "<br>";
                lista = lista + "Nombre del felino: " + nombre.get(i)+"<br>" + 
                        "Raza del felino: "+raza.get(i)+"<br>"+
                        "Color: "+color.get(i)+ "<br>"+
                        "Edad: "+edad.get(i)+"<br>"+
                        "Tiene toxoplasmosis: "+ toxo.get(i)+"<br>";
                          
                lista = lista +("------------------------");
                lista = lista +("<br>");
                out.print(lista);
            }
        %>
        
        <img src="https://banfield.com.mx/templates/yootheme/cache/articulo_diferencias_gatos_perros-3192bb68.jpeg">
        
    </body>
</html>

