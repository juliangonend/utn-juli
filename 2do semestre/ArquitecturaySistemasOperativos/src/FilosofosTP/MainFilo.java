package FilosofosTP;

import java.util.concurrent.Semaphore;

public class MainFilo {
    public static void main ( String []args){

        Filosofo filosofo1= new Filosofo("Filosofo 1");
        Filosofo filosofo2= new Filosofo("Filosofo 2");
        Filosofo filosofo3= new Filosofo("Filosofo 3");
        Filosofo filosofo4= new Filosofo("Filosofo 4");

    while (true){
        filosofo1.start();
        filosofo2.start();
        filosofo3.start();
        filosofo4.start();

    }
    }
}
