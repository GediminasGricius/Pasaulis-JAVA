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
					<div class="mb-3 mt-3">
						<a href="/Pasaulis/?action=insert" class="btn btn-success">Pridėti naują valstybę</a>
					</div>
					<table class="table">
						<thead>
							<tr>
								<th>ID</th>
								<th>Pavadinimas</th>
								<th>Kodas</th>
								<th>Veiksmai</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="country" items="${countries}">
								<tr>
									<td>${country.id }</td>
									<td>${country.name }</td>
									<td>${country.code }</td>
									<td>
										<a href="/Pasaulis/?action=show&id=${country.id }" class="btn btn-info">Redaguoti</a>
										<a href="/Pasaulis/?action=delete&id=${country.id }" class="btn btn-danger">Ištrinti</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>