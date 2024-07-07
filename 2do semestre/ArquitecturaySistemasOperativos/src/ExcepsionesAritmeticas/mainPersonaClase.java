package ExcepsionesAritmeticas;

public class mainPersonaClase  {
    public static  void main(String []args) {
        PersonaClase persona1= new PersonaClase(12,"Juan");
        persona1=null;
        try{
            persona1.getDatos();
        }catch (NullPointerException a){
            System.out.println("Error : ");
        }
    }
}
