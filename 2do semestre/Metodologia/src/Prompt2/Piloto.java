package Prompt2;

public class Piloto extends Persona {
    private double salario;
    private TipoAvion tipoAvionAutorizado;

    public Piloto(String dni, String nombre, String direccion, String telefono, double salario, TipoAvion tipoAvionAutorizado) {
        super(dni, nombre, direccion, telefono);
        this.salario = salario;
        this.tipoAvionAutorizado = tipoAvionAutorizado;
    }

    public double getSalario() {
        return salario;
    }

    public void setSalario(double salario) {
        this.salario = salario;
    }

    public TipoAvion getTipoAvionAutorizado() {
        return tipoAvionAutorizado;
    }

    public void setTipoAvionAutorizado(TipoAvion tipoAvionAutorizado) {
        this.tipoAvionAutorizado = tipoAvionAutorizado;
    }
}

