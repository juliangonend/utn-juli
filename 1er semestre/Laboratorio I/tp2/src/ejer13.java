import java.util.Scanner;

public class ejer13 {
    public static void main (String []args){
        Scanner src= new Scanner(System.in);
        int dia , mes , anio;
        System.out.println("Ingrese su dia de nacimineto");
        dia= src.nextInt();
        System.out.println(("Ingrese su mes de nacimiento"));
        mes=src.nextInt();
        System.out.println("Ingrese su año de nacimiento");
        anio=src.nextInt();
        int numeroSuerte=dia+mes+anio;
        int cifrasNumeroSuerte=0;
        for (int i=1000 ;i>0 ; i=i/10){
            cifrasNumeroSuerte=cifrasNumeroSuerte+(numeroSuerte/i);
            numeroSuerte=numeroSuerte%i;
        }
        System.out.println("Cifras "+ cifrasNumeroSuerte);
    }
}
