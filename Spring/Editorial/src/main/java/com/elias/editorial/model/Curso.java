package com.elias.editorial.model;


import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "curso" , schema = "prestamo_libro_ej4")
public class Curso {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "cod_curso")
    private Long id;

    @Column(name = "nom_curso", nullable = false, length = 50)
    private String nombre;

    @Column(length = 20 )
    private String  aula ;
}
