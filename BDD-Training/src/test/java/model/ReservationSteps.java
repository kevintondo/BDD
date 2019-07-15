package model;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

import java.lang.reflect.Array;

public class ReservationSteps {

    Student student;
    Ecole ecole;

    Groupe groupe;
    Salle salle;

    DemandeReservation demandeReservation;
    Reservation reservation;



    @Given("^Brian est un élève de l'école$")
    public void Brian_est_un_élève_de_lécole(){

        student = new Student("Brian", "ESGI");
    }


    @And("^son groupe de projet de (\\d+) personnes est disponible aujourd'hui \\(pour travailler de (\\d+)h-(\\d+)h\\)$")
    public void sonGroupeDeProjetDePersonnesEstDisponibleAujourdHuiPourTravaillerDeHH(int arg0, int arg1, int arg2) {

        groupe = new Groupe("Disponible", 14,16);
    }

    @And("^l'école est ouverte$")
    public void lÉcoleEstOuverte() {

        ecole = new Ecole("ouverte");
    }


    @And("^la salle A(\\d+) est une salle de l'école avec une capacité de (\\d+) personnes$")
    public void laSalleAEstUneSalleDeLÉcoleAvecUneCapacitéDePersonnes(int arg0, int arg1) {
        salle = new Salle(01, 20);
    }

    @And("^la salle est utilisée aujourd'hui par un autre groupe d'élève de (\\d+) personnes à la même heure$")
    public void laSalleEstUtiliséeAujourdHuiParUnAutreGroupeDÉlèveDePersonnesÀLaMêmeHeure(int arg0) {

        boolean inUse = this.salle.disponible;
    }

    @When("^Brian essaie de réserver la salle$")
    public void brianEssaieDeRéserverLaSalle() {

        demandeReservation = new DemandeReservation();
    }

    @Then("^la salle A(\\d+) est réservée pour Brian et son groupe, aujourd'hui de (\\d+)h a (\\d+)h$")
    public void laSalleAEstRéservéePourBrianEtSonGroupeAujourdHuiDeHAH(int arg0, int arg1, int arg2) {

        reservation = new Reservation();
    }
}
