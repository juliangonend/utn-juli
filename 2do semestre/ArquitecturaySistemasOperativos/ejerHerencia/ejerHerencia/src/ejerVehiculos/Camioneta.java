package ejerVehiculos;

public class Camioneta extends Coche{
    private double carga;

    public Camioneta(String color, int ruedas, int cilindrada, double velocidad, double carga) {
        super(color, ruedas, cilindrada, velocidad);
        this.carga = carga;

    }

    public double getCarga() {
        return carga;
    }

    public void setCarga(double carga) {
        this.carga = carga;
    }
    @Override
    public void catalogar() {
        System.out.println("Camioneta - Color: " + getColor() + ", Ruedas: " + getRuedas() + ", Carga: " + carga);
    }
}
