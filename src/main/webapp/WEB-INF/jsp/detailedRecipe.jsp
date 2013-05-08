<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Recipes ${recipe.id}</title>
</head>
<%@ include file="header.jsp" %>
<div class="container_list">
<h1>${recipe.titulo}</h1>
<hr>
<b>Problema:</b> <p>${recipe.problema}</p>
<b>Solução:</b> <p>${recipe.solucao}</p>
<b>Autor:</b> <p>${recipe.nome}</p>
<b>Data:</b> <p><fmt:formatDate value="${recipe.dataCriacao}" pattern="yyyy-MM-dd HH:mm:ss" /></p>

<a href="/recipes" class="btn btn-success">Voltar Listar</a>
</div>
<%@ include file="footer.jsp" %>