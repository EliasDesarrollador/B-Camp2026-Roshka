package com.elias.editorial.repository;

import com.elias.editorial.model.Curso;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CursoRepository extends JpaRepository<Curso , Long > {
}
