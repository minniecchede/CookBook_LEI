<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<html lang="pt-pt">
<head>
<meta charset="UTF-8">

<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<link href="http://twitter.github.io/bootstrap/assets/css/bootstrap-responsive.css" rel="stylesheet" />
<link href="http://twitter.github.io/bootstrap/assets/js/google-code-prettify/prettify.css" rel="stylesheet" />
<script type="text/javascript" src="http://twitter.github.io/bootstrap/assets/js/google-code-prettify/prettify.js"></script>
<script type="text/javascript" src="/static/js/bootstrap-modalmanager.js"></script>
<script type="text/javascript" src="/static/js/bootstrap-modal.js"></script>

<script type="text/javascript">

  $(function(){

    $.fn.modalmanager.defaults.resize = true;

    $('[data-source]').each(function(){
      var $this = $(this),
        $source = $($this.data('source'));

      var text = [];
      $source.each(function(){
        var $s = $(this);
        if ($s.attr('type') == 'text/javascript'){
          text.push($s.html().replace(/(\n)*/, ''));
        } else {
          text.push($s.clone().wrap('<div>').parent().html());
        }
      });
      
      $this.text(text.join('\n\n').replace(/\t/g, '    '));
    });

    prettyPrint();
  });
</script>

<link rel="stylesheet" href="/static/css/bootstrap-responsive.min.css">
<link rel="stylesheet" href="/static/css/bootstrap.min.css">
<link rel="stylesheet" href="/static/css/bootstrap.css">
<link rel="stylesheet" href="/static/css/cookbook.css">
<style type="text/css" title="currentStyle">
			@import "/static/css/demo_page.css";
			@import "/static/css/jquery.dataTables.css";
</style>

<script type="text/javascript" src="/static/js/bootstrap.js"></script>
<script type="text/javascript" src="/static/js/bootstrap.min.js"></script>
<script type="text/javascript" language="javascript" src="/static/js/jquery.js"></script>
<script type="text/javascript" language="javascript" src="/static/js/jquery.dataTables.js"></script>
<script type="text/javascript" charset="utf-8">
			$(document).ready(function() {
				$('#example').dataTable();
			} );
</script>

<script type='text/javascript' src='https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.13/jquery-ui.min.js'></script>
<link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.13/themes/start/jquery-ui.css" />


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
        </ul>
      </div>
	</div>
	<section id="page">