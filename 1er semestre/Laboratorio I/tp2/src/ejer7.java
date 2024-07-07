import java.util.Scanner;

public class ejer7 {
    public static void main(String[] args){
        Scanner src= new Scanner(System.in);
        float cateto1,cateto2;
        System.out.println("Ingrese el tamaño del cateto 1 ");
        cateto1=src.nextFloat();
        System.out.println("Igrese el tamaño del cateto 2 ");
        cateto2=src.nextFloat();
        double hipotenusa=Math.sqrt(Math.pow(cateto1,2)+Math.pow(cateto2,2));
        System.out.println("La hipotenusa del triangulo es de "+ hipotenusa);

    }
}

