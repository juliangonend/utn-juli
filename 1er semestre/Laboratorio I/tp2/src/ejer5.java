import java.util.Scanner;

public class ejer5 {
    public static void main(String[]args){
            Scanner src= new Scanner(System.in);
        float circunferencia;
        double longitud,area;
        System.out.println("Ingresaa el valor de la circunferencia");
        circunferencia=src.nextFloat();
        longitud=circunferencia* Math.PI;
        System.out.println("La longitud es de :"+ longitud);
        area=Math.pow((longitud/2),2)*Math.PI;
        System.out.println("El area es de : " + area);
    }
}
