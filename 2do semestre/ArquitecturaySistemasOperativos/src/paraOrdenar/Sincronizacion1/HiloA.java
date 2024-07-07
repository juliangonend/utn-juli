package Sincronizacion1;

public class HiloA extends Thread {
    private Contador contador;
    public HiloA(String n , Contador c ){
        setName(n);
        contador=c;
    }
    public void run(){
        for (int i = 0; i <300 ; i++) {
            contador.incrementar();
        }
        System.out.println(getName() + " contador vale "+ contador.getValor());
    }
}
