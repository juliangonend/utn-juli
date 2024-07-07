package ejerAnimal;

public class Main {
    public static void main(String[] args) {
        Gato gato1= new Gato("Peluza",4,"f","Blanco");
        Perro perro1= new Perro("Rocco",8,"m","Pastor Aleman");
        Pajaro paj1= new Pajaro("Rey",1,"m","Canario");
        gato1.informacion();
        gato1.hacerSonido();
        perro1.informacion();
        perro1.hacerSonido();
        paj1.informacion();
        paj1.hacerSonido();
    }
}
