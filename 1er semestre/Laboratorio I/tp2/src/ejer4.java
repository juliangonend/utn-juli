import java.util.Scanner;

public class ejer4 {
    public static void main (String[] args){
        Scanner sca=new  Scanner(System.in);
    double fahrenheit,centigrados;
    System.out.println("Ingrese los grados centigrados y se  convertiran a farenheit");
    centigrados= sca.nextDouble();
    fahrenheit=32+(9*centigrados/5);
    System.out.println(centigrados +"° centigrados son : " + fahrenheit+ " ° farenheit");
    }
}
