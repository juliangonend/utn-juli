import Classes.Rogue;
import Classes.Warrior;
import Classes.Wizard;

public class Main {
    public static void main(String[] args) {
        Wizard wizard= new Wizard("Maguito",2);
        Rogue rogue=new Rogue("El picarin",4);
        Warrior warrior = new Warrior("guerrero",2);

        rogue.deffend(wizard.attack());
        wizard.deffend(rogue.attack());
        warrior.deffend(wizard.attack());
        rogue.deffend(warrior.attack());
        wizard.deffend(warrior.attack());
        warrior.deffend(rogue.attack());

    }
}