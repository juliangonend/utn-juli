package ejer2;

public abstract class Feline extends Animal {
    public Feline(String photo, String food, String location, String size) {
        super(photo, food, location, size);
    }

    @Override
    public void roar() {
        System.out.println("Ruarrr ");
    }




}
