<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %>
<div class="container_list">
	<h2>Listar Receitas</h2>
    <hr>
	<table class="table table-striped">
		<thead>
			<tr>
				<th>Id</th>
				<th>Titulo</th>
				<th>Problema</th>
				<th>Solução</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="recipe" items='${recipes}'>
			<tr>
			<td>${recipe.id}</td>
			<td><a href="/recipes/${recipe.id}"> ${recipe.titulo}</a></br></td>
			<td>${recipe.problema}</td>
			<td>${recipe.solucao}</td>
			</tr>
	 	</c:forEach>
		</tbody>
	</table>
	<a href="/" class="btn btn-success">Voltar</a>
    </div>

<%@ include file="footer.jsp" %>