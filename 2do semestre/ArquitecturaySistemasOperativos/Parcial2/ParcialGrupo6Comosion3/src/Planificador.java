import java.util.ArrayList;
import java.util.Scanner;

public class Planificador {
    private Despachador despachador;
    private ArrayList<Tarea>listaTareas;

    public Planificador(Despachador despachador) {
        this.despachador = despachador;
        listaTareas=new ArrayList<>();
    }
    public void agregarListaTareas(ArrayList listaTareas){
        this.listaTareas=listaTareas;
        despachador.setListaTareasAEjecutar(this.listaTareas);
    }

    public Despachador getDespachador() {
        return despachador;
    }

    public void setDespachador(Despachador despachador) {
        this.despachador = despachador;
    }
}
