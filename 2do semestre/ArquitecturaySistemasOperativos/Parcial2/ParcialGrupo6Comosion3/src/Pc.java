import java.util.ArrayList;
import java.util.Scanner;

public class  Pc{
    private Planificador planificador;
    private ArrayList<Tarea> listaTareas;
    private Despachador despachador;

    public Pc(Planificador planificador) {
        this.planificador = planificador;
        this.despachador = planificador.getDespachador();
        listaTareas= new ArrayList<>();
    }

    public Planificador getPlanificador() {
        return planificador;
    }

    public void setPlanificador(Planificador planificador) {
        this.planificador = planificador;
    }

    public ArrayList<Tarea> getListaTareas() {
        return listaTareas;
    }

    public void setListaTareas(ArrayList<Tarea> listaTareas) {
        this.listaTareas = listaTareas;
    }

    public  void mostrarMenu() {
        System.out.println("\n=== Menú de Opciones ===");
        System.out.println("1. Agregar Tarea");
        System.out.println("2. Ejecutar Tareas");
        System.out.println("3. Mostrar Lista de Tareas");
        System.out.println("0. Salir");
    }

    public  void agregarTarea(Scanner scanner) {
        System.out.print("Ingresa el nombre de la tarea: ");
        String nombre = scanner.nextLine();
        System.out.print("Ingresa la duración de la tarea: ");
        int duracion = scanner.nextInt();
        scanner.nextLine();

        Tarea tarea = new Tarea(nombre, duracion);
        listaTareas.add(tarea);
        System.out.println("Tarea agregada con éxito.");
    }

    public  void ejecutarTareas() {
        if (this.getListaTareas().isEmpty()) {
            System.out.println("No hay tareas para ejecutar.");
            return;
        }

        this.planificador.agregarListaTareas(this.getListaTareas());
        this.despachador.ejecutarTareasPorRoundRobin();
        System.out.println("Todas las tareas han sido ejecutadas.");
    }

    public  void mostrarTareas() {
        ArrayList<Tarea> listaTareas = this.getListaTareas();

        if (listaTareas.isEmpty()) {
            System.out.println("No hay tareas en la lista.");
            return;
        }

        System.out.println("\n=== Lista de Tareas ===");
        for (Tarea tarea : listaTareas) {
            System.out.println("Tarea: " + tarea.getNombre() + ", Duración: " + tarea.getDuracion());
        }
    }

}
