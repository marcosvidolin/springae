<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="span3" id="sidebar">
    <ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
        <li class="nav-header">
            <a href="#">Administra&ccedil;&atilde;o</a>
        </li>
        <li class="menuItem">
            <a href="<c:url value="/" />">Dashboard</a>
        </li>
        <li class="nav-header">
            <a href="#"><i ></i>Cursos</a>
        </li>
        <li class="menuItem">
            <a href="<c:url value="/curso/create" />">Cadastrar</a>
        </li>
        <li class="menuItem">
            <a href="<c:url value="/curso" />">Listar</a>
        </li>
    </ul>
</div>