package ejer2;

public class Dog extends Canine{
    public Dog(String photo, String food, String location, String size) {
        super(photo, food, location, size);
    }

    @Override
    public void doingSound() {
        System.out.println("Gua Gua ");
    }

    @Override
    public void eat() {
        System.out.println("El perro come alimento balanceado");
    }
    public void vaccinate(){
        System.out.println("Se tiene que vacunar al perro 3 veces al anio");
    }
    public void takeAWalk(){
        System.out.println("Saliendo a dar un paseo ");
    }
}
