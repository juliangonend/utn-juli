package Classes;

import Interfaces.Character;

public class Warrior extends BaseCharacter implements Character {
    public Warrior(String name, int level) {

        super(name, level);
        this.percantageOfLife=600;
    }

    @Override
    public int attack() {
        int rivalDamega = 10 * level;
        return rivalDamega;
    }

    @Override
    public void deffend(int damega) {
        this.percantageOfLife-=damega;
        System.out.println("El nivel del guerrero a bajado a : "+ this.percantageOfLife);

    }
}
