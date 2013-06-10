<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %>



<div class="container">
<form method="POST" action="/edit/${recipe.oid}">
  <fieldset>
    <h1>${recipe.titleVersion}</h1>
	<hr>
    <textarea style="overflow:hidden;" type="text" name="problemVersion" placeholder="Problema" required>${recipe.problemVersion}</textarea>
    <textarea style="overflow:hidden;" type="text" name="solutionVersion" placeholder="Solução" required>${recipe.solutionVersion}</textarea></br>
    <input type="text" name="authorVersion" placeholder="Autor" value="${recipe.authorVersion}" required>
    <input name="tagVersion" type="text" placeholder="Tags" value="${recipe.tagsAsString}" required>

    <div class="btn_create">
    <button type="submit" class="btn btn-success">Update Receita</button>
    <a href="/" class="btn btn-danger">Voltar</a>
    </div>
  </fieldset>
</form>
</div>
<%@ include file="footer.jsp" %>
