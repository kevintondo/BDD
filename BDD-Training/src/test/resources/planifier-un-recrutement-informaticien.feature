#Author: Kyriel DOSSOU and Kevin TONDO

Feature: Réserver une salle

#  As a human resource, I want to schedule an interview for Julia
#  so she can meet a recruiter who can test her and is available at the same time than her

  En tant qu'élève, je peux réserver une salle dans une école, pour travailler

  Scenario: La réservation de salle est possible
    Given Brian est un élève de école
    And l'école est ouverte
    And la salle A01 est une salle de l'école ayant une capacité de 10
    And la salle est utilisée aujourd'hui par 4 personnes à la même heure
    When Brian essaie de réserver la salle
    Then la salle A01 est réservée pour Brian, aujourd'hui de 14h a 16h

  Scenario: La réservation de salle ne peut pas se faire si la salle pleine
    Given Brian est un élève de l'école
    And l'école est ouverte
    And la salle A01 est une salle de l'école ayant une capacité de 10
    And la salle est utilisée aujourd'hui par 10 personnes à la même heure
    When Brian essaie de réserver la salle
    Then la salle A01 ne peut pas être réservée, car la capacité d'acceuil de la salle est complète.

  Scenario: La réservation de salle ne peut pas se faire si l'ecole est fermée
    Given Brian est un élève de l'école
    And l'école est fermée
    And la salle A01 est une salle de l'école ayant une capacité de 10
    And la salle est libre
    When Brian essaie de réserver la salle
    Then la salle A01 ne peut pas être réservée, car l'ecole est fermé.

  Scenario: La réservation de salle ne peut pas se faire si la personne n'est pas un élève de l'ecole
    Given Brian n'est pas un élève de l'école
    And l'école est ouverte
    And la salle A01 est une salle de l'école ayant une capacité de 10
    And la salle est libre
    When Brian essaie de réserver la salle
    Then la salle A01 ne peut pas être réservée, car Brian n'est pas un élève de l'école.

