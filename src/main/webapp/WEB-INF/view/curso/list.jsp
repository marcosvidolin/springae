<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- block -->
<div class="block">
  <div class="block-content collapse in">
    <table class="table table-striped">
      <thead>
        <tr>
          <th>#</th>
          <th>Nome</th>
          <th>Professor</th>
          <th>Inicio</th>
          <th>Conclus&atilde;o</th>
          <th>Ativo?</th>
          <th>A&ccedil;&otilde;es</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach items="${cursos}" var="curso">
          <fmt:formatDate value="${curso.inicio}" var="inicio" type="date" pattern="dd/MM/yyyy" />
          <fmt:formatDate value="${curso.conclusao}" var="conclusao" type="date" pattern="dd/MM/yyyy" />
          <tr>
	        <td>${curso.codigo}</td>
	        <td>${curso.nome}</td>
	        <td>${curso.professor}</td>
	        <td>${inicio}</td>
	        <td>${conclusao}</td>
		    <td>${curso.ativo ? "Sim" : "N&atilde;o"}</td>
            <td>
              <div class="btn-group">
                <a class="btn" href="/curso/${curso.codigo}"><i class="icon-eye-open"></i></a>
                <a class="btn" href="/curso/update/${curso.codigo}"><i class="icon-pencil"></i></a>
                <a class="btn" href="/curso/delete/${curso.codigo}"><i class="icon-remove"></i></a>
              </div>
            </td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
  </div>
</div>
<!-- /block -->