import java.util.Scanner;

public class ejer10 {
    public static void main(String []args){
        Scanner src= new Scanner(System.in);
        int num;
        System.out.println("Ingrese un numero entero de 3 cifras");
        num=src.nextInt();
        int centena= num/100;
        num=num%100;
        int decena = num/10;
        num=num%10;
        int unidad=num;
        System.out.println( centena +"\n"+ decena+ "\n"+ unidad);

    }
}
