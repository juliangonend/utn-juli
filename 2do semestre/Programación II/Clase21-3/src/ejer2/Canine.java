package ejer2;

public abstract class Canine extends Animal{
    public Canine(String photo, String food, String location, String size) {
        super(photo, food, location, size);
    }
    public void rugir(){
        System.out.println("Wau wau ");
    }
}
