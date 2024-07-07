package ExcepsionesAritmeticas;

public class tryCatch {
    public static void main(String[]args) throws Exception{
        try {
            System.out.println(Division(9,4));
        }catch (ArithmeticException a){

            System.out.println("Error al dividir por cero");
            System.out.println("Error"+ a.getMessage());
            System.out.println("Error "+ a);
            System.out.println("Error " +
                    ""+ a.fillInStackTrace());
        }finally {
        }
    }
    public static int Division(int n,int n2)throws  Exception {
        if (n < n2) {
            throw  new Exception("El numero 2 es mas grande que el 1ro");
        } else if (n%n2!=0) {
            throw  new Exception("La division no devuelve un entero");
        } else{
            return n/n2;
        }
    }
}
