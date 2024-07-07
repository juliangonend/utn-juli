import java.util.Scanner;

public class ejer3{
    public static void main(String[] args){
        Scanner sca=new  Scanner(System.in);
        int num;
        System.out.println("Ingrese un numero ");
        num=sca.nextInt();
        int doble= num*2;
        int triple=num*+3;
        System.out.println("el doble de "+ num + " es " + doble);
        System.out.println("el triple de "+ num + " es de " + triple);
    }
}

