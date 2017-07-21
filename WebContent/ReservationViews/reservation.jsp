<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" >
<title>Gestions des Reservations</title>
</head>
<body>
		<%@include file="../menu.jsp" %>
		
		
		<div class="container-fluid">
		
		<br>
		<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<div class="panel panel-primary">
					<div class="panel-heading">Liste Des Reservation</div>
					<div class="panel-body">
						<form class="form-inline" action="vol" method="get">
							<div class="form-group">
								<label>ID :</label>
								<input type="text" name="motCle" class="form-control" value="${lr.motCle}"></input>
								<input type="submit" name="action" class="btn btn-primary" value="rechercher"></input>
							</div>
						</form><br>
						<table class="table table-striped table-responsive table-hover">
						<tbody class="table-responsive">
						<tr>
							<th>Id</th>
								<th>Date et heure</th>
								<th>Montant</th>
								<th>Type Payement</th>
								<th>Code Vol</th>
								<th>Ville Depart</th>
								<th>Ville Arrivee</th>
								<th>voir</th>
							<th>Editer</th>
							<th>Supprimer</th>
						</tr>
						<c:forEach items="${lr.reservations }" var="r">
						<tr>
							<td>${r.id }</td>
              <td>${r.dateReservation }</td>
              <td>${r.montant }</td>
              <td>${r.typePaye }</td>
              <td>${r.vol.codeVol}</td>
              <td>${r.vol.villeDepart}</td>
              <td>${r.vol.villeArrivee}</td>
              <td><a href="reservation?action=voir&id=${r.id}" class="btn btn-primary">Voir</a></td>
							<td><a href="reservation?action=modif&id=${r.id}" class="btn btn-success">Editer</a></td>
							<td><a href="reservation?action=supp&id=${r.id}" onclick="return confirm('etes vous sur de vouloir supprimer cette reservation')"  class="btn btn-danger">Supprimer</a></td>
						</tr>
						</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>

	</div>	
</body>
</html>