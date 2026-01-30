package com.elias.editorial.controller;

import com.elias.editorial.model.Asignatura;
import com.elias.editorial.dto.AsignaturaDTO;
import com.elias.editorial.repository.AsignaturaRepository;
import com.elias.editorial.service.AsignaturaService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/asignaturas")
public class AsignaturaController {

    private final AsignaturaService asignaturaService;

    public AsignaturaController(AsignaturaService asignaturaService){
        this.asignaturaService = asignaturaService;
    }

    @PostMapping
    public Asignatura crear(@RequestBody AsignaturaDTO dto ){
        return asignaturaService.guardarDesdeDTO(dto);
    }

    @GetMapping
    public List<Asignatura> listar( ){
        return asignaturaService.listarTodos();
    }
    @GetMapping("/{id}")
    public Asignatura buscarPorId (@PathVariable Long id ){
        return asignaturaService.buscarPorId(id);
    }
    @PutMapping("/{id}")
    public Asignatura actualizar (@PathVariable Long id ,@RequestBody Asignatura asignatura ){
        return asignaturaService.actualizar(id , asignatura);
    }
    @DeleteMapping("/{id}")
    public void eliminar (@PathVariable Long id ){
        asignaturaService.eliminar(id);
    }
}
