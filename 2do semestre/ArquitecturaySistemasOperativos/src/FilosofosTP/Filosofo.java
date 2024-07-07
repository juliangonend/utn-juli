package FilosofosTP;

import java.util.Random;
import java.util.concurrent.Semaphore;

public class Filosofo extends Thread {
    String name;
    Semaphore semaphore = new Semaphore(1);

    public Filosofo(String name) {
        this.name = name;
    }
    public boolean habilitarCubiertos() {
        if (semaphore.tryAcquire()) {
            return true;
        } else {
            System.out.println("Los cubiertos están ocupados para Filosofo " + this.name);
            return false;
        }
    }

    public synchronized void run() {
        while (true) {
            if (habilitarCubiertos()) {
                try {
                    System.out.println("Filosofo " + this.name + " comiendo ");
                    Random random = new Random();
                    int numRandom = (random.nextInt(5) + 1) * 1000;
                    Thread.sleep(numRandom);
                    System.out.println("Filosofo " + this.name + " está pensando ");
                    semaphore.release();
                } catch (InterruptedException e) {
                    // Handle the InterruptedException, if needed
                    e.printStackTrace();
                }
            }
        }
    }
}