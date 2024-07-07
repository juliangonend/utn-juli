package ExcepsionesAritmeticas;

import java.sql.SQLOutput;

public class PersonaClase {
    int edad;
    String nombre;

    public PersonaClase(int edad, String nombre){
        this.edad=edad;
        this.nombre=nombre;
    }
    public void getDatos(){
        System.out.println("Nombre : "+ nombre+ " edad : "+ edad);
    }


}
