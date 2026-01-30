package com.elias.editorial.service;

import com.elias.editorial.dto.ColegioDTO;
import com.elias.editorial.dto.CursoDTO;
import com.elias.editorial.model.Colegio;

import java.util.List;

public interface CursoService {
    Curso guardarDesdeDTO (CursoDTO dto);
    List<Curso> listarTodos();
    Curso buscarPorId (Long id);
    Curso actualizar (Long id , Curso curso );
    void eliminar (Long id );
}

