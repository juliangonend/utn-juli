package RelacionesPersonas;

import org.w3c.dom.ls.LSOutput;

import java.util.ArrayList;

public class Persona {
    protected  String nombre;
    protected  int edad;
    protected  EstadoCivil estadoCivil;
    protected ArrayList<Persona> hijos= new ArrayList<>();
    protected Persona []  padres=  new Persona[2];                                                                      ;

    public Persona() {
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public EstadoCivil getEstadoCivil() {
        return estadoCivil;
    }

    public void setEstadoCivil(EstadoCivil estadoCivil) {
        this.estadoCivil = estadoCivil;
    }

    public ArrayList<Persona> getHijos() {
        return hijos;
    }

    public void setHijos(ArrayList<Persona> hijos) {
        this.hijos = hijos;
    }

    public Persona[] getPadres() {
        return padres;
    }

    public void setPadres(Persona[] padres) {
        this.padres = padres;
    }

    public Persona(String nombre, int edad, EstadoCivil estadoCivil) {
        this.nombre = nombre;
        this.edad = edad;
        this.estadoCivil = estadoCivil;
    }
    public void agregarHIjos(Persona hijo){
        hijos.add(hijo);

    }
    public  void agregarPadre(Persona padre){
        for (int i = 0; i < 2; i++) {
            if (padres[i]== null){
                padres[i]=padre;
            }
        }
    }
    public void comer(){
        System.out.println("Estoy comiendo");
    }
    public int caminar(String lugar, int km){
        int pasos;
        pasos=km/1000;
        System.out.println("Hoy camine por "+    lugar );
        return pasos ;
    }
}
