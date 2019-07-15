package model;

public class Salle {

    int numeroDeLaSalle;
    int capacite;
    boolean disponible;

    public Salle(int numeroDeLaSalle, int capacite) {

        this.numeroDeLaSalle = numeroDeLaSalle;
        this.capacite = capacite;
        this.disponible = true;
    }
}
