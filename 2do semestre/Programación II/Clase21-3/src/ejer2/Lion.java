package ejer2;

public class Lion extends Feline{
    public Lion(String photo, String food, String location, String size) {
        super(photo, food, location, size);
    }

    @Override
    public void doingSound() {
        System.out.println("Ruarr");
    }

    @Override
    public  void eat() {
        System.out.println("El leon come "+ food);
    }
}
