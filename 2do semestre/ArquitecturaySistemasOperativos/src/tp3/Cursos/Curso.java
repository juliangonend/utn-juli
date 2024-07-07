package tp3.Cursos;

public class Curso {
    private String titulo;
    private  int turno;

    public Curso() {
    }

    public Curso(String titulo, int turno) {
        this.titulo = titulo;
        this.turno = turno;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public int getTurno() {
        return turno;
    }

    public void setTurno(int turno) {
        this.turno = turno;
    }
}
