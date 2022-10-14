package Rescate;

public class Caninos extends Mascotas
{
    private String nivel;

    public Caninos(String nombre, String raza, String color, String edad, String toxo, String nivel)
    {
        super(nombre, raza, color, edad, toxo);
        this.nivel = nivel;
    }

}
