#Author: Kyriel DOSSOU and Kevin TONDO

Feature: Réserver une salle

#  As a human resource, I want to schedule an interview for Julia
#  so she can meet a recruiter who can test her and is available at the same time than her

  En tant qu'élève, je peux réserver une salle dans une école, pour travailler
  avec mon groupe

  Scenario: La réservation de salle est possible
    Given Brian est un élève de l'école
    And son groupe de projet de 10 personnes est disponible aujourd'hui (pour travailler de 14h-16h)
    And l'école est ouverte
    And la salle A01 est une salle de l'école avec une capacité de 20 personnes
    And la salle est utilisée aujourd'hui par un autre groupe d'élève de 4 personnes à la même heure
    When Brian essaie de réserver la salle
    Then la salle A01 est réservée pour Brian et son groupe, aujourd'hui de 14h a 16h

  Scenario: La réservation de salle ne peut pas se faire si la salle ne peut pas contenir les élèves
    Given Brian est un élève de l'école
    And son groupe de projet de 14 personnes est disponible aujourd'hui (pour travailler de 14h-16h)
    And l'école est ouverte
    And la salle A01 est une salle de l'école avec une capacité de 10 personnes
    And la salle est libre
    When Brian essaie de réserver la salle
    Then la salle A01 ne peut pas être réservée, aujourd'hui de 14h a 16h car la capacité d'acceuil de la salle est inférieur au nombre d'élèves dans le groupe


  Scenario: La réservation de salle ne peut pas se faire si l'élève n'est pas de l'école
    Given Brian n'est pas un élève de l'école
    And son groupe de projet de 14 personnes est disponible aujourd'hui (pour travailler de 14h-16h)
    And l'école est ouverte
    And la salle A01 est une salle de l'école avec une capacité de 20 personnes
    And la salle est libre
    When Brian essaie de réserver la salle
    Then la salle A01 ne peut pas être réservée car il n'est pas de l'école

  Scenario: La réservation de salle ne peut pas se faire si la salle est indisponible
    Given Brian est un élève de l'école
    And son groupe de projet de 2 personnes est disponible aujourd'hui (pour travailler de 14h-16h)
    And l'école est ouverte
    And la salle A01 est une salle de l'école avec une capacité de 20 personnes
    And toutes les salles de l'école sont utilisées
    When Brian essaie de réserver la salle
    Then la salle A01 ne peut pas être réservée pour Brian et son groupe, aujourd'hui de 14h a 16h


  Scenario: La réservation de salle ne peut pas se faire si l'école est fermée
    Given Brian est un élève de l'école
    And son groupe de projet de 2 personnes est disponible aujourd'hui (pour travailler de 19h-21h)
    And l'école ferme a 19h
    And la salle A01 est une salle de l'école avec une capacité de 20 personnes
    And toutes les salles de l'école sont libres
    When Brian essaie de réserver la salle
    Then la salle A01 ne peut pas réservée pour Brian et son groupe, aujourd'hui de 14h a 16h



