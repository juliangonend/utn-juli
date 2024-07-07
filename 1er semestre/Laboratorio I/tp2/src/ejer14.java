import java.util.Scanner;

public class ejer14 {
    public static void main( String []args ){
        Scanner src= new Scanner(System.in);
        float precioUnidad;
        int porductosVendidos;
        double porcenIva;
        System.out.println("Ingrese el precio por unidad del producto;" );
        precioUnidad=src.nextFloat();
        System.out.println("Ingrese la cantidad de productos vendidos");
        porductosVendidos=src.nextInt();
        System.out.println("Ingrese el porcentaja de Iva");
        porcenIva=src.nextDouble();
        double Iva=porcenIva/100;
        double precioSinIva=precioUnidad*porductosVendidos;
        double precioConIva= precioSinIva + (precioSinIva*Iva);
        System.out.println("El precio final sin IVA es de : $"+ precioSinIva);
        System.out.println("El precio final con IVA es de : $"+ precioConIva);
    }
}
