package ejer2;

public class Tiger extends Feline{
    public Tiger(String photo, String food, String location, String size) {
        super(photo, food, location, size);
    }

    @Override
    public void doingSound() {
        System.out.println("Ruarrrr ");
    }

    @Override
    public void eat() {
        System.out.println("El Tigre come mamiferos");
    }

    @Override
    public void roar() {
        super.roar();
    }
}
