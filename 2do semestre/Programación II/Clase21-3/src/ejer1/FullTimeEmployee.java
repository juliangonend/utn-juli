package ejer1;

public class FullTimeEmployee extends Employee{
    private float yearBonus;

    public FullTimeEmployee(int id, String name, float salary, float yearBonus) {
        super(id, name, salary);
        this.yearBonus = yearBonus;
    }

    public float getYearBonus() {
        return yearBonus;
    }

    public void setYearBonus(float yearBonus) {
        this.yearBonus = yearBonus;
    }



    @Override
    public float calculateSalary(float salary) {
        return super.calculateSalary()+ yearBonus;
    }
}
