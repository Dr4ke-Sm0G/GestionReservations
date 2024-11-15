package com.rsv.beans;

public class Reservation {
    private String type;    // Type d'appartement (T1, T2, T3)
    private double prix;
    private String[] options; // Options sélectionnées (proche de la mer, piscine, jardin)

    // Constructeur sans argument
    public Reservation() {}

    // Getters et Setters
    public String getType() { return type; }
    public void setType(String type) { this.type = type; }

    public double getPrix() { return prix; }
    public void setPrix(double prix) { this.prix = prix; }

    public String[] getOptions() { return options; }
    public void setOptions(String[] options) { this.options = options; }
}
