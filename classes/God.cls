/**
 * Created by Andrii_Matviienko on 7/10/2022.
 */

public with sharing class God {
    public static Man createMan(String name){
        Man newMan = new Man(name);
        return newMan;
    }

    public static Woman createWoman(String name){
        Woman newWoman = new Woman(name);
        return newWoman;
    }
}