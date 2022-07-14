public class Fighter {
    public String name;
    public Integer health;
    public Integer damagePerAttack;

    public Fighter(String name, Integer health, Integer damagePerAttack) {
        this.name = name;
        this.health = health;
        this.damagePerAttack = damagePerAttack;
    }

    public static String attack(Fighter first, Fighter second){
        String winner;

        while(first.health > 0 || second.health > 0){
            if(second.health > 0){
                second.health -= first.damagePerAttack;
            }
            if(second.health <= 0){
                winner = first.name;
                break;
            }
            if(first.health > 0){
                first.health -= second.damagePerAttack;
            }
            if(first.health <= 0){
                winner = second.name;
                break;
            }

        }
        return winner;
    }
}