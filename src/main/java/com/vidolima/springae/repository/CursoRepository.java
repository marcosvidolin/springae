package com.vidolima.springae.repository;

import java.util.List;

import com.vidolima.springae.domain.Curso;

public interface CursoRepository {

	void save(Curso curso);

	void delete(Curso curso);

	Curso findById(Long id);

	List<Curso> findAll();
}
