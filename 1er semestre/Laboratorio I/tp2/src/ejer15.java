import java.util.Scanner;

public class ejer15 {
    public static void main(String []args){
        Scanner src = new Scanner(System.in);
        int N ,m;
        System.out.println("Ingrese un numero");
        N= src.nextInt();
        System.out.println(" Ingrese cuantas cifras le qiuiere quitar a : "+ N);
        m=src.nextInt();
        for (int i=0 ; i<m;i++){
            N=N/10;
        }
        System.out.println("El numero con "+ m + " cifras menos quedo en : "+ N);
    }
}
