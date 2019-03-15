<?xml version="1.0" encoding="UTF-8" ?>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

	<!-- Optional theme -->
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
		integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
		crossorigin="anonymous">

		<!-- Latest compiled and minified JavaScript -->
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
			integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
			crossorigin="anonymous"></script>
</head>
<body>
	<body>

		<!-- Navigation -->
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"> <img
					src="http://placehold.it/150x50&text=Logo" alt=""></a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="#">Notícias</a></li>
					<li><a href="produtos.html">Produtos</a></li>
					<li><a href="#">Contato</a></li>
					<li><a href="#">Tipos de Contato</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container --> </nav>

		<!-- Page Content -->
		<div class="container">

			<!-- Heading Row -->
			<div class="row">

				<div class="col-md-12">
					<h1>Produtos</h1>

					<p class="toolbar">
						<a class="create btn btn-default" href="produtos-nova.html">Novo
							Produto</a> <span class="alert"></span>
					</p>
					<table class="table table-striped" cellspacing="0" cellpadding="0">
						<thead>
							<tr>
								<th data-field="name">Nome</th>
								<th data-field="forks_count">Preço</th>
								<th class="actions" width="220">Ações</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${abacaxi}" var="produto">
								<tr>
									<td>${produto.nome}</td>
									<td>${produto.preco}</td>
									<td>${produto.id}</td>
									<td class="actions"><a class="btn btn-success btn-xs"
										href="http://localhost:8080/spring-mvc/produto/${produto.id}">Detalhes</a> <a
										class="btn btn-warning btn-xs" href="produtos-editar.html">Editar</a>
										<a class="btn btn-danger btn-xs" href="produtos-excluir.html">Excluir</a>
									</td>
								</tr>

							</c:forEach>

						</tbody>
					</table>



				</div>
				<!-- /.col-md-4 -->
			</div>
			<!-- /.row -->

			<hr>
		</div>

		<!-- Footer -->
		<footer>
		<div class="row">
			<div class="col-lg-12">
				<p>Copyright &copy; Your Website 2014</p>
			</div>
		</div>
		</footer>


		<!-- jQuery -->
		<script src="js/jquery.js"></script>

		<!-- Bootstrap Core JavaScript -->
		<script src="js/bootstrap.min.js"></script>

	</body>
</html>