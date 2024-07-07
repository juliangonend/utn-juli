package Prompt2;

import java.util.Date;

public class Main {
    public static void main(String[] args) {
        // Crear tipo de avión
        TipoAvion tipoAvion = new TipoAvion("Boeing 747", 660, 183500);

        // Crear hangar
        Hangar hangar = new Hangar(1, 50, "Sector A");

        // Crear propietario (persona)
        Persona propietario = new Persona("12345678A", "Juan Pérez", "Calle Falsa 123", "555-1234");

        // Crear avión
        Avion avion = new Avion(1, "XYZ123", hangar, new Date(), propietario);

        // Crear mecánico
        Mecanico mecanico = new Mecanico("87654321B", "Carlos López", "Avenida Siempre Viva 456", "555-5678", 35000, "Nocturno", tipoAvion);

        // Crear piloto
        Piloto piloto = new Piloto("11223344C", "Ana Martínez", "Plaza Mayor 789", "555-9876", 45000, tipoAvion);

        // Crear servicio
        Servicio servicio = new Servicio(new Date(), "Carga de combustible");

        // Mostrar información
        System.out.println("Avión ID: " + avion.getId());
        System.out.println("Matrícula: " + avion.getNumeroMatricula());
        System.out.println("Propietario: " + avion.getPropietario().getNombre());
        System.out.println("Mecánico: " + mecanico.getNombre() + ", Turno: " + mecanico.getTurno());
        System.out.println("Piloto: " + piloto.getNombre() + ", Tipo de Avión Autorizado: " + piloto.getTipoAvionAutorizado().getModelo());
        System.out.println("Servicio: " + servicio.getTipoDeCarga() + " en la fecha: " + servicio.getFecha());
    }
}
