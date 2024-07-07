package Prompt2;

import java.util.Date;

public class Avion {
    private int id;
    private String numeroMatricula;
    private Hangar hangar;
    private Date fechaAdquisicion;
    private Persona propietario;

    public Avion(int id, String numeroMatricula, Hangar hangar, Date fechaAdquisicion, Persona propietario) {
        this.id = id;
        this.numeroMatricula = numeroMatricula;
        this.hangar = hangar;
        this.fechaAdquisicion = fechaAdquisicion;
        this.propietario = propietario;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNumeroMatricula() {
        return numeroMatricula;
    }

    public void setNumeroMatricula(String numeroMatricula) {
        this.numeroMatricula = numeroMatricula;
    }

    public Hangar getHangar() {
        return hangar;
    }

    public void setHangar(Hangar hangar) {
        this.hangar = hangar;
    }

    public Date getFechaAdquisicion() {
        return fechaAdquisicion;
    }

    public void setFechaAdquisicion(Date fechaAdquisicion) {
        this.fechaAdquisicion = fechaAdquisicion;
    }

    public Persona getPropietario() {
        return propietario;
    }

    public void setPropietario(Persona propietario) {
        this.propietario = propietario;
    }
}
