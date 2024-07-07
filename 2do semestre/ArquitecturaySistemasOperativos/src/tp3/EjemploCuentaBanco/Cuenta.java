package tp3.Cursos.EjemploCuentaBanco;

public class Cuenta extends Thread {
    private double saldo;

    public Cuenta(double saldo) {
        this.saldo = saldo;
    }

    public double getSaldo() {
        return saldo;
    }

    public void setSaldo(double saldo) {
        this.saldo = saldo;
    }
    public void restar(int cantidad){
        saldo=saldo-cantidad;
    }
    public void retirarDinero(int cant,String nom){
        if (getSaldo()>=cant){
            System.out.println(nom + " SE VA A RETIRAR SALDO ACTUAL QUE ES "+ getSaldo());try{
                Thread.sleep(500);
            }catch (InterruptedException ex) {}
                restar(cant);
                System.out.println("(" + nom + " retira " + cant + "ACTUAL " + getSaldo());
            }else{

        }
    }
}
