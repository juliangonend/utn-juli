import java.util.Random;

public class Athlete extends Person implements Contract{
    private  double size;
    private int age;
    private double weight;

    public Athlete(int dni, String name, double size, int age, double weight) {
        super(dni, name);
        this.size = size;
        this.age = age;
        this.weight = weight;
    }

    public double getSize() {
        return size;
    }

    public void setSize(double size) {
        this.size = size;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    @Override
    public double calculateIMC() {
        double imc = this.getWeight()/(Math.pow(this.getSize(),2));

        return imc;
    }

    @Override
    public boolean isExtraWeight() {
        double imc = calculateIMC();
        if (imc>=25){
            return true;
        }else{
            return  false;
        }
    }

    @Override
    public double takePulses() {
        Random random = new Random();
        double pulses = random.nextDouble(50)+60;
        return pulses;
    }
}
