package Rescate;

public class Mascotas
{
     public String getNombre()
     {
        return nombre;
    }

    public void setNombre(String nombre)
    {
        this.nombre = nombre;
    }

    public String getRaza()
    {
        return raza;
    }

    public void setRaza(String raza)
    {
        this.raza = raza;
    }

    public String getColor()
    {
        return color;
    }

    public void setColor(String color)
    {
        this.color = color;
    }
    public String getEdad()
    {
        return edad;
    }

    public void setEdad(String edad)
    {
        this.edad = edad;
    }
    
    public String getToxo()
    {
        return toxo;
    }

    public void setToxo(String edad)
    {
        this.toxo = toxo;
    }
    
    private String nombre;
    private String raza;
    private String color; 
    private String edad;
    private String toxo;

    public Mascotas()
    {
        
    }

    public Mascotas(String nombre, String raza, String color, String edad, String toxo)
    {
        this.nombre = nombre;
        this.raza = raza;
        this.color = color;
        this.edad = edad;
        this.toxo = toxo;
    }

}
