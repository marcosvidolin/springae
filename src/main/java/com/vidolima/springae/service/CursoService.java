package com.vidolima.springae.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vidolima.springae.domain.Curso;
import com.vidolima.springae.repository.CursoRepository;

@Service
public class CursoService implements ICursoService {

	@Autowired
	private CursoRepository repository;

	@Override
	public void saveCurso(Curso curso) {
		repository.save(curso);
	}

	@Override
	public void deleteCurso(Curso curso) {
		repository.delete(curso);
	}

	@Override
	public Curso findCursoById(Long id) {
		return repository.findById(id);
	}

	@Override
	public List<Curso> findAllCurso() {
		return repository.findAll();
	}

}