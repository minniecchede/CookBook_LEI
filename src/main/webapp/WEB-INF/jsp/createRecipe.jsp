<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %>


<div class="container">
<form method="POST" action="/recipes">
  <fieldset>
    <h2>Criar Receita</h2>
    <hr>
    <input type="text" name="title" placeholder="Titulo" required>
    <textarea style="overflow:hidden;" type="text" name="problem" placeholder="Problema" required></textarea>
    <textarea style="overflow:hidden;" type="text" name="solution" placeholder="Solução" required></textarea></br>
    <input type="text" name="author" placeholder="Autor" required>
    <input name="tag" type="text" placeholder="Tags" required>
    
    <div class="btn_create">
    <button type="submit" class="btn btn-success">Inserir Receita</button>
    <a href="/" class="btn btn-danger">Voltar</a>
    </div>
  </fieldset>
</form>
</div>
<%@ include file="footer.jsp" %>
