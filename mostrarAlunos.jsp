<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="br.edu.exemplo.model.Aluno"%>

<!DOCTYPE html>

<html>

	<head charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
	
		<title>Lista Alunos</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	</head>

	<style>
 
 
		html, body {
			height: 100%;
			background-color:rgb(255, 255, 255);
	}
	
		#tudo {
			position: relative;
			min-height: 100%;
	
	}

		* html #tudo {
			height: 100%; /* hack para IE6 que trata height como min-height */
			
	}
	
		#topo {
			text-align: center;
  			top: 0;
   			width: 100%;
   			z-index: 999px;
   			box-shadow: 0px 0px 10px 0px rgb(0, 0, 0);
		
	}
	
		h4, h6 {
			color: rgb(221, 192, 77);
			
	}
		h1 {
			text-align: center;
			color: rgb(221, 192, 77);
	
	}
	
		#logo {
			border-style: solid;
  			border-width: 2px; 
  			border-radius: 5px;
  			border-color:rgb(0, 0, 0);
			padding: 10px; 
			text-align: justify;
			box-shadow: 0px 0px 10px 0px rgb(221, 192, 77);
  			transition: transform 1s;
  			transform: translateX(0) scale(0.5);
			
		}
		
		#logo:hover, 
		#logo:focus {
			transform: translateX(10px) scale(1.2);
		
		}
		#conteudo {
			border-style: solid;
  			border-width: 2px; 
  			border-radius: 5px;
  			border-color:rgb(0, 0, 0);
			padding: 10px; 
			text-align: justify;
			box-shadow: 0px 0px 10px 0px rgb(221, 192, 77)
			
	}
	
		#rodape {
			text-align: center;
			bottom: 0;
			left: 0;
			width: 100%;
			box-shadow: 0px 0px 10px 0px rgb(0, 0, 0);
	
	}
	
 /* Links não visitados */
  		.links:link {
    		transition: all 0.3s ease; /*Aplicamos um efeito de transição*/
    		text-decoration: none; /*Removemos o sublinhado*/
    		font-size: 1.3em; /*Alteramos o tamanho da fonte*/
    		font-family: verdana; /*Mudamos a fonte padrão para verdana*/
    		padding:10px; /*Adicionamos um espaçamento de 10px em TOP, BOTTOM, RIGHT e LEFT*/
    		color: rgb(221, 192, 77); /*Mudamos a cor para Azul*/
    
  	}
 
  /* Quando já clicamos no link anteriormente */
  		.links:visited {
   			 color: rgb(221, 192, 77);
    
  }
 
  /* Quando passamos o mouse sobre o link */
  		.links:hover {
   			color: rgb(221, 192, 77);
   			border-radius: 5px;
    		box-shadow: 0px 0px 10px 0px rgb(221, 192, 77);
    
  }
 
  /* Quando clicamos no link */
  		.links:active {
    		color: rgb(221, 192, 77);
    		
  }
</style>

<body>

<div id="tudo">

	<div id ="topo" class="container-xxl p-5 my-5 bg-black text-white">
		<img src="images/Logo.png" alt="Logo site">
			
				<br>
				<br>
 		
 		<a href="index.html" class="links">Página Principal</a>
 		<a href="html/incluir.html" class="links">Incluir</a>
 		<a href="html/consultar.html" class="links">Consultar</a>
 		
 		
	</div>
	
	<div id="topo" class="container p-5 my-5 border">
	
	<h1>Lista de Alunos</h1>
	
	<table id="conteudo" class="table table-hover">
	
		<tr>
			<th>ID - Atualizar</th>
			<th>Nome</th>
			<th>Endereço</th>
			<th>E-mail</th>
			<th>Nascimento</th>
			<th>Periodo</th>
			<th colspan="2">Status</th>
		</tr>
		
		<%
		SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");
		List<Aluno> lista = new ArrayList<Aluno>();
		lista = (ArrayList) request.getAttribute("alunosList");
		for (Aluno a : lista) {
		%>
		
		<tr>
			<td><%=a.getRa()%></td>
			<td><%=a.getNome()%></td>
			<td><%=a.getEndereco()%></td>
			<td><%=a.getEmail()%></td>
			<td><%=data.format(a.getDataNascimento())%></td>
			<td><%=a.getPeriodo()%></td>
			<td><a href="../SistemaAcademico-web/ServletAluno?cmd=atu&txtRa=<%=a.getRa()%>"><img id="logo" src="images/editar.png" alt="Botão Editar"></a></td>
			<td><a href="../SistemaAcademico-web/ServletAluno?cmd=exc&txtRa=<%=a.getRa()%>"><img id="logo" src="images/excluir.png" alt="Botão Excluir"></a></td>
		</tr>
		<% } %>
	</table>
	</div>
</div>
	<div id="rodape" class="container-xxl p-5 my-5 bg-black text-white">
			
		<h4>Copyright © 2023</h4>
		<h6>Site desenvolvido por Lucas Barbosa Gonzalez.</h6>
		
	</div>
</body>
</html>

