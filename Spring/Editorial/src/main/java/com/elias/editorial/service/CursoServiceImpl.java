package com.elias.editorial.service;

import com.elias.editorial.model.Curso;
import com.elias.editorial.dto.CursoDTO;
import com.elias.editorial.repository.CursoRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CursoServiceImpl  implements CursoService {

    private final CursoRepository cursoRepository;

    public CursoServiceImpl (CursoRepository cursoRepository ){
        this.cursoRepository= cursoRepository;
    }

    @Override
    public Curso guardarDesdeDTO (CursoDTO dto){
        Curso c = new Curso();
        c.setNomCurso(dto.getNomCurso());
        c.setId(dto.getCodCurso());
        return cursoRepository.save(c);
    }

    @Override
    public List<Curso> listarTodos (){
        return cursoRepository.findAll();
    }

    @Override
    public Curso buscarPorId (Long id ){
       return cursoRepository.findById(id).orElse(null);
    }


    @Override
    public Curso actualizar (Long id , Curso curso ) {
        Curso existente = buscarPorId(id);
        if (existente == null) return null;
        existente.setNomCurso(curso.getNomCurso());
        return cursoRepository.save(existente);
    }

    @Override
    public void eliminar (Long id ){
        cursoRepository.deleteById(id);
    }

}
