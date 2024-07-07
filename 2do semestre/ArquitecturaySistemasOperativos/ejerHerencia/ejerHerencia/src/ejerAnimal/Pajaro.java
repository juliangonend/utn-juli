package ejerAnimal;

public class Pajaro extends Animal{
    private String especie;

    public Pajaro(String nombre, int edad,String genero,String especie) {
        super(nombre, edad, genero);
        this.especie = especie;
    }

    public String getEspecie() {
        return especie;
    }

    public void setEspecie(String especie) {
        this.especie = especie;
    }
    @Override
    public void informacion(){
        System.out.println("El pajaro se llama: "+getNombre()+", tiene: "+getEdad()+" años, es: "+getGenero()+", es de la especie: "+especie);
    }
    @Override
    public void hacerSonido(){
        System.out.println("El pajaro canta");
    }
}
