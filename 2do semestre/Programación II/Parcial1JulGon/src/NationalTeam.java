import java.util.ArrayList;

public class NationalTeam {
    private String color;
    private String country;
    private ArrayList<Athlete> team;

    public NationalTeam(String color, String country) {
        this.color = color;
        this.country = country;
        this.team= new ArrayList<>();

    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public ArrayList<Athlete> getTeam() {
        return team;
    }

    public void setTeam(ArrayList<Athlete> team) {
        this.team = team;
    }
    public void addPlayer(Athlete athlete){
        this.team.add(athlete);
    }
    public void printTeamSize(){
        System.out.println("La altura de los atletas del equipo nacional "+ this.getCountry() + " es : ");
        for (Athlete athlete: team
             ) {
            System.out.println("La altura del jugador : "+ athlete.getName() + " es "+ athlete.getSize());

        }
    }
    public void printExtraWeight(){
        System.out.println(" El peso extra de cada jugador del equipo nacional de "+ this.getCountry()+ " es : ");
        for (Athlete athlete:team
             ) {
                if (athlete.isExtraWeight()){
                    double extraWeight= athlete.calculateIMC()-25;
                    System.out.println("El peso extra del atleta "+ athlete.getName() + " es "+ extraWeight);
                }else{
                    System.out.println("El atleta "+ athlete.getName()+ " no tiene sobrepeso");
                }
        }
    }
}
