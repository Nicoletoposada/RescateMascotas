package Rescate;

public class Felinos extends Mascotas
{
   private String toxo;

    public Felinos(String nombre, String raza, String color, String edad, String toxo)
    {
        super(nombre, raza, color, edad, toxo);
        this.toxo = toxo;
    }
    
}
