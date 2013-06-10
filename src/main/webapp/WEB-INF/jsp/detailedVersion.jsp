<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Recipes ${recipe.oid}</title>
</head>
<%@ include file="header.jsp" %>
<div class="container_list">
<h1>${version.titleVersion}</h1>
<hr>
<b>Problema:</b> <p>${version.problemVersion}</p>
<b>Solução:</b> <p>${version.solutionVersion}</p>
<b>Autor:</b> <p>${version.authorVersion}</p>
<b>Data:</b> <p>${version.creationTimestampVersion}</p>
<b>Tags:</b> <p>
< c:forEach items="${version.tagSet}" var="tag" >
${tag.tag};
</c:forEach>
</p>
<div class="pagination pagination-centered">
  <ul>
  <li><a href="#">«</a></li>
  <c:set var="totalVersions" value="${versionCount}"/>
   <c:forEach items="${versionList}" var="version" varStatus="versionCount">
    <li><a href="/versions/${version.oid}">${versionCount.count}</a></li>
    </c:forEach>
    <li><a href="#">»</a></li>
       
  </ul>
</div>
<a href="/recipes" class="btn btn-success">Voltar Listar</a>
</div>
<%@ include file="footer.jsp" %>