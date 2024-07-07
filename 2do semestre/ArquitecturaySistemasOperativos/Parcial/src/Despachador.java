import java.util.ArrayList;

public class Despachador {
    private final  int quantum=2;
    private ArrayList<Tarea> listaTareasAEjecutar;

    public Despachador() {

    }

    public int getQuantum() {
        return quantum;
    }

    public ArrayList<Tarea> getListaTareasAEjecutar() {
        return listaTareasAEjecutar;
    }

    public void setListaTareasAEjecutar(ArrayList<Tarea> listaTareasAEjecutar) {
        this.listaTareasAEjecutar = listaTareasAEjecutar;
    }

    public void ejecutarTareas(){
      
        do{
            for (int i = 0; i < this.getListaTareasAEjecutar().toArray().length; i++) {
               Tarea tarea= this.listaTareasAEjecutar.get(i);
               int ejecusion=tarea.getDuracion();
                System.out.println("Ejecutando la Tarea "+ tarea.getNombre() +" con un tiempo restante  de "+ ejecusion);
                if (ejecusion<=2){
                    tarea.setDuracion(0);
                    System.out.println("Finalizando tarea "+ tarea.getNombre());
                    this.listaTareasAEjecutar.remove(i);
                    if(ejecusion==1 && this.listaTareasAEjecutar.toArray().length>i){
                        this.listaTareasAEjecutar.get(i).setDuracion(this.quantum-1);
                        System.out.println("ocupando sobrante en "+ this.listaTareasAEjecutar.get(i).getNombre());
                    }

                }else{
                    tarea.setDuracion(ejecusion-quantum);
                }


            }
        }while(this.getListaTareasAEjecutar().toArray().length!=0);
    }
}
