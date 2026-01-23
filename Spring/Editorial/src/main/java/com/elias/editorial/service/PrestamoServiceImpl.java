package com.elias.editorial.service;

import com.elias.editorial.model.Prestamo;
import com.elias.editorial.repository.PrestamoRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
 public class PrestamoServiceImpl  implements  PrestamoService {

    private final PrestamoRepository prestamoRepository;

    public PrestamoServiceImpl(PrestamoRepository prestamoRepository){
        this.prestamoRepository =prestamoRepository;
    }

    @Override
    public Prestamo guardar(Prestamo prestamo ) {
        return prestamoRepository.save(prestamo);
    }

    @Override
    public List<Prestamo> listarTodos() {
        return  prestamoRepository.findAll();
    }

    @Override
    public Prestamo actualizar(Long id, Prestamo prestamo){
        Prestamo existente = buscarPorId(id);

        if (existente != null){
            existente.setFechaPrestamo(prestamo.getFechaPrestamo());
            existente.setLibro(prestamo.getLibro());
            existente.setProfesor(prestamo.getProfesor());
            existente.setCurso(prestamo.getCurso());
            existente.setAsignatura(prestamo.getAsignatura());

            return prestamoRepository.save(existente);
        }
        return null;
    }

    @Override
    public Prestamo buscarPorId(Long id){
        return prestamoRepository.findById(id).orElse(null);
    }

    @Override
    public void eliminar(Long id){
        prestamoRepository.deleteById(id);
    }
}
