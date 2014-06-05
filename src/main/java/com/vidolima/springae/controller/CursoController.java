package com.vidolima.springae.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.vidolima.springae.domain.Curso;
import com.vidolima.springae.service.ICursoService;

@Controller
@RequestMapping(value = "/curso")
public class CursoController {

	@Autowired
	private ICursoService service;

	@RequestMapping(method = RequestMethod.GET)
	public String list(ModelMap modelMap) {
		modelMap.addAttribute("cursos", service.findAllCurso());
		return "/curso/list";
	}

	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public String view(@PathVariable Long id, ModelMap modelMap) {
		modelMap.addAttribute("curso", service.findCursoById(id));
		return "/curso/view";
	}

	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public String createForm(ModelMap modelMap) {
		modelMap.addAttribute("curso", new Curso());
		return "/curso/create";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String create(@Valid Curso curso, BindingResult result) {
		if (result.hasErrors())
			return "/curso/create";

		service.saveCurso(curso);
		return "redirect:/curso";
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public String updateForm(@PathVariable("id") Long id, ModelMap modelMap) {
		modelMap.addAttribute("curso", service.findCursoById(id));
		return "/curso/update";
	}

	@RequestMapping(method = RequestMethod.PUT)
	public String update(@Valid Curso curso, BindingResult result) {
		if (result.hasErrors())
			return "/curso/update";
		service.saveCurso(curso);
		return "redirect:/curso";
	}

	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public String deleteForm(@PathVariable("id") Long id, ModelMap modelMap) {
		modelMap.addAttribute("curso", service.findCursoById(id));
		return "/curso/delete";
	}

	@RequestMapping(method = RequestMethod.DELETE)
	public String delete(Curso curso) {
		service.deleteCurso(service.findCursoById(curso.getCodigo()));
		return "redirect:/curso";
	}

}