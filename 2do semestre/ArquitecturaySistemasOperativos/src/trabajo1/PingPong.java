package trabajo1;

public class PingPong extends  Thread{
    private String word;
    private int delay;
    public PingPong(String queDecir, int cadaCuantoMs){
        word= queDecir;
        delay=cadaCuantoMs;
    };

    @Override
    public void run() {
        while(true){
            System.out.print(word+ " ");
            try{
                sleep(delay);
            }catch (InterruptedException e){return;}
        }
    }
    public static  void main(String []args){
        PingPong t1= new PingPong("PING",33);
        PingPong t2= new PingPong("PONG",10);

        t1.start();
        t2.start();
        try{sleep(5000);
        }catch (InterruptedException e){};

        t1.stop();
        t2.stop();
    }
}
