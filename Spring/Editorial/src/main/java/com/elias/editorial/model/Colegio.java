package com.elias.editorial.model;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table (name = "colegio" , schema = "prestamo_libro_ej4")
public class Colegio {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name =  "cod_colegio ")
    private Long id;

    @Column( name = "nom_colegio" , nullable = false , length = 150 )
    private String nombre;
}


