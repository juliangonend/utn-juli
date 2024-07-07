package ejerVehiculos;

public class Motocicleta extends Bicicleta{
    private double velocidad;
    private int cilindrada;

    public Motocicleta(String color, int ruedas,String tipo,double velocidad, int cilindrada) {
        super(color, ruedas, tipo);
        this.velocidad=velocidad;
        this.cilindrada = cilindrada;
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
    public void catalogar(){
        System.out.println("Motocicleta - Color: "+getColor()+", Ruedas: "+getRuedas()+", Tipo: "+getTipo()+", Velocidad: "+velocidad+", Cilindrada: "+cilindrada);
    }
}
