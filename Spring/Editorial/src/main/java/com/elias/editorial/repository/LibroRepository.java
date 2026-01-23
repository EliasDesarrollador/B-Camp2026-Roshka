package com.elias.editorial.repository;


import com.elias.editorial.model.Libro;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


public interface LibroRepository extends JpaRepository<Libro, Long> {
}
