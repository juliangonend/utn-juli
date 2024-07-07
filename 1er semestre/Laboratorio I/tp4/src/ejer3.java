import java.util.Scanner;

public class ejer3 {
    public static void main(String[] args) {
        Scanner src=new Scanner(System.in);
        int cantAlum;
        double mediaAlumn=0;
        System.out.println("Ingres la cantidad de Alumnos");
        cantAlum=src.nextInt();
        double []notas=new double[cantAlum];
        System.out.println("NOTAS ALUMNOS  ");
        for (int i = 0; i < cantAlum; i++) {
            System.out.println("Ingrese la nota del Alumno"+ i);
            notas[i]=src.nextDouble();
        }
        for (int i = 0; i < cantAlum; i++) {
            mediaAlumn=mediaAlumn+notas[i];
        }
        mediaAlumn=mediaAlumn/cantAlum;
        for (int i = 0; i < cantAlum; i++) {
            if (notas[i]>=mediaAlumn){
                System.out.println("El alumno :"+i +" supera la media de "+mediaAlumn+" con nota de "+notas[i]);

            }
        }
    }
}
