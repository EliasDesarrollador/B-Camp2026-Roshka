package com.elias.editorial.model;


import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table (name = "libro" , schema = "prestamo_libro_ej4")
public class Libro   {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "cod_libro")
    private Long  id;

    @Column(nullable = false, length = 50)
    private  String titulo;

    @Column(name = "editorial", length = 100)
    private String editorial;

    }