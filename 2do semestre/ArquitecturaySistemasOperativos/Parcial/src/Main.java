public class Main {
    public static void main(String[] args) {

        Tarea tarea1= new Tarea("1",7);
        Tarea tarea2= new Tarea("2",10);
        Tarea tarea3=new Tarea("3",2);
        Tarea tarea4= new Tarea("4",4);
        Despachador despachador= new Despachador();
        Planificador planificador= new Planificador(despachador);
        Pc pc = new Pc(planificador);
        pc.agregarTarea(tarea1);
        pc.agregarTarea(tarea2);
        pc.agregarTarea(tarea3);
        pc.agregarTarea(tarea4);
        planificador.agregarListaTareas(pc.getListaTareas());
        despachador.ejecutarTareas();
    }
}
