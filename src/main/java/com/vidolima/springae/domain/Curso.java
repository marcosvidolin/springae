package com.vidolima.springae.domain;

import java.util.Date;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Unindex;
import com.vidolima.doco.annotation.DocumentField;
import com.vidolima.doco.annotation.DocumentId;
import com.vidolima.doco.annotation.DocumentIndex;
import com.vidolima.doco.annotation.FieldType;

@Entity
@DocumentIndex
public class Curso implements java.io.Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@DocumentId
	private Long codigo;
	@DocumentField
	private String nome;
	@DocumentField
	private String professor;
	@Unindex
	@DocumentField(type = FieldType.NUMBER)
	private Integer minimoAlunosPorTurma;
	@Unindex
	@DocumentField(type = FieldType.NUMBER)
	private Integer maximoAlunosPorTurma;
	@Unindex
	@DocumentField
	private String descricao;
	@DocumentField(type = FieldType.DATE)
	private Date inicio;
	@DocumentField(type = FieldType.DATE)
	private Date conclusao;
	private Boolean ativo;
	private Boolean possuiVaga;
	@DocumentField(type = FieldType.NUMBER)
	private Float valor = 9900.12f;
	@DocumentField(type = FieldType.NUMBER, name = "campoTestLong")
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