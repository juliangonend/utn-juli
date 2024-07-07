import java.util.Scanner;

public class ejer6 {
    public static void main(String []args){
        Scanner src= new Scanner(System.in);
        float kmHora,mSegundos;
        System.out.println("Ingrese la velocidad de km/h");
        kmHora=src.nextFloat();
        mSegundos=(kmHora/3600)*1000;
        System.out.println("La velocidad equivalente en m/s es de "+ mSegundos);
    }
}
