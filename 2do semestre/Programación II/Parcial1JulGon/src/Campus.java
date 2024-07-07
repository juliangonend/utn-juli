import java.util.ArrayList;

public class Campus {
    private int fase;
    private String date;
    private String hour;
    private ArrayList<Proof> listProof;
    private ArrayList<Instalation> listInstalation;


    public Campus(int fase, String date, String hour) {
        this.fase = fase;
        this.date = date;
        this.hour = hour;
        this.listInstalation= new ArrayList<>();
        this.listProof= new ArrayList<>();
    }

    public int getFase() {
        return fase;
    }

    public void setFase(int fase) {
        this.fase = fase;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getHour() {
        return hour;
    }

    public void setHour(String hour) {
        this.hour = hour;
    }

    public ArrayList<Proof> getListProof() {
        return listProof;
    }

    public void setListProof(ArrayList<Proof> listProof) {
        this.listProof = listProof;
    }

    public ArrayList<Instalation> getListInstalation() {
        return listInstalation;
    }

    public void setListInstalation(ArrayList<Instalation> listInstalation) {
        this.listInstalation = listInstalation;
    }

    public void addInstaltion(Instalation instalation){
        this.listInstalation.add(instalation);
        instalation.setCampus(this);
    }
    public void addProof(Proof proof){
        this.listProof.add(proof);
        proof.setCampus();
    }

}
