<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<html lang="pt-pt">
<head>
<meta charset="UTF-8">

<!--<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
-->
<link rel="stylesheet" href="https://dl-web.dropbox.com/get/TrabalhoES/bootstrap-responsive.min.css?w=AACjL6CIl1BfmT9rbr9__2r5vpxVZ1gurFjihmmdL3a5Gw">
<link rel="stylesheet" href="https://dl-web.dropbox.com/get/TrabalhoES/bootstrap.min.css?w=AABdYEVKOiRJQbiIZ8hIgyXXLsEzq5BBcnxzqnvfcp51wQ">
<link rel="stylesheet" href="https://dl-web.dropbox.com/get/TrabalhoES/bootstrap.css?w=AAADUm1O4KUmOzreWyYxkGIiRdlrPZZMTeDVMrEniCoZWQ">
<script src="https://dl-web.dropbox.com/get/TrabalhoES/bootstrap.js?w=AADeN9xqVuPT8gvSbw25TsG_ABZMvaRkTMsXZ117ALvvwQ"></script>
<script src="https://dl-web.dropbox.com/get/TrabalhoES/bootstrap.min.js?w=AAA8h95vX_nZjREnyICZW_Mi7wjpP_U0fcSTsmoTZjU-ug"></script>
<style>
body{
	font-family:Verdana, Geneva, sans-serif;
	background-color:#F4F4F4;
	}
	
#page{
	width:984px;
	height:auto;
	margin-right:auto;
	margin-left:auto;
	margin-top:100px;
	}	

.container{
	background-color:#fff;
	border:1px solid #e5e5e5;
	-webkit-border-radius:5px;
	border-radius:5px;
	-webkit-box-shadow:0 1px 2px rgba(0,0,0,.05);
	box-shadow:0 1px 2px rgba(0,0,0,.05);
	max-width:300px;
	padding:19px 29px 29px;
	margin:0 auto 20px;
	}

.container_list{
	background-color:#fff;
	border:1px solid #e5e5e5;
	-webkit-border-radius:5px;
	border-radius:5px;
	-webkit-box-shadow:0 1px 2px rgba(0,0,0,.05);
	box-shadow:0 1px 2px rgba(0,0,0,.05);
	max-width:800px;
	padding:19px 29px 29px;
	margin:0 auto 20px;
	}	

form{
	margin: 0 0 20px;
	}	
.navbar-inner .brand{
	margin-left:50px;
	
	}	
	
</style>

<title>CookBook Manager</title>
</head>
<body>
	<div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <a class="brand" href="/">CookBook Manager</a>
        <ul class="nav">
          <li class="active"><a href="/">Home</a></li>
          <li><a href="/recipes/create">Criar Receitas</a></li>
          <li><a href="/recipes">Listar Receitas</a></li>
          <li><a href="#">Procurar Receitas</a></li>
        </ul>
      </div>
	</div>
	<section id="page">