package Prompt2;

public class Mecanico extends Persona {
    private double salario;
    private String turno;
    private TipoAvion tipoDeAvionAutorizado;

    public Mecanico(String dni, String nombre, String direccion, String telefono, double salario, String turno, TipoAvion tipoDeAvionAutorizado) {
        super(dni, nombre, direccion, telefono);
        this.salario = salario;
        this.turno = turno;
        this.tipoDeAvionAutorizado = tipoDeAvionAutorizado;
    }

    public double getSalario() {
        return salario;
    }

    public void setSalario(double salario) {
        this.salario = salario;
    }

    public String getTurno() {
        return turno;
    }

    public void setTurno(String turno) {
        this.turno = turno;
    }

    public TipoAvion getTipoDeAvionAutorizado() {
        return tipoDeAvionAutorizado;
    }

    public void setTipoDeAvionAutorizado(TipoAvion tipoDeAvionAutorizado) {
        this.tipoDeAvionAutorizado = tipoDeAvionAutorizado;
    }
}
