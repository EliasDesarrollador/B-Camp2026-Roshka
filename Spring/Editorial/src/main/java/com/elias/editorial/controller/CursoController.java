package com.elias.editorial.controller;

import com.elias.editorial.dto.CursoDTO;
import com.elias.editorial.model.Curso;
import com.elias.editorial.service.CursoService;
import com.elias.editorial.repository.CursoRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/cursos")
public class CursoController {

    private final CursoService cursoService;

    public CursoController(CursoService cursoService){
        this.cursoService = cursoService;
    }

    @PostMapping
    public Curso crear(@RequestBody CursoDTO dto ){
        return cursoService.guardarDesdeDTO(dto);
    }

    @GetMapping
    public List<Curso> listar( ){
        return cursoService.listarTodos();
    }
    @GetMapping("/{id}")
    public Curso buscarPorId (@PathVariable Long id ){
        return cursoService.buscarPorId(id);
    }
    @PutMapping("/{id}")
    public Curso actualizar (@PathVariable Long id ,@RequestBody Curso curso ){
        return cursoService.actualizar(id ,curso);
    }
    @DeleteMapping("/{id}")
    public void eliminar (@PathVariable Long id ){
        cursoService.eliminar(id);
    }
}
