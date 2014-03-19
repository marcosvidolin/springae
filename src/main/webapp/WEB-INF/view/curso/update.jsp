<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<form:form action="/curso" method="PUT" modelAttribute="curso">
  <div>
    <label for="nome">Nome:</label>
    <form:input cssStyle="width:250px" maxlength="30" path="nome" size="45" />
  </div>
  <div>
    <label for="professor">Professor:</label>
    <form:input cssStyle="width:250px" path="professor" size="45" />
  </div>
  <div>
    <label for="minimoAlunosPorTurma">Minimo alunos por turma:</label>
    <form:input cssStyle="width:250px" path="minimoAlunosPorTurma" size="30" />
  </div>
  <div>
    <label for="maximoAlunosPorTurma">Maximo alunos por turma:</label>
    <form:input cssStyle="width:250px" path="maximoAlunosPorTurma" size="30" />
  </div>
  <div>
    <label for="descricao">Descricao:</label>
    <form:input cssStyle="width:250px" path="descricao" size="30" />
  </div>
  <div>
    <label for="inicio">Inicio:</label>
    <form:input cssStyle="width:250px" path="inicio" size="30" />
  </div>
  <div>
    <label for="conclusao">Conclusao:</label>
    <form:input cssStyle="width:250px" path="conclusao" size="30" disabled="disabled"/>
  </div>
  <div>
    <label for="ativo">Ativo:</label>
    <form:checkbox path="ativo" />
  </div>
  <div>
    <label for="possuiVaga">Possui vaga:</label>
    <form:checkbox path="possuiVaga" />
  </div>
  <div class="submit">
    <a href="<c:url value="/curso" />" id="voltar" class="btn btn-default">Voltar</a>
    <input id="salvar" type="submit" value="Salvar" class="btn btn-primary" />
  </div>
  <form:hidden path="codigo"/>
</form:form>