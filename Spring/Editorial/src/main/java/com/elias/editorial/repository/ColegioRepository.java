package com.elias.editorial.repository;

import com.elias.editorial.model.Colegio;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

public interface ColegioRepository extends JpaRepository<Colegio, Long> {
}
