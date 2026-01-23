package com.elias.editorial.repository;


import com.elias.editorial.model.Prestamo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

public interface PrestamoRepository  extends JpaRepository<Prestamo, Long> {
}
