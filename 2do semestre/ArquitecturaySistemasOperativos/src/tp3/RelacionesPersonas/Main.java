package RelacionesPersonas;

public class Main {
    public static  void mainn(String []args){
        Persona p1= new Persona("Pepito", 14,EstadoCivil.SOLTERO);
        Persona p0= new Persona("Maria",40, EstadoCivil.VIUDO);

        p0.agregarHIjos(p1);
        p1.agregarPadre(p0);
        System.out.println("Yo soy "+ p0.getNombre()+" y mi hijo es "+ p0.getHijos().get(0).getNombre() );
        System.out.println("Yo soy "+ p1.getNombre()+" y mi mama es "+ p1.getPadres()[0].getNombre() );

    }
}
