package tp3.Cursos;

import java.util.ArrayList;

public class CronogramaCursos  {
    private  int turno;
    private ArrayList<Curso>listaCurso ;

    public CronogramaCursos() {
        listaCurso= new ArrayList<>();
    }

    public CronogramaCursos(int turno) {
        this.turno = turno;
        listaCurso = new ArrayList<>();
    }

    public void setTurno(int turno) {
        this.turno = turno;
    }

    public void setListaCurso(ArrayList<Curso> listaCurso) {
        this.listaCurso = listaCurso;
    }

    public int getTurno() {
        return turno;
    }

    public ArrayList<Curso> getListaCurso() {
        return listaCurso;
    }
    public void agregarCurso(Curso c ){
        listaCurso.add(c);
    }
    public void sacarCurso(Curso c ){
        listaCurso.remove(c);
    }
}
