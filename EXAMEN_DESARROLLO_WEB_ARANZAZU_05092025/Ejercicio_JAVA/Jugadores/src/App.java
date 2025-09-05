import java.util.ArrayList;
import java.util.Scanner;

import Jugadores.Jugador;

/**
 
1-(5 ptos) POO crear clase (atributos y métodos)  (2ptos)  
JAVA

- Crear clase para jugador de poker, con los atributos nombre, edad, sexo y posición en el torneo. 

- Crear sus métodos standard de java correspondientes. 

- Añadir además el método celebrarVictoria(), que suelta alguna frase divertida.


2- Registrar jugadores y mostrar resultados
  
- En el main, instanciar al menos 6 jugadores. Pueden incrustarse directamente (no hace falta pedirlos al usuario)

- Añadir estos jugadores a un arraylist de jugadores. 

- Al fi nal, imprimir la lista de jugadores inscritos (ningún orden predeterminado).
 
- Y en base a la posición de cada uno, decir quien es el ganador, y que el ganador ejecute el método celebrarVictoria(). 

  Ejemplo: Julián ha ganado el torneo y dice:
 
       “Yujuuu, soy rico, por fi n puedo comprarme la carta de Pokemon que me faltaba!”
 *
**/

public class App {
    public static void main(String[] args) throws Exception {
        Scanner tcl = new Scanner(System.in);   
        ArrayList<Jugador> ljugadores = new ArrayList<Jugador>();  
        
        limpiarPantalla();

        instanciarJugadores(tcl, ljugadores);

        jugadorGanador(ljugadores);

        tcl.close();
    }

    // limpia pantalla
    public static void limpiarPantalla(){        
        System.out.print("\033[H\033[2J");
        System.out.flush(); 
    }

    //método para agregar en el ArrayList, jugadores
    //Jugador(String nombre, int edad, String sexo, int posicion_torneo)
    public static void instanciarJugadores(Scanner tcl, ArrayList<Jugador> lista){
        System.out.println("\nIndicar el numero de jugadores a instanciar:\n");
        int num_jugadores = tcl.nextInt();
        tcl.nextLine();        

        int    i=0;  

        String nombre;
        int    edad;
        String sexo;        
        int    posicion_torneo;         

        while( i < num_jugadores ){

            System.out.println("\nDatos Jugador "+(i++)+"\n");

            System.out.println("\n- Nombre:\n");
            nombre = tcl.nextLine(); 

            System.out.println("\n- Edad:\n");
            edad = tcl.nextInt();            
            tcl.nextLine();

            System.out.println("\n- Sexo:\n");
            sexo = tcl.nextLine();            

            System.out.println("\n- Posición Torneo:\n");
            posicion_torneo = tcl.nextInt();            
            tcl.nextLine(); 
            
            //crear Objeto
            Jugador objugador = new Jugador(nombre, edad, sexo, posicion_torneo);

            //añadir a la lista de objetos
            lista.add(objugador);
            
        };

        System.out.println("\nIntroducidos los "+num_jugadores+"\n");

    }

    public static void jugadorGanador(ArrayList<Jugador> lista){
        String nombre;

        //recorrer a los Jugadores y mostrar el ganador
        for (Jugador jugador : lista) {

            if( jugador.getPosicion_torneo() == 1 ){
                nombre = jugador.getNombre();

                System.out.println( nombre + " ha ganado el torneo\n\n");
                jugador.celebrarVictoria();
            }
            
        }        

    }
    

}