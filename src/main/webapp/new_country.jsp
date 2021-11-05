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
				<div class="card-header">Valstybių sąrašas</div>
				<div class="card-body">
					<form action="" method="post">
						<div class="mb-3">
							<label class="form-label">Valstybės kodas:</label>
							<input type="text" class="form-control" name="code">
						</div>
						<div class="mb-3">
							<label class="form-label">Pavadinimą:</label>
							<input type="text" class="form-control" name="name">
						</div>
						<div class="mb-3">
							<label class="form-label">Regioną:</label>
							<input type="text" class="form-control" name="region">
						</div>
						<div class="mb-3">
							<label class="form-label">Populiacijos dydį:</label>
							<input type="number" class="form-control" name="population">
						</div>
						<div>
						<button type="submit" class="btn btn-success">Pridėti naują valstybę</button>
						<a href="/Pasaulis/" class="btn btn-danger float-end">Atšaukti pridėjimą</a>
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