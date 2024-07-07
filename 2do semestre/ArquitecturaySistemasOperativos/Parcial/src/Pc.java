import java.util.ArrayList;

public class  Pc{
    private Planificador planificador;
    private ArrayList<Tarea> listaTareas;

    public Pc(Planificador planificador) {
        this.planificador = planificador;
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
    public void agregarTarea(Tarea tarea){
        listaTareas.add(tarea);
    }

}
