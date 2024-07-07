package ejerVehiculos;

public abstract class Vehiculo {
    private String color;
    private int ruedas;

    public Vehiculo(String color1, int ruedas1) {
        this.color=color1;
        this.ruedas= ruedas1;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color1) {
        this.color = color1;
    }

    public int getRuedas() {
        return ruedas;
    }

    public void setRuedas(int ruedas1) {
        this.ruedas = ruedas1;
    }
    public abstract void catalogar();

}
