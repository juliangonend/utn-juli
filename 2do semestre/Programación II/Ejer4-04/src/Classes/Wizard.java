package Classes;

import Interfaces.Character;

public class Wizard extends BaseCharacter implements Character {
    public Wizard(String name, int level  ) {
        super(name,level);
        this.percantageOfLife=300;

    }

    @Override
    public int attack() {
        int rivalDamega = 16 * level;
        return rivalDamega;

    }

    @Override
    public void deffend(int damega) {
        this.percantageOfLife-=damega;
        System.out.println("El nivel de vida del mago a reducido a : "+ this.percantageOfLife);

    }
}
