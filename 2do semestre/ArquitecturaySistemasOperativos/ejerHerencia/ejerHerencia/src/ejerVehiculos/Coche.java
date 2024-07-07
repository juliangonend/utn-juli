package ejerVehiculos;

public class Coche extends Vehiculo {
    private  double velocidad;
    private int cilindrada;

    public Coche(String color, int ruedas, int cilindrada, double velocidad) {
        super(color, ruedas);
        this.cilindrada = cilindrada;
        this.velocidad= velocidad;

    }

    public int getCilindrada() {
        return cilindrada;
    }

    public void setCilindrada(int cilindrada) {
        this.cilindrada = cilindrada;
    }

    public double getVelocidad() {
        return velocidad;
    }

    public void setVelocidad(double velocidad) {
        this.velocidad = velocidad;
    }
    @Override
    public void catalogar() {
        System.out.println("Coche - Color: " + getColor() + ", Ruedas: " + getRuedas() + ", Cilindrada: " + cilindrada + ", Velocidad: " + velocidad);
    }
}
