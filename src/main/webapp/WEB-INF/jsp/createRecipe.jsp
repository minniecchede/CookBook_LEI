<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %>


<div class="container">
<form method="POST" action="/recipes">
  <fieldset>
    <h2>Criar Receita</h2>
    <hr>
    <input type="text" name="titulo" placeholder="Titulo">
    <textarea type="text" name="problema" placeholder="Problema"></textarea>
    <textarea type="text" name="solucao" placeholder="Solução"></textarea></br>

    <button type="submit" class="btn btn-success">Inserir Receita</button>
    <a href="/" class="btn btn-danger">Voltar</a>
  </fieldset>
</form>
</div>
<%@ include file="footer.jsp" %>
