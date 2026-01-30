package com.elias.editorial.service;

import com.elias.editorial.dto.CursoDTO;
import com.elias.editorial.model.Asignatura;
import com.elias.editorial.model.Curso;

import java.util.List;

public interface AsignaturaService {
    Asignatura guardarDesdeDTO (CursoDTO dto);
    List<Asignatura> listarTodos();
    Asignatura buscarPorId (Long id);
    Curso actualizar (Long id , Curso curso );
    void eliminar (Long id );
}
