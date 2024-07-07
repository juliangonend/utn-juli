public class manipula_cadenas {
    public static void main(String[]args){
        String frase="Hoy estoy aprendiendo a programar en Java";
        String frase_resumen= frase.substring(10,21);
        if (frase_resumen.equals("aprendiendo")){
            System.out.println("aprendiendo");

        }else{
            System.out.println("no aprende");
        }
        System.out.println((frase_resumen));
    }
}
