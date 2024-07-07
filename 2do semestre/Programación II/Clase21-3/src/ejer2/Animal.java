package ejer2;

public abstract class Animal {
    protected String photo;
    protected String food;
    protected  String location;
    protected  String size;

    public Animal(String photo, String food, String location, String size) {
        this.photo = photo;
        this.food = food;
        this.location = location;
        this.size = size;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getFood() {
        return food;
    }

    public void setFood(String food) {
        this.food = food;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }
    public abstract void doingSound();
    public abstract  void eat();
    public void sleep(){
        System.out.println("El animal esta duermiendo");
    }
    public void roar(){};;
}
