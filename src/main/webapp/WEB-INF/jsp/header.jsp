<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<html lang="pt-pt">
<head>
<meta charset="UTF-8">

<!--<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
-->
<link rel="stylesheet" href="/static/css/bootstrap-responsive.min.css">
<link rel="stylesheet" href="/static/css/bootstrap.min.css">
<link rel="stylesheet" href="/static/css/bootstrap.css">
<script type="text/javascript" src="/static/css/bootstrap.js"></script>
<script type="text/javascript" src="/static/css/bootstrap.min.js"></script>
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
	padding:19px 19px 19px;
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

.btn_create{
	margin-top:10px;

}	

.form-search{
	margin-left:540px;
	margin-top:-41px;
}

.create_btn{
	margin-left:410px;
}

#footer{
	background-color:#000;
	width:100%;
	height:49px;
	margin-top:140px;
	border-top:10px solid #4db3d1;
	}

#footer p{
	color:#fff;
	margin-left:560px;
	margin-top:15px;
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