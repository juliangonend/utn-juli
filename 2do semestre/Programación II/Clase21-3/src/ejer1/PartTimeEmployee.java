package ejer1;

class PartTimeEmployee extends Employee{
    private int hoursWorked;
    private float hourlyRate;

    public PartTimeEmployee(int id, String name, float salary, int hoursWorked, float hourlyRate) {
        super(id, name, salary);
        this.hoursWorked = hoursWorked;
        this.hourlyRate = hourlyRate;
    }

    public int getHoursWorked() {
        return hoursWorked;
    }

    public void setHoursWorked(int hoursWorked) {
        this.hoursWorked = hoursWorked;
    }

    public float getHourlyRate() {
        return hourlyRate;
    }

    public void setHourlyRate(float hourlyRate) {
        this.hourlyRate = hourlyRate;
    }

    @Override
    public float calculateSalary() {
        return super.calculateSalary()+ hoursWorked*hourlyRate;
    }
}
