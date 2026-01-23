package com.elias.editorial.model;


import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "asignatura" , schema = "prestamo_libro_ej4")
public class Asignatura {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "cod_asignatura")
    private Long Id;

    @Column(name = "nom_asignatura", nullable = false , length = 100)
    private String nombre;

}
