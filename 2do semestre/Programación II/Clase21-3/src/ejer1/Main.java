package ejer1;

// Press Shift twice to open the Search Everywhere dialog and type `show whitespaces`,
// then press Enter. You can now see whitespace characters in your code.
public class Main {
    public static void main(String[] args) {

        FullTimeEmployee e1= new FullTimeEmployee(1,"cinthia", 1500,700);
        System.out.println("El salario del empleado es "+ e1.getName()+ " es "+ e1.calculateSalary());

        PartTimeEmployee e2= new PartTimeEmployee(2,"Juan", 2000, 25, 500);
        System.out.println("El salario del empleado es "+ e2.getName()+ " es "+ e2.calculateSalary());
    }
}