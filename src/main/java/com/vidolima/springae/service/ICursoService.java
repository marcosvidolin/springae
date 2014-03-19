package com.vidolima.springae.service;

import java.util.List;

import com.vidolima.springae.domain.Curso;

public interface ICursoService {

	void saveCurso(Curso curso);

	void deleteCurso(Curso curso);

	Curso findCursoById(Long id);

	List<Curso> findAllCurso();

}