package Classes;

import Interfaces.Character;

public class Rogue extends BaseCharacter implements Character {
    public Rogue(String name, int level) {
        super(name, level);
        this.percantageOfLife=400;
    }

    @Override
    public int attack() {
        int rivalDamega = 12 * level;
        return rivalDamega;

    }

    @Override
    public void deffend(int damega) {
        this.percantageOfLife-=damega;
        System.out.println("El nivel del picaro vida a bajado a : "+ this.percantageOfLife);

    }
}
