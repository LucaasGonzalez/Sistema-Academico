<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>

	<head>
	
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
		<title>Sistema Acadêmico</title>
		
	</head>
	
<style>
	
html, body {
		height: 100%;
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
	
#rodape {
		
		text-align: center;
		bottom: 0;
		left: 0;
		width: 100%;
		box-shadow: 0px 0px 10px 0px rgb(0, 0, 0);
	
	}
	
h4, h6 {
		color: rgb(221, 192, 77);
	}
	
#conteudo {
		
		text-align: center;
		border-style: solid;
		border-width: 2px; 
  		border-radius: 5px;
  		border-color:rgb(0, 0, 0);
		padding: 10px; 
		box-shadow: 0px 0px 10px 0px rgb(221, 192, 77);
			
			
	}
	

h1 {
		text-align: center;
		color: rgb(221, 192, 77);

	}
	
		/* Links não visitados */
#links:link {
    	transition: all 0.3s ease; /*Aplicamos um efeito de transição*/
    	text-decoration: none; /*Removemos o sublinhado*/
    	font-size: 1.3em; /*Alteramos o tamanho da fonte*/
    	font-family: verdana; /*Mudamos a fonte padrão para verdana*/
    	padding:10px; /*Adicionamos um espaçamento de 10px em TOP, BOTTOM, RIGHT e LEFT*/
    	color: rgb(221, 192, 77); /*Mudamos a cor para Amarelo*/
  }
 
  /* Quando já clicamos no link anteriormente */
#links:visited {
    	color: rgb(221, 192, 77);
  }
 
  /* Quando passamos o mouse sobre o link */
#links:hover {
    	color: rgb(221, 192, 77);
    	border-radius: 5px;
    	box-shadow: 0px 0px 10px 0px rgb(221, 192, 77);
  }
 
  /* Quando clicamos no link */
#links:active {
  		color: rgb(221, 192, 77);
  }

</style>
	
<body>

	<div id="tudo">
	
		<div id="topo" class="container-xxl p-5 my-5 bg-black text-white">
			<img src="Logo.png" alt="Logo site"> <br> <br>

			<a  href="index.html" id="links">Página Principal</a> <a
				href="incluir.html" id="links">Incluir</a> <a
				href="ServletAluno?cmd=listar" id="links">Lista de Alunos</a>

		</div>
		
		<div id="topo" class="container p-5 my-5 border">
		
			<h1>Consultar</h1>
			<jsp:useBean id="aluno" scope="session" class="br.edu.exemplo.model.Aluno" />
			<%	SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");	%>
			
		<form>
		
			<table id="conteudo" class="table table-hover">
			
				<tr>
					<td>RA:</td>
					<td><input type="text"  size="60" name="txtRa"
						value="<%=aluno.getRa()%>" readonly="readonly" /></td>
				</tr>
				
				<tr>
					<td>Nome:</td>
					<td><input type="text" size="60" name="txtNome"
						value="<%=aluno.getNome()%>"readonly="readonly"  /></td>
				</tr>
				
				<tr>
					<td>E-mail:</td>
					<td><input type="text" size="60" name="txtEmail"
						value="<%=aluno.getEmail()%>" readonly="readonly" /></td>
				</tr>
				
				<tr>
					<td>Endereço:</td>
					<td><input type="text" size="60"
						name="txtEndereco" value="<%=aluno.getEndereco()%>" readonly="readonly" /></td>
				</tr>
				
				<tr>
					<td>Nascimento (dd/mm/aaaa):</td>
					<td><input type="text" size="60" name="txtData"
						value="<%=data.format(aluno.getDataNascimento())%>"	readonly="readonly" /></td>
				</tr>

				<tr>
					<td>Período:</td>
					<td><input type="text" size="60" name="txtIdade"
						value="<%=aluno.getPeriodo()%>" readonly="readonly" /></td>
				</tr>
				
		</table>
		</form>
	</div>
	
	<div id="rodape" class="container-xxl p-5 my-5 bg-black text-white">
				
		<h4>Copyright © 2023</h4>
		<h6>Site desenvolvido por Lucas Barbosa Gonzalez.</h6>
				
	</div>
	
</div>
</body>
</html>
