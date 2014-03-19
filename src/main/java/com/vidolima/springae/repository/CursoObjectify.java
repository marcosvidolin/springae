package com.vidolima.springae.repository;

import static com.googlecode.objectify.ObjectifyService.ofy;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.vidolima.springae.domain.Curso;

@Repository
public class CursoObjectify implements CursoRepository {

	@Override
	public void save(Curso curso) {
		ofy().save().entity(curso).now();
	}

	@Override
	public void delete(Curso curso) {
		ofy().delete().entity(curso).now();
	}

	@Override
	public Curso findById(Long id) {
		return ofy().load().type(Curso.class).id(id).now();
	}

	@Override
	public List<Curso> findAll() {
		return ofy().load().type(Curso.class).list();
	}

}
