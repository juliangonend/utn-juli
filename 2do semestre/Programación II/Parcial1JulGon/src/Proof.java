import java.util.ArrayList;

public class Proof {
    private int code;
    private String tittle;
    private Campus campus;

    private ArrayList<Athlete> athleteList;

    public Proof(int code, String tittle) {
        this.code = code;
        this.tittle = tittle;
        this.athleteList= new ArrayList<>();
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getTittle() {
        return tittle;
    }

    public void setTittle(String tittle) {
        this.tittle = tittle;
    }

    public ArrayList<Athlete> getAthleteList() {
        return athleteList;
    }

    public void setAthleteList(ArrayList<Athlete> athleteList) {
        this.athleteList = athleteList;
    }
    public void addAthleteToList(Athlete athlete){
        this.athleteList.add(athlete);
    }

    public Campus getCampus() {
        return campus;
    }

    public void setCampus() {
        this.campus = campus;
    }
}
