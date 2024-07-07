import java.util.Scanner;

public class ejer2 {
    public static void main(String[] args) {
        Scanner src=new Scanner(System.in);
        int []num=new int[10];
        float mediaPares=0;
        for (int i = 0; i < 10; i++) {
            System.out.println("Ingrese el numero "+ i);
            num[i]=src.nextInt();
            if (i%2==0){
                mediaPares=mediaPares+num[i];
            }

        }
        mediaPares=mediaPares/5;
        System.out.println("La media de los numeros pares es de "+mediaPares);
    }
}
