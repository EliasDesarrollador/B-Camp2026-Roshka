package com.elias.editorial.dto;

public class CursoDTO {

    private Long codCurso;
    private String nomCurso;
    private Long aula;

    // GETTERS Y SETTERS
    public Long getCodCurso(){
        return codCurso;
    }
    public void setCodCurso(Long codCurso){
        this.codCurso = codCurso;
    }
    public String getNomCurso(){
        return nomCurso;
    }
    public void setNomCurso(String nomCurso){
        this.nomCurso = nomCurso;
    }

    public Long getAula(){
        return aula;
    }

    public void setAula(Long id ){
        this.aula = aula;
    }
}
