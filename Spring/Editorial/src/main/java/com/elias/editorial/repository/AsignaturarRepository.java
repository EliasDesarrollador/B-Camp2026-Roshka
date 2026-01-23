package com.elias.editorial.repository;

import com.elias.editorial.model.Asignatura;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

public interface AsignaturarRepository extends JpaRepository<Asignatura , Long> {
}
