package com.umariana.mundo;

import java.io.Serializable;

public class Perro implements Serializable{
    
    // Atributos de la clase Perro
    private String nombre;
    private String raza;
    private String imagen;
    private int puntos;
    private int edad;
    
    
    // Constructor vacio
    public Perro() {
    }
    
    // Constructor con parametros
    public Perro(String nombre, String raza, String imagen, int puntos, int edad) {
        this.nombre = nombre;
        this.raza = raza;
        this.imagen = imagen;
        this.puntos = puntos;
        this.edad = edad;
    }
 
    // Getter and Setter
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getRaza() {
        return raza;
    }

    public void setRaza(String raza) {
        this.raza = raza;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public int getPuntos() {
        return puntos;
    }

    public void setPuntos(int puntos) {
        this.puntos = puntos;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }   
}
