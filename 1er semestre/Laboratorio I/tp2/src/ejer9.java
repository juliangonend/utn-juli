import java.util.Scanner;

public class ejer9 {
    public static void main(String []args){
        Scanner src= new Scanner(System.in);
        float ladoA,ladoB,ladoC;
        System.out.println("Ingrese el lado A del triangulo");
        ladoA= src.nextFloat();
        System.out.println("Ingrese el lado B del triangulo");
        ladoB=src.nextFloat();
        System.out.println("Ingrese el lado C del triangulo");
        ladoC= src.nextFloat();
        double p=(ladoA+ladoB+ladoC)/2;
        double area=Math.sqrt(p*(p-ladoA)*(p-ladoB)*(p-ladoC));
        System.out.println(" El area del triangulo es de : "+ area);
    }
}
