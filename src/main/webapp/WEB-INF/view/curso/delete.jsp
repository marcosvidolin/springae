<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<form:form action="/curso" method="DELETE" modelAttribute="curso">
  <div>
    <label for="nome">Nome:</label>
    <input type="text" style="width:250px" value="${curso.nome}" size="45" readonly="readonly" />
  </div>
  <div>
    <label for="login">Descri&ccedil;&atilde;o:</label>
    <input type="text" style="width:250px" value="${curso.descricao}" size="45" readonly="readonly" />
  </div>
  <div>
    <label for="nome">Professor</label>
    <input type="text" style="width:250px" value="${curso.professor}" size="45" readonly="readonly" />
  </div>
  <div>
    <label for="email">Min Alunos:</label>
    <input type="text" style="width:250px" value="${curso.minimoAlunosPorTurma}" size="20" readonly="readonly" />
  </div>
  <div>
    <label for="email">Max Alunos:</label>
    <input type="text" style="width:250px" value="${curso.maximoAlunosPorTurma}" size="20" readonly="readonly" />
  </div>
  <div>
    <label for="email">Inicio:</label>
    <input type="text" style="width:250px" value="${curso.inicio}" size="20" readonly="readonly" />
  </div>
  <div>
    <label for="email">Conclus&atilde;o:</label>
    <input type="text" style="width:250px" value="${curso.conclusao}" size="20" readonly="readonly" />
  </div>
  <div>
    <label for="email">Ativo?:</label>
    <input type="text" style="width:250px" value='${curso.ativo ? "Sim" : "N&atilde;o"}' size="20" readonly="readonly" />
  </div>
  <br/>
  <br/>
  <div class="submit">
    <a href="<c:url value="/curso" />" id="voltar" class="btn btn-default">Voltar</a>
	<input id="Excluir" type="submit" value="Excluir" class="btn btn-primary" />
  </div>
  <form:hidden path="codigo"/>
</form:form>