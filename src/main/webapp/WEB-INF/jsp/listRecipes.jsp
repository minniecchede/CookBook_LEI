<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="header.jsp" %>


<div class="container_list">
	<h2>Listar Receitas</h2>
    <hr>
    
	<table cellpadding="0" cellspacing="0" border="0" class="display" id="example" width="100%">
	<thead>
		<tr>
				<th>Id</th>
				<th>Title</th>
				<th>Problem</th>
				<th>Solution</th>
				<th>Author</th>
                <th>Date</th>
                <th style="display:none;">Tag</th>
                <th>Actions</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="recipe" items='${recipes}'>
			<tr>
			<td>${recipe.oid}</td>
			<td>${recipe.titleVersion}</td>
			<td>${recipe.problemVersion}</td>
			<td>${recipe.solutionVersion}</td>
			<td>${recipe.authorVersion}</td>
            <td>${recipe.creationTimestampVersion}</td>
            <td style="display:none;">
            <!-- < c:forEach items="${recipe.tagSet}" var="tag" >				
				${tag.tag};	
			</c:forEach>-->
            </td>
            <td style="text-align: center">

            <a class="btn btn-small" href="/recipes/${recipe.oid}" data-toggle="modal"><i class="icon-eye-open"></i></a>
            <a class="btn btn-small" href="/recipes/${recipe.oid}/edit"><i class="icon-pencil"></i></a>
            
			<a class="btn btn-small" href="#apagar" data-toggle="modal"><i class="icon-trash"></i></a>
			
			<div id="apagar" class="modal hide fade" tabindex="-1" data-width="760">
  				<div class="modal-body">
  					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>  
        			<h4>Deseja apagar a receita?</h4>   
  				</div>
  				<div class="modal-footer">
  					<a type="button" href="/recipes/${recipe.oid}/delete" class="btn btn-danger">Apagar</a>
    				<a type="button" data-dismiss="modal" class="btn">Fechar</a>
  				</div>
			</div>
            </td>
			
			</tr>
	 	</c:forEach>
	</tbody>
 </table>
 
	<a href="/" id="btn_voltar" class="btn btn-success">Voltar</a>
    </div>
    <div class="create_btn">
   		<a href="/recipes/create" class="btn btn-info">Criar Receita</a>
    </div>

<%@ include file="footer.jsp" %>