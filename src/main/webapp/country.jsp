<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="card mt-3">
				<div class="card-header">Valstybės redagavimas</div>
				<div class="card-body">
					<form action="/Pasaulis/?action=update" method="post">
						<input type="hidden" name="id" value="${country.id}">
						<div class="mb-3">
							<label class="form-label">Valstybės kodas:</label>
							<input type="text" class="form-control" name="code" value="${country.code }">
						</div>
						<div class="mb-3">
							<label class="form-label">Pavadinimą:</label>
							<input type="text" class="form-control" name="name" value="${country.name }">
						</div>
						<div class="mb-3">
							<label class="form-label">Regioną:</label>
							<input type="text" class="form-control" name="region" value="${country.region }">
						</div>
						<div class="mb-3">
							<label class="form-label">Populiacijos dydį:</label>
							<input type="number" class="form-control" name="population" value="${country.population }">
						</div>
						<div>
						<button type="submit" class="btn btn-success">Atnaujinti valstybę</button>
						<a href="/Pasaulis/" class="btn btn-danger float-end">Gryžti į sąrašą</a>
						</div>
						
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>