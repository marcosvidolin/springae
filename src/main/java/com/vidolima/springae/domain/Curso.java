package com.vidolima.springae.domain;

import java.util.Date;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Unindex;

@Entity
public class Curso implements java.io.Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	private Long codigo;
	private String nome;
	private String professor;
	@Unindex
	private Integer minimoAlunosPorTurma;
	@Unindex
	private Integer maximoAlunosPorTurma;
	@Unindex
	private String descricao;
	private Date inicio;
	private Date conclusao;
	private Boolean ativo;
	private Boolean possuiVaga;
	private Float valor = 9900.12f;
	private Long test = 2147483647l;

	public Long getCodigo() {
		return codigo;
	}

	public void setCodigo(Long codigo) {
		this.codigo = codigo;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getProfessor() {
		return professor;
	}

	public void setProfessor(String professor) {
		this.professor = professor;
	}

	public Integer getMinimoAlunosPorTurma() {
		return minimoAlunosPorTurma;
	}

	public void setMinimoAlunosPorTurma(Integer minimoAlunosPorTurma) {
		this.minimoAlunosPorTurma = minimoAlunosPorTurma;
	}

	public Integer getMaximoAlunosPorTurma() {
		return maximoAlunosPorTurma;
	}

	public void setMaximoAlunosPorTurma(Integer maximoAlunosPorTurma) {
		this.maximoAlunosPorTurma = maximoAlunosPorTurma;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public Date getInicio() {
		return inicio;
	}

	public void setInicio(Date inicio) {
		this.inicio = inicio;
	}

	public Date getConclusao() {
		return conclusao;
	}

	public void setConclusao(Date conclusao) {
		this.conclusao = conclusao;
	}

	public Boolean getAtivo() {
		return ativo;
	}

	public void setAtivo(Boolean ativo) {
		this.ativo = ativo;
	}

	public Boolean getPossuiVaga() {
		return possuiVaga;
	}

	public void setPossuiVaga(Boolean possuiVaga) {
		this.possuiVaga = possuiVaga;
	}

	public Float getValor() {
		return valor;
	}

	public void setValor(Float valor) {
		this.valor = valor;
	}

	public Long getTest() {
		return test;
	}

	public void setTest(Long test) {
		this.test = test;
	}

}