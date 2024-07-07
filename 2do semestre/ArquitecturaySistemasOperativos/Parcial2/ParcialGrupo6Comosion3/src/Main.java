import java.util.ArrayList;
import java.util.Scanner;

public class Main {
    private static Pc pc;
    private static Planificador planificador;
    private static Despachador despachador;
    public static void main(String[] args) {


        Scanner scanner = new Scanner(System.in);


        despachador = new Despachador();
        planificador = new Planificador(despachador);
        pc= new Pc(planificador);


        int opcion;

        do {
            pc.mostrarMenu();
            System.out.print("Elige una opción: ");
            opcion = scanner.nextInt();
            scanner.nextLine();

            switch (opcion) {
                case 1:
                    pc.agregarTarea(scanner);
                    break;
                case 2:
                    pc.ejecutarTareas();
                    break;
                case 3:
                    pc.mostrarTareas();
                    break;
                case 0:
                    System.out.println("Saliendo del programa.");
                    break;
                default:
                    System.out.println("Opción no válida, por favor elige nuevamente.");
            }
        } while (opcion != 0);

        scanner.close();
    }



}
