package Prompt1;
public class Main {
    public static void main(String[] args) {
        // Crear un país
        Pais pais = new Pais("País Ejemplo", "Capital Ejemplo", "Continente Ejemplo");

        // Crear provincias
        Provincia provincia1 = new Provincia("Provincia 1", "Capital Provincia 1", pais);
        Provincia provincia2 = new Provincia("Provincia 2", "Capital Provincia 2", pais);

        // Agregar provincias al país
        pais.addProvincia(provincia1);
        pais.addProvincia(provincia2);

        // Crear ciudades
        Ciudad ciudad1 = new Ciudad("Ciudad 1", 500000, 1000, 2000, 3000, 4000, 5000, 15000);
        Ciudad ciudad2 = new Ciudad("Ciudad 2", 300000, 2000, 3000, 4000, 5000, 6000, 20000);
        Ciudad ciudad3 = new Ciudad("Ciudad 3", 100000, 500, 1000, 1500, 2000, 2500, 6000);

        // Agregar ciudades a las provincias
        provincia1.addCiudad(ciudad1);
        provincia1.addCiudad(ciudad2);
        provincia2.addCiudad(ciudad3);

        // Verificar y mostrar ciudades en déficit
        for (Provincia provincia : pais.getProvincias()) {
            for (Ciudad ciudad : provincia.getCiudades()) {
                if (ciudad.isInDeficit()) {
                    System.out.println("La ciudad " + ciudad.getNombre() + " está en déficit.");
                }
            }
            if (provincia.isInDeficit()) {
                System.out.println("La provincia " + provincia.getNombre() + " tiene más de la mitad de sus ciudades en déficit.");
            }
        }
    }
}
