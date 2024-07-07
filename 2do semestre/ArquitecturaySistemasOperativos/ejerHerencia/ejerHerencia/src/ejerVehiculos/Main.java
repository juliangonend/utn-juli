package ejerVehiculos;
import java.util.ArrayList;
import java.util.List;
public class Main {

    public static void main(String[] args) {
        List<Vehiculo>vehiculos= new ArrayList<>();
        vehiculos.add(new Coche("Rosa",4, 1200,140));
        vehiculos.add(new Camioneta("Azul",4,3000,230.5,500)) ;
        vehiculos.add(new Bicicleta("Violeta",2,"deportiva"));
        vehiculos.add(new Motocicleta("Rojo",2,"urbana",240.2,1200));
        vehiculos.add(new Motocicleta("Amarilla",0,"deportiva",400,3000));
        System.out.println("Todos los vehículos:");
        catalogar(vehiculos);

        // Mostrar vehículos con 0 ruedas
        System.out.println("\nVehículos con 0 ruedas:");
        catalogar(vehiculos, 0);

        // Mostrar vehículos con 2 ruedas
        System.out.println("\nVehículos con 2 ruedas:");
        catalogar(vehiculos, 2);

        // Mostrar vehículos con 4 ruedas
        System.out.println("\nVehículos con 4 ruedas:");
        catalogar(vehiculos, 4);
        }
    public static void catalogar(List<Vehiculo> vehiculos) {
        for (Vehiculo vehiculo : vehiculos) {
            vehiculo.catalogar();
        }
    }

    public static void catalogar(List<Vehiculo> vehiculos, int ruedas) {
        for (Vehiculo vehiculo : vehiculos) {
            if (vehiculo.getRuedas() == ruedas) {
                vehiculo.catalogar();
            }
        }
    }

    }

