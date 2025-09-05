package Jugadores;

//Crear clase para jugador de poker, con los atributos nombre, edad, sexo y posición en el torneo. 

public class Jugador {
    private String nombre;
    private int    edad;
    private String sexo;    
    private int    posicion_torneo;


    public Jugador() {
    }


    public Jugador(String nombre, int edad, String sexo, int posicion_torneo) {
        this.nombre = nombre;
        this.edad = edad;
        this.sexo = sexo;
        this.posicion_torneo = posicion_torneo;
    }


    public String getNombre() {
        return this.nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getEdad() {
        return this.edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getSexo() {
        return this.sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public int getPosicion_torneo() {
        return this.posicion_torneo;
    }

    public void setPosicion_torneo(int posicion_torneo) {
        this.posicion_torneo = posicion_torneo;
    }

    
    public void celebrarVictoria(){
        System.out.println("Soy un crack del Poker!");
    }
    
    @Override
    public String toString() {
        return getClass() + ":\n\n" +
            " Nombre: '" + getNombre() + "'" +
            ", Edad: '" + getEdad() + "'" +
            ", Sexo: '" + getSexo() + "'" +
            ", Posicion Torneo: '" + getPosicion_torneo() + "\n\n";
    }


}
