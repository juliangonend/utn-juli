package Classes;

import Interfaces.Character;

public abstract class BaseCharacter implements Character {
    protected String name;
    protected int level;
    protected int percantageOfLife;

    public BaseCharacter(String name, int level) {
        this.name = name;
        this.level = level;
        this.percantageOfLife=0;
    }

    @Override
    public int attack() {
        return 0;
    }

    @Override
    public void deffend(int damega) {

    }
}
