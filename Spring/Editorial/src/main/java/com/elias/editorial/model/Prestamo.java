package com.elias.editorial.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import jakarta.persistence.*;
import lombok.Data;
import lombok.ToString;

import java.time.LocalDate;

@Data
@Entity
@Table(name = "prestamo" , schema = "prestamo_libro_ej4")
public class Prestamo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name ="cod_prestamo")
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "cod_profesor", nullable = false)
    @ToString.Exclude
    private Profesor profesor;


    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "cod_libro", nullable = false)
    @ToString.Exclude
    private Libro libro;


    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "cod_asignatura", nullable = false)
    @ToString.Exclude
    private  Asignatura asignatura;


    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "cod_curso", nullable = false)
    @ToString.Exclude
    private Curso curso;

    @JsonFormat(pattern = "yyy-MM-dd")
    @Column(name = "fecha_prestamo" , nullable = false)
    private LocalDate fechaPrestamo;
}
