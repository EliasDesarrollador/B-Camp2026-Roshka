package com.elias.editorial.repository;


import com.elias.editorial.model.Profesor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

public interface    ProfesorRepository extends JpaRepository<Profesor, Long>  {
}
