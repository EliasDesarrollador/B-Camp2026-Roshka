package com.elias.editorial.model;


import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table( name = "profesor" , schema = "prestamo_libro_ej4")
public class Profesor {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    @Column(name = "nom_profesor" , nullable = false , length = 150)
    private String nombre;

    @ManyToOne(fetch = FetchType.LAZY ,  optional = false)
    @JoinColumn (name = "cod_colegio", nullable = false)
    private Colegio colegio;
}
