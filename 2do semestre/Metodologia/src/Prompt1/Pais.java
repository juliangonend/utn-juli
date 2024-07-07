package Prompt1;

import java.util.ArrayList;
import java.util.List;

public class Pais {
    private String nombre;
    private String capital;
    private String continente;
    private List<Provincia> provincias;

    public Pais(String nombre, String capital, String continente) {
        this.nombre = nombre;
        this.capital = capital;
        this.continente = continente;
        this.provincias = new ArrayList<>();
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCapital() {
        return capital;
    }

    public void setCapital(String capital) {
        this.capital = capital;
    }

    public String getContinente() {
        return continente;
    }

    public void setContinente(String continente) {
        this.continente = continente;
    }

    public List<Provincia> getProvincias() {
        return provincias;
    }

    public void addProvincia(Provincia provincia) {
        provincias.add(provincia);
    }
}
