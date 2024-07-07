import java.util.Scanner;

public class ejer16{
    public static  void main (String []args){
        Scanner src = new Scanner(System.in);
        System.out.println("Ingrese grados centigrados");
        float centigrados= src.nextFloat();
        double kelvin= centigrados+273;
        double reaumur= (centigrados)*0.8;
        System.out.println(" En grados kelvin son "+ kelvin);
        System.out.println(" En grados reamur son "+ reaumur);
    }
}
