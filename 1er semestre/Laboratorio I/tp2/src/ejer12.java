import java.util.Scanner;

public class ejer12 {
    public static void main(String[]args){
        Scanner src= new Scanner(System.in);
        int num;
        String hola ="programación";
        do{
            System.out.println("Ingrese un numero de 5 cifras");
            num=src.nextInt();
        }while(num<=10000 && num>=99999);
        String numString= String.valueOf(num);
        for (int i =0;i<5;i++){

                System.out.println(numString.substring(4-i));
        }
    }
}
