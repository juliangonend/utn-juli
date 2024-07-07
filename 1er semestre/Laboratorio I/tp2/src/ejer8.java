import java.util.Scanner;

public class ejer8 {
    public static void main(String[]args){
        float radioEsfera;
        Scanner src= new Scanner(System.in);
        System.out.println("Ingrese el radio de la esfera ");
        radioEsfera= src.nextFloat();
        double volumen =(4.0/3)*Math.PI*Math.pow(radioEsfera,3);
        System.out.println("El volumen de la esfera es de "+ volumen);
    }
}
