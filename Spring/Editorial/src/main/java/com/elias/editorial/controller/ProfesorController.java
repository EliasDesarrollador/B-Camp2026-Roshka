package com.elias.editorial.controller;

import com.elias.editorial.dto.ProfesorDTO;
import com.elias.editorial.model.Profesor;
import com.elias.editorial.service.ProfesorService;
import com.elias.editorial.service.ProfesorServiceImpl;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/profesores")
public class ProfesorController {

    private final ProfesorService profesorService;

    public ProfesorController(ProfesorService profesorService){
        this.profesorService = profesorService;
    }

    // CREAR  desde DTO (POST /api/profesores)
    @PostMapping
    public Profesor crear (@RequestBody ProfesorDTO dto ){
        return  profesorService.guardarDesdeDTO(dto);
    }

    // LISTAR TODOS  (GET /api/profesores)
    @GetMapping
    public List<Profesor> listar (){
        return profesorService.listarTodos();
    }

    // BUSCAR POR ID (GET /api/profesores/{id})
    public Profesor buscarPorId (@PathVariable Long id) {
        return profesorService.buscarPorId(id);

    }
}
