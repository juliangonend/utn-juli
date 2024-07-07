package ejer2;

public class Cat  extends Feline{
    public Cat(String photo, String food, String location, String size) {
        super(photo, food, location, size);
    }

    @Override
    public void doingSound() {
        System.out.println("miau miau maiu");
    }

    @Override
    public void eat() {
        System.out.println("El gato come alimento balanciado");
    }

    @Override
    public void roar() {
        super.roar();
    }
    public  void vaccinate(){
        System.out.println("Se vacuna al gato ");
    }
}
