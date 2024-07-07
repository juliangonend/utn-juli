package ejer2;

public class Wolf extends  Canine{
    public Wolf(String photo, String food, String location, String size) {
        super(photo, food, location, size);
    }

    @Override
    public void doingSound() {
        System.out.println("Gua gua ");
    }

    @Override
    public void eat() {
        System.out.println("El lobo come mamiferos pequenios ");
    }
}
